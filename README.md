# end-to-end reinfrocement learning line following robot

amazing project of embedded line follower robot using neural networks, trained with reinforcement learning


## line_detection_train
supervised line detector network
ultra tiny network, for line detection, works well and can run on small MCU


![](images/line_detection.gif)

network architecture : 
- input 96x96x1, grayscale cameta input
- convolution 3x3x8, stride 2, activation ReLU
- convolution 3x3x8, stride 2, activation ReLU
- convolution 3x3x16, stride 2, activation ReLU
- convolution 3x3x32, stride 2, activation ReLU
- convolution 1x1x1, stride 1, output 6x6 feature map of line detection