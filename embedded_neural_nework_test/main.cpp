#include <iostream>
#include <chrono>
#include <opencv2/opencv.hpp>


#include <LineNetwork.h>


double get_time()
{
    auto current_time = std::chrono::system_clock::now();
    auto duration_in_seconds = std::chrono::duration<double>(current_time.time_since_epoch());

    return duration_in_seconds.count();
}


cv::Mat get_prediction(cv::Mat &frame, ModelInterface &model, float threshold = 0.25)
{
    cv::Mat frame_grayscale(cv::Size(frame.rows, frame.cols), CV_8U);
    cv::cvtColor(frame, frame_grayscale, cv::COLOR_BGR2GRAY);

    cv::Mat frame_resized(cv::Size(frame.rows, frame.cols), CV_8U);
   
    cv::resize(frame_grayscale, frame_resized, cv::Size(model.input_width, model.input_height), 0, 0, cv::INTER_AREA); 

    unsigned int idx; 

    idx = 0;
    for (unsigned int y = 0; y < model.input_height; y++)
        for (unsigned int x = 0; x < model.input_width; x++)
        {
            model.input_buffer()[idx] = frame_resized.at<uint8_t>(y, x)/2;
            idx++;
        } 

    model.forward();

    cv::Mat prediction(cv::Size(model.output_height, model.output_width), CV_8U);

    idx = 0;
    for (unsigned int y = 0; y < model.output_height; y++)
        for (unsigned int x = 0; x < model.output_width; x++)
        {
            int8_t v = model.output_buffer()[idx];
            
            if (v > 127*threshold) 
                prediction.at<uint8_t>(y, x) = 255;
            else
                prediction.at<uint8_t>(y, x) = 0;

            idx++;
        }

    return prediction;
}


int main()
{
    LineNetwork model;

    auto cap = cv::VideoCapture("/Users/michal/Movies/line_path_video.mp4");
    
    double fps = 0.0;

    while (cap.isOpened())
    {
        cv::Mat frame;
        cap >> frame;
        if(frame.empty()) 
            break;

    
        char c = (char)cv::waitKey(25);
        if (c == 27)
            break;

        double time_start = get_time();
        auto prediction   = get_prediction(frame, model, 0.1);
        double time_stop  = get_time();

        cv::Mat prediction_resized(cv::Size(frame.cols, frame.rows), CV_8U);
        cv::resize(prediction, prediction_resized, cv::Size(frame.cols, frame.rows), 0, 0, cv::INTER_CUBIC);
     
        double k = 0.05;
        fps = (1.0 - k)*fps + k*1.0/(time_stop - time_start + 0.0000001);
        std::string text = "FPS = " + std::to_string( (int)round(fps));


        cv::Mat result(cv::Size(frame.cols, frame.rows), CV_8UC3, cv::Scalar(0, 0, 0));

        result = frame;
        for (unsigned int y = 0; y < (unsigned int)frame.rows; y++)
            for (unsigned int x = 0; x < (unsigned int)frame.cols; x++)
            {
                float k = 0.4;

                result.at<cv::Vec3b>(y, x)[0] = (1.0 - k)*frame.at<cv::Vec3b>(y, x)[0];
                result.at<cv::Vec3b>(y, x)[1] = (1.0 - k)*frame.at<cv::Vec3b>(y, x)[1] + k*prediction_resized.at<uint8_t>(y, x);
                result.at<cv::Vec3b>(y, x)[2] = (1.0 - k)*frame.at<cv::Vec3b>(y, x)[2];
            }

        cv::putText(result, text, cv::Point(30, 30), cv::FONT_HERSHEY_SIMPLEX ,  1, CV_RGB(255, 255, 255), 2, cv::LINE_AA);

        imshow("frame", result) ;
    }


    std::cout << "program done\n";

	return 0;
}