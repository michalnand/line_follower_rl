#include <LineNetwork.h>
#include <Linear.h>
#include <Conv2d.h>
#include <ReLU.h>


const int8_t LineNetwork_layer_0_weights[] = {
-7, 18, 0, -14, -28, -57, 0, -7, -17, 
-14, 23, 3, 27, -102, -86, -17, -39, -110, 
94, -7, -51, 127, 30, -82, 43, 97, -85, 
-58, -5, -51, -124, -101, -92, -20, -32, 2, 
64, -3, -92, 49, -77, 3, 76, -17, -92, 
-98, -30, 127, 1, 85, 65, -96, 68, 127, 
-41, -37, -42, -37, -33, -32, -37, -32, -63, 
-48, -18, 32, 53, -96, -15, -83, -33, -101, 
};

const int8_t LineNetwork_layer_0_bias[] = {
-64, 127, -13, 35, 4, -96, -71, 18, };


const int8_t LineNetwork_layer_2_weights[] = {
-20, -81, -43, -73, 0, -81, -6, -79, 
0, -27, -38, -112, -85, -68, -32, -127, 
-20, -118, -82, -49, -58, -16, -19, -87, 
6, -49, -43, -31, -47, -56, -20, -44, 
6, -85, -53, -127, -17, -94, 0, -96, 
-21, -37, -35, -74, -47, 1, -6, -74, 
0, -106, -63, -112, -71, -104, 0, -127, 
-5, -85, -105, -125, -26, -98, -1, -127, 
33, -36, -36, -127, -87, 4, -6, -107, 
0, 42, 75, -34, 14, 48, 20, 33, 
6, 120, 57, -25, 0, -127, 46, 76, 
34, 127, 73, -87, -43, -58, 58, 123, 
6, 116, 101, -39, 13, 45, 32, 124, 
3, 120, 103, -127, -6, -61, 44, 125, 
-19, 31, 68, -102, -68, -23, 43, 59, 
-2, 103, 127, -66, -18, -17, 21, 85, 
-8, 69, 127, -73, 16, -81, 51, 127, 
1, 121, 58, -122, -43, -127, 29, 76, 
33, 110, 61, -104, -37, -85, 29, 6, 
-8, 87, 25, -49, -75, -37, 52, -54, 
-6, 123, 127, -40, -9, -30, 40, -9, 
-22, 127, -14, -127, -50, -74, 43, 18, 
34, 90, 67, -26, -20, -30, 64, 49, 
32, 61, 83, -107, -35, -71, 42, 57, 
2, 78, -25, -95, -42, -36, 39, -32, 
8, 113, 43, -90, -41, -105, 41, 67, 
-34, 127, 35, -69, -13, -41, 35, 79, 
18, -85, 44, 38, 28, 8, -37, -102, 
-1, -63, 127, -41, -39, -86, 38, -109, 
0, -5, 49, -121, -14, -42, -59, -32, 
-6, -112, 61, 88, 26, -5, -14, -41, 
6, -29, 32, -122, -8, -20, -23, -22, 
34, -3, 46, -43, -43, -81, -45, -10, 
-2, -35, 40, 65, -32, 58, 31, -33, 
6, -5, 71, -125, -11, -45, 28, -97, 
1, -54, 54, -86, -12, -119, -49, -87, 
4, 23, -21, -62, -55, -79, -36, -30, 
-4, 17, 48, -41, -104, -121, -2, -3, 
6, -63, 58, -37, -127, -117, -13, -2, 
21, -53, 83, -43, -30, -116, -21, 73, 
-1, -19, -34, -26, -125, -95, 0, 31, 
7, -63, 17, -8, -53, -117, 34, 56, 
0, -54, 35, 8, -121, -109, -10, 40, 
-6, 22, -3, -5, -48, -105, 20, 84, 
-33, 37, 107, 5, -35, -108, 32, 33, 
6, -35, -31, -95, -38, 80, 22, 0, 
-34, -27, 111, -94, -12, -127, 41, -63, 
8, 94, 80, -123, -47, -76, 48, 0, 
-3, -74, 58, -102, 4, 39, 37, -30, 
24, 71, 75, -32, -33, -97, 58, 12, 
0, 94, 53, -76, -2, -122, 28, -68, 
6, 24, -7, -86, 0, 114, 35, -29, 
7, -8, 38, -27, -69, -98, 38, -53, 
-8, 127, 127, -103, -60, -114, 41, -39, 
6, -117, -19, -7, -65, -86, 1, -31, 
0, -87, 98, -102, -97, -33, -21, -111, 
21, -4, 59, -13, -72, -76, 2, -127, 
-8, -104, -60, 4, -30, -121, 33, -76, 
31, -127, 106, -98, -62, -35, 6, -45, 
-30, -26, 96, -95, -115, -30, 2, -48, 
-21, -45, -27, 1, -103, 3, -9, -36, 
-2, -71, 63, 0, -64, -90, -3, -94, 
24, -106, 88, -108, -82, -42, -8, -79, 
9, -63, -90, -103, 9, -51, -30, -87, 
20, 82, 60, -66, 0, -127, -18, 29, 
3, 101, -55, -80, 3, 21, 34, 36, 
-33, -70, -71, -52, -23, -65, 0, -112, 
-8, 22, 91, -42, -18, -55, 2, -60, 
20, 71, -35, -81, -1, 89, 1, -19, 
-33, -88, -108, -127, -21, -120, -17, -112, 
20, -37, -83, -105, 4, -127, -2, -41, 
0, -36, 34, -60, -22, -72, 6, -86, 
};

const int8_t LineNetwork_layer_2_bias[] = {
-92, -51, 42, -54, 0, -32, -70, -117, };


const int8_t LineNetwork_layer_4_weights[] = {
103, -51, -89, 77, -102, 9, -58, 110, 
56, -28, -106, 42, -65, 26, -68, 35, 
118, -25, -71, 42, -62, 44, -35, 40, 
98, -72, -58, 47, -50, 39, -54, 64, 
67, -57, -10, 11, -97, 40, -75, 127, 
37, -96, -14, 54, -62, 35, -99, 77, 
80, -75, -94, 93, -82, -16, -96, 114, 
40, -26, -78, 66, -81, -1, -67, 45, 
67, -65, -21, 18, -122, 24, -44, 62, 
-60, 74, 16, 43, 62, -13, -58, 41, 
-22, 14, -31, 51, 45, 66, -51, 56, 
-28, 72, 12, -16, 71, 98, -80, -17, 
-82, 25, -79, 86, 115, 35, 3, -11, 
1, 19, 17, 19, 89, 8, 0, 79, 
-78, 48, 74, -6, 86, 51, -63, -15, 
-30, -14, -17, 73, 98, 23, -52, -28, 
-63, 1, 21, 12, 55, 24, -1, 67, 
-42, 83, 95, 14, 121, 77, -39, 6, 
112, -39, -72, 80, -83, -78, -94, -83, 
94, -42, -52, 104, -101, -97, -90, -66, 
93, -116, -70, -123, -65, -87, -127, 30, 
105, -122, -72, 58, -42, -13, -73, 70, 
95, -63, -59, 114, -99, -22, -90, -58, 
81, -112, -61, -89, -55, -66, -127, 37, 
43, -90, -113, 126, -85, -16, -98, 70, 
112, -37, -68, 52, -97, 108, -96, -74, 
59, -58, -97, 88, -47, -99, -98, 52, 
53, -80, -52, -34, -80, -37, -88, 20, 
83, 2, -30, -40, 17, 10, -39, -7, 
-48, 18, 77, -26, 39, 102, -59, -18, 
84, -98, -81, -52, -66, -68, -30, 19, 
55, 33, 4, -35, 34, 76, -40, 14, 
-7, 71, 127, -3, 39, 76, -110, -4, 
-77, -61, -81, -29, -90, -105, -46, -20, 
-36, 36, -5, -17, 12, 19, -68, -6, 
-28, 94, 97, -15, 12, 88, -23, 0, 
-78, -111, -113, -56, -69, 59, -76, -37, 
-55, -119, -88, -28, -82, 124, -44, 83, 
-53, -70, -48, -79, -59, 40, -107, 33, 
-42, -62, -64, 4, -41, -43, -66, -50, 
-16, -38, -54, -22, -106, -79, -54, -91, 
-47, -82, -38, -19, -107, -64, -37, 27, 
-28, -59, -123, -10, -88, -7, -67, -62, 
-81, -60, -52, -21, -106, 124, -67, -61, 
-48, -40, -105, -19, -75, 76, -100, -114, 
-11, -10, -8, -32, -47, 99, 54, 63, 
-25, 48, -26, 17, -58, 37, -96, 81, 
-19, -92, -29, -2, -105, 74, -106, 94, 
-39, 20, -79, -11, -43, 73, 86, 39, 
-81, 48, -32, -32, -49, 39, -107, 124, 
-77, -11, 1, 14, -111, 99, -84, 98, 
-72, -19, -43, -42, -29, 102, 68, 40, 
-16, 43, -29, 22, -119, 116, -95, 76, 
2, -35, -23, 64, -51, 101, -53, 111, 
19, 44, 36, -12, 7, 19, -5, 10, 
-4, 36, 25, -16, 46, 5, 16, 12, 
4, 23, 31, 15, 0, 50, -37, 1, 
-4, 38, 23, -11, 41, 29, 21, 19, 
-5, -22, 14, -30, 17, 4, 19, 1, 
-2, 11, 13, 2, 15, 25, -39, -3, 
6, 8, 35, -17, 6, 16, -40, 2, 
-27, -35, 16, -1, 48, 15, -38, 9, 
3, 28, -14, 11, 9, 24, 29, 8, 
-38, -52, -36, 19, -7, -18, -4, -12, 
-35, -19, -36, 4, 3, -1, 22, -6, 
-5, 14, -13, -4, -18, 6, 8, 0, 
17, -106, -52, -18, -44, -119, -79, 2, 
-31, -118, -72, 17, -60, -111, -46, -19, 
-22, -127, -70, -5, -110, -86, -115, 1, 
24, -114, -45, 19, -64, 20, -65, -41, 
-68, -65, -75, -55, -79, 5, -98, -22, 
-42, -72, -82, -13, -59, -12, -79, -43, 
-32, -115, -69, -11, -61, -59, -50, 44, 
-37, -83, -79, -66, -119, -3, -59, 96, 
-88, -92, -58, 19, -51, -32, -61, 49, 
-59, -76, -83, -53, -99, -21, -125, 76, 
-21, -54, -110, -47, -113, 2, -53, 122, 
-85, -107, -8, 6, -116, 102, -120, 57, 
-69, -31, -27, -49, -39, -52, -46, 59, 
-67, -105, -80, 0, -79, 4, -49, 103, 
-6, -42, -19, 64, -83, 101, -57, 75, 
112, -47, -63, -17, -102, -13, 76, 53, 
52, 18, 59, 29, -119, 89, -83, 62, 
36, -110, -5, 0, -84, -87, -98, 124, 
68, -44, -75, -64, -98, 15, 22, 88, 
98, 89, 10, -41, -53, 117, -103, 98, 
73, -95, 37, 15, -107, -45, -98, 57, 
60, -26, -109, -7, -67, -64, 110, 80, 
60, 77, -14, -55, -76, 89, -55, 46, 
51, -73, 62, -62, -55, 2, -82, 86, 
75, -22, 51, -37, -7, 27, -39, 43, 
80, -36, 37, -46, -14, 35, -106, 79, 
55, -20, -7, 73, -65, -50, -37, 78, 
116, -18, 99, -64, 39, 30, -73, 88, 
126, 26, 27, -4, -19, 0, -77, 76, 
47, -25, -16, -10, -80, -38, -120, 77, 
42, 0, 62, -76, -39, 70, -84, 11, 
110, 15, 20, -29, -3, 82, -100, 48, 
102, -84, -50, -32, -38, -60, -93, 40, 
-78, -127, -127, -47, 80, -35, 104, 19, 
4, -125, -64, 106, 19, -71, 26, -38, 
-71, -119, -115, -15, -37, -89, 22, 13, 
-36, -56, -69, -91, 77, -22, 60, -36, 
16, -64, -71, 80, 70, -28, 106, -63, 
-51, -34, -93, 81, 60, -68, 89, 2, 
-53, -56, -97, -26, -15, -26, 38, -38, 
-24, -4, -74, 100, 69, -93, 49, -110, 
-94, -9, -40, 89, 41, -46, -83, -59, 
-107, -72, -64, 13, -44, 79, -80, -44, 
-127, -57, -43, -99, -69, -107, -43, -113, 
-115, -123, -79, -118, -80, 42, -66, -67, 
-42, -104, -124, 56, -114, 48, -80, -63, 
-115, -99, -38, -62, -111, -86, -51, -102, 
-50, -92, -100, -119, -42, 75, -115, -88, 
-68, -127, -113, -16, -117, 45, -41, 0, 
-112, -40, -84, -120, -80, -100, -55, -83, 
-47, -64, -87, -62, -98, 80, -97, -62, 
-57, -50, -81, 7, -86, -32, -37, 79, 
-67, -52, -57, -35, -113, -3, -37, 107, 
-35, -42, 60, 13, -51, 94, -112, 93, 
-82, -86, -100, -26, -103, -58, -66, 112, 
-82, -37, -59, -3, -96, -1, -79, 115, 
-6, -77, 15, 33, -78, 77, -106, 99, 
-86, -52, -64, 0, -56, -51, -69, 79, 
-28, -89, -40, -22, -93, -5, -55, 37, 
-42, -118, 103, -21, -71, 124, -86, 88, 
-50, -80, -57, -72, 18, -47, -19, -120, 
-119, 19, -54, -36, 43, -5, -49, -65, 
-39, 73, -6, 0, -13, 59, -44, -75, 
-71, -60, -97, -15, 6, -80, -8, -100, 
-94, -5, -62, -2, 53, -13, -43, -52, 
-51, 61, -19, -1, -3, 53, -65, -127, 
-37, -58, -39, -14, 62, -66, -11, -41, 
-65, 6, -110, 1, 70, -65, -24, -96, 
-36, 81, 19, -5, 30, 98, -72, -53, 
-20, -69, -66, -91, -48, -10, 24, 79, 
-83, -96, -107, 65, -78, -11, -84, 94, 
-11, -32, -46, 89, -104, -30, -113, 93, 
-62, -43, -90, -59, -103, -42, 103, 68, 
-2, -41, -59, 125, -77, -61, -70, 63, 
-13, -123, -44, 103, -33, -18, -99, 93, 
-42, -101, -79, -84, -111, -35, 23, 58, 
84, -76, -29, 89, -66, -39, -63, 73, 
-29, -59, -46, 65, -101, -84, -100, 58, 
};

const int8_t LineNetwork_layer_4_bias[] = {
-66, 10, -62, -16, -58, -13, -56, -83, -57, 41, -51, -69, -69, -48, -15, -77, };


const int8_t LineNetwork_layer_6_weights[] = {
-112, -8, -58, 20, -127, -73, -8, -4, -124, -71, -104, -97, -61, -108, -102, -113, 
-59, 94, -65, -25, -122, -83, 0, -7, -109, -81, -77, -81, -94, -122, -64, -127, 
-98, -62, -71, -7, -121, -59, -26, 6, -64, -59, -85, -98, -62, -75, -71, -127, 
-63, -23, -121, 0, -62, -118, -7, -93, -119, -96, -91, -110, -117, -84, -61, -66, 
-79, 74, -57, -55, -82, -120, -13, -88, -70, -71, -122, -107, -120, -113, -82, -91, 
-116, -37, -127, -2, -82, -127, -31, -62, -60, -85, -80, -127, -110, -64, -91, -99, 
-68, -18, -120, 28, -104, -76, -16, -5, -83, -58, -112, -65, -105, -119, -78, -80, 
-104, 92, -109, -33, -97, -82, 10, -7, -101, -113, -106, -60, -88, -69, -74, -100, 
-124, -88, -80, 0, -58, -87, -25, 5, -64, -113, -127, -87, -97, -87, -84, -105, 
-67, 7, -64, 10, -92, -85, -3, 7, -98, -48, -102, -7, -51, -79, -30, -1, 
-65, -3, -61, 7, -86, -76, -3, 6, -88, -65, -61, -6, 2, -118, -32, -49, 
-17, -7, -74, -6, -83, -67, 6, 0, -57, -58, -76, 9, -7, -112, 0, 10, 
-68, -6, -63, 0, -108, -96, 7, -1, -73, -67, -87, 2, 1, -95, -31, -27, 
-19, 5, -83, -6, -64, -59, -2, 1, -57, -67, -68, 6, 4, -71, -7, 14, 
7, -9, -93, 10, -70, -103, 0, 6, -64, -40, -37, 7, 25, -98, 9, 3, 
-18, -6, -79, 7, -89, -96, 2, -8, -62, -72, -57, -7, 2, -83, -4, 8, 
8, 0, -81, -5, -48, -62, 9, -14, -69, -28, 17, 0, 28, -93, -6, 2, 
-19, 4, -36, -7, -61, -99, -1, 6, -104, -19, -73, 9, -2, -93, 25, 6, 
38, 15, -93, -4, 82, -8, -32, 0, -73, -94, -15, 124, 127, -88, -26, -80, 
-6, 53, 107, 20, -89, -37, -27, 2, -57, -24, -36, -91, 105, -114, -16, -111, 
42, -65, 96, 24, -86, -66, 21, -7, -73, -57, 53, -34, 73, -55, -59, -91, 
2, 74, -44, -19, 56, 51, 1, 72, -2, 0, 9, 127, 75, -75, 0, -117, 
37, 44, 69, 44, 58, 52, -22, 68, -28, -4, 64, 127, 63, 42, -6, -56, 
-16, -26, 96, 75, 80, -35, 10, 115, -23, -44, 61, 90, 69, -92, -63, -41, 
73, 108, -107, 23, 127, 25, -4, -6, -29, -28, -79, -85, 99, -27, -64, 92, 
40, 93, 60, 91, -54, 78, 18, 6, -63, -43, 109, -89, 123, 111, -14, -35, 
52, -7, 125, 108, -58, 49, 6, 23, 87, 26, 50, 93, 70, 78, 111, 67, 
-87, -90, -120, 4, 52, -117, 28, -7, -77, -127, -124, -96, 86, -106, 87, -107, 
-118, -30, -122, -22, -53, -94, 36, 2, -91, -92, -73, -84, 117, -123, 104, -77, 
61, 50, 127, 0, -63, 72, 16, -7, -98, 89, -38, -40, 106, -46, -41, 127, 
-103, -77, -110, -69, 74, -64, 25, 65, 84, -29, -118, 110, 110, -59, 118, -100, 
-90, -52, 71, -61, 107, -37, 68, 62, -96, -110, -89, 126, 126, -100, 19, -105, 
63, 70, 64, 118, 95, 60, 55, 62, 51, 77, -57, 62, 121, 85, -12, 127, 
-123, -81, -68, -120, 120, -87, 9, 7, -70, -43, -55, -45, 82, 79, 68, -104, 
-95, -57, 88, -11, -50, -74, 38, -3, -111, -57, -100, -45, 83, -49, 20, -98, 
73, 81, 87, 117, 77, 102, 45, 5, 102, 53, -56, 122, 114, 103, 101, 87, 
-61, 30, -113, 28, -120, -84, -37, 2, -127, -75, -74, -17, 126, -69, 109, -76, 
-104, -100, -109, -6, -110, -118, -34, 7, -83, -60, -121, 105, -69, -119, 81, -92, 
-95, -22, -91, -50, -127, -127, -37, 7, -89, -77, -94, -15, -105, -114, -55, -86, 
-73, 27, -127, 54, -57, -88, -36, -2, -124, -120, -126, 72, 63, -114, 91, -83, 
-55, -111, -70, 55, -117, -127, -44, 6, -92, -97, -78, 106, -79, -68, 62, -73, 
-93, -23, -73, -60, -89, -97, -33, 63, -127, -75, -64, 92, -62, -58, -31, 115, 
-76, -20, -127, 41, -91, -116, -28, -5, -114, -127, -65, 19, 67, -77, 118, -126, 
-68, -127, -90, -7, -118, -127, -38, 6, -61, -56, -79, 64, -56, -114, 125, -74, 
-82, -38, -70, -50, -65, -83, -41, 2, -115, -67, -57, 3, 85, -127, 97, 103, 
-93, -2, -93, -6, -120, -69, 7, 7, -65, -82, -112, -64, -108, -80, -63, -63, 
-80, 0, -57, 7, -127, -62, 6, -7, -102, -117, -99, -81, -96, -95, -115, -126, 
-104, 8, -77, 6, -88, -104, 2, 6, -66, -96, -59, -61, -127, -127, -64, -103, 
-76, -14, -127, 4, -61, -96, 9, 1, -118, -127, -117, -78, -110, -71, -112, -64, 
-111, 3, -85, -9, -82, -127, -9, 7, -127, -70, -75, -64, -122, -88, -72, -127, 
-82, 1, -58, -7, -104, -66, 4, -12, -102, -127, -96, -85, -98, -105, -102, -112, 
-125, -6, -101, -4, -116, -83, 10, 2, -127, -86, -93, -56, -84, -127, -116, -99, 
-116, -7, -80, 3, -93, -106, 7, 3, -126, -96, -61, -91, -103, -95, -108, -127, 
-67, -1, -66, -1, -83, -75, 7, -7, -118, -94, -74, -58, -88, -126, -62, -119, 
5, 26, -59, 13, 111, -41, -20, 14, -58, -93, -49, 102, 117, -99, -5, -78, 
-11, -41, 82, -18, -108, -67, -31, 2, -99, -41, 9, -91, 57, -59, 0, -84, 
9, -29, 73, 2, -90, -62, 13, -7, -82, -42, 17, -54, 68, -68, 4, -43, 
26, 75, -73, 27, 76, 69, -7, 74, -49, -44, -18, 83, 79, -52, -21, -78, 
56, 88, 127, 91, 95, 101, -50, 66, -79, 6, 51, 127, 103, 47, 24, -63, 
48, -4, 93, 86, 86, 14, 43, 96, -76, 1, 51, 127, 123, -55, -42, -50, 
121, 100, -106, -14, 125, 21, -11, 0, -64, -75, -94, -115, 126, 0, -35, 79, 
47, 70, 65, 93, 117, 83, -10, 6, -49, 8, 78, -71, 109, 59, 12, -17, 
23, -5, 112, 101, -53, 11, 3, -3, 103, 40, 34, 125, 59, 94, 87, 72, 
-72, -3, -70, -6, -127, -99, -7, 0, -93, -126, -82, 4, -63, -120, -127, -70, 
-87, -5, -70, 6, -106, -61, 7, 5, -99, -66, -103, 13, -77, -102, -79, -126, 
-84, 0, -105, -7, -59, -80, 1, -7, -68, -86, -95, 17, -95, -93, -83, -79, 
-71, -5, -85, -6, -83, -76, 11, -5, -88, -91, -83, 11, -63, -82, -111, -102, 
-105, -6, -104, -7, -87, -127, 8, 7, -64, -73, -73, 7, -85, -100, -120, -83, 
-63, 7, -61, 9, -117, -110, -7, -7, -106, -114, -126, 13, -120, -124, -120, -67, 
-83, -7, -98, -9, -113, -127, 6, 10, -95, -60, -120, 7, -66, -70, -123, -120, 
-75, -8, -77, 8, -127, -90, 6, -1, -66, -110, -125, -5, -110, -90, -127, -98, 
-127, -5, -95, 6, -117, -82, 3, 11, -76, -85, -121, 10, -106, -58, -127, -65, 
23, 49, -50, 17, 63, -58, -37, 6, -120, -46, -52, 81, 73, -73, 25, -127, 
21, 54, 118, 0, -119, 6, -36, -1, -68, -51, -29, -86, 81, -49, 42, -62, 
7, -52, 116, 29, -67, -74, -3, -11, -104, -81, 34, -54, 127, -108, -1, -31, 
16, 103, -61, -25, 70, 24, -1, 60, -45, -27, -117, 106, 76, -50, -3, -53, 
56, 37, 118, 64, 111, 56, -20, 81, -90, -39, 82, 96, 78, 77, 47, -31, 
46, -52, 127, 96, 54, 17, -10, 69, -48, 0, 0, 79, 127, -51, -59, -35, 
94, 40, -109, 21, 105, -13, 19, -6, 8, -80, -55, -79, 70, -16, -42, 41, 
27, 61, 120, 86, -62, 74, 7, -8, -99, 0, 124, -33, 122, 91, -7, -67, 
13, 11, 110, 84, -57, 16, 9, -6, 68, 33, 41, 119, 117, 69, 69, 85, 
-127, 15, -118, 13, -91, -62, 15, 8, -96, -77, -127, -74, -72, -61, -117, -101, 
-99, 121, -123, -6, -58, -113, 20, 10, -127, -96, -114, -77, -107, -107, -124, -112, 
-57, 1, -105, 9, -89, -99, 14, 11, -80, -86, -64, -86, -117, -126, -58, -127, 
-127, 4, -105, 10, -94, -62, 18, -81, -58, -78, -113, -109, -99, -100, -122, -77, 
-127, 72, -86, 36, -70, -100, 2, -65, -75, -127, -117, -84, -70, -97, -58, -116, 
-63, -6, -79, 93, -91, -87, -7, -64, -88, -98, -127, -83, -81, -107, -108, -127, 
-91, -2, -92, 17, -79, -93, 15, 9, -77, -58, -120, -80, -69, -127, -127, -83, 
-119, 76, -108, 8, -102, -126, 15, 5, -127, -104, -123, -115, -75, -76, -101, -64, 
-70, -93, -86, 14, -85, -102, 4, 3, -81, -127, -62, -127, -86, -80, -115, -97, 
-61, -89, -72, -84, -124, -116, 7, 7, -127, -120, -78, 54, 79, -79, -50, -101, 
-105, -120, -124, -102, -99, -90, 4, 7, -81, -127, -125, 101, 71, -95, -13, -95, 
-74, -22, -82, -38, -54, -90, 8, 7, -64, -110, -86, -59, 127, -84, -14, -75, 
-76, -92, -77, -92, -67, -88, 5, 67, -61, -93, -102, 113, 119, -107, 109, -62, 
-117, -126, -72, -23, -78, -119, 7, 77, -87, -90, -103, 127, 86, -93, 125, -127, 
-125, -45, -62, -45, -126, -86, 3, 97, -55, -104, -120, 127, 72, -106, -39, 70, 
-100, -96, -86, -50, -81, -113, 7, 3, -125, -115, -93, 6, 119, -114, 119, -104, 
-79, -48, -108, -16, -123, -74, 4, 0, -59, -125, -126, 89, 111, -63, 89, -96, 
-98, -54, 73, -51, -110, -119, -4, -5, -53, -58, -99, 88, 114, -102, -13, 68, 
-81, 10, -118, -2, -101, -57, -6, 7, -74, -114, -58, -71, -67, -114, -84, -90, 
-75, 7, -87, -1, -127, -62, -2, 7, -115, -109, -93, -69, -73, -101, -65, -117, 
-87, -13, -108, 1, -121, -90, 6, -7, -96, -104, -60, -17, -73, -125, -121, -112, 
-111, -5, -73, -6, -101, -100, -7, -94, -108, -65, -108, -58, -104, -97, -127, -110, 
-57, 4, -82, -5, -61, -103, -5, -80, -107, -74, -94, -115, -104, -116, -102, -96, 
-107, 13, -91, -6, -68, -105, -2, -78, -127, -119, -127, -67, -63, -127, -119, -103, 
-77, -7, -120, 7, -90, -103, -3, -11, -93, -72, -97, -72, -78, -107, -127, -114, 
-66, 7, -88, -7, -83, -112, 10, 7, -122, -71, -96, -119, -60, -109, -64, -100, 
-115, -5, -127, 5, -127, -58, 10, -10, -127, -68, -63, -126, -111, -74, -61, -100, 
-80, 16, -107, 0, -127, -84, -2, 7, -106, -85, -74, -70, -70, -59, -101, -119, 
-68, 5, -92, 7, -67, -82, -2, -7, -94, -123, -90, -69, -77, -113, -106, -103, 
-107, -12, -63, -5, -88, -83, 5, -7, -75, -61, -127, -83, -117, -127, -107, -127, 
-120, -7, -66, -7, -65, -69, 14, 7, -69, -127, -75, -62, -81, -95, -71, -93, 
-85, 0, -104, 9, -127, -68, 6, 0, -126, -82, -71, -80, -57, -111, -97, -59, 
-96, -9, -112, -6, -91, -79, 7, 6, -110, -86, -63, -90, -110, -92, -127, -69, 
-127, 0, -71, -7, -86, -127, 0, -7, -126, -75, -127, -105, -115, -116, -85, -127, 
-69, -3, -104, 0, -76, -80, -4, -9, -80, -124, -89, -74, -106, -114, -109, -95, 
-78, 10, -127, 8, -67, -100, -7, -8, -115, -113, -62, -91, -68, -94, -67, -60, 
-14, 2, -8, 5, 0, 0, -6, -12, 15, -1, 7, -7, -3, 14, 6, 4, 
8, -45, -12, -41, -7, -17, -12, 6, -11, -31, 5, -7, -7, -7, -32, -7, 
-7, -39, -7, -1, 3, -32, -1, 7, -7, 10, -24, -1, 6, 4, -4, 2, 
7, -8, -26, 7, 14, 6, -9, 9, -34, -2, 19, -5, -9, 1, -5, -11, 
10, -40, 4, -46, 4, -31, 9, 1, 15, -37, 4, 8, 2, 9, -25, -6, 
-6, -21, 3, -5, 10, -12, 0, -3, 8, 7, -15, 6, 6, 11, 4, 7, 
-7, 7, 7, 7, 4, -2, 1, 9, 8, -10, 13, 9, 9, -10, -11, -1, 
-5, -48, -10, -40, 6, -18, 12, 7, -4, -31, 7, -9, -6, 1, -33, -4, 
7, -23, 3, -7, 8, -42, 1, 7, 5, 0, -28, -4, 7, -29, 1, -5, 
-42, -46, -6, -27, 7, -33, -7, 6, -66, -46, -31, 0, 4, -49, -43, 3, 
-32, -65, 12, -42, -11, -44, 9, -14, -11, -44, -47, 6, 7, -73, -42, -10, 
-15, -80, 6, -57, -1, -82, 8, -3, -3, -39, -55, -6, 7, 1, -33, -9, 
-58, -50, -10, -26, -4, -26, -7, 13, -27, -28, -38, 10, 0, -55, -48, 0, 
-32, -46, 10, -51, 2, -46, 1, 6, -19, -41, -34, 10, -5, -68, -71, 7, 
1, -72, 8, -78, 3, -65, -3, 6, 7, -65, -60, -10, 4, 15, -21, 14, 
-51, -52, -7, -25, 4, -60, 0, 5, -34, -53, -63, 6, 0, -66, -48, -6, 
-45, -37, 6, -60, 2, -30, 8, -7, -4, -36, -40, -6, 0, -74, -42, -14, 
-5, -75, 2, -48, -10, -61, 7, -10, 14, -49, -21, 6, 1, 5, -43, -11, 
79, -26, -104, -75, 75, -25, -9, -7, -8, -35, 12, 85, -3, -23, -68, 73, 
40, -66, 103, 54, -63, -46, -39, -6, -100, -82, 8, -80, -3, -82, -73, -92, 
-100, -76, -93, -52, -68, -82, -35, -7, -84, -110, 45, -101, -6, -75, -56, -91, 
82, 30, -90, -69, -49, 27, -4, 0, -24, -11, -32, -85, 0, -36, -94, 85, 
51, -82, 95, -51, -69, -69, -22, 1, -78, -106, 91, -68, 29, -86, -76, -90, 
-77, -79, -78, 79, 64, -92, -39, -6, -82, -84, 41, 83, 26, -93, -38, -110, 
58, 95, -86, -68, -33, 38, -5, 10, -43, -33, -59, -89, 4, -15, -55, 95, 
-76, -70, 81, 72, -66, -48, 3, 7, -82, -91, 111, -71, -19, -65, -64, -76, 
-39, -53, 82, 97, 93, -69, -48, -6, 79, -90, 27, 73, 13, -54, -14, -70, 
4, -31, -2, -31, 7, -32, -35, 13, 7, -16, -30, -6, -3, -28, -48, 7, 
-7, -24, 2, 2, -3, -38, 10, -3, -27, -48, -52, -7, 7, 13, 12, -10, 
6, 42, 5, 33, 8, -1, 29, -3, 22, 0, -37, 7, 6, 3, 3, -6, 
-2, -39, 2, 0, 8, -41, -10, 14, -29, 11, -28, -13, -14, 30, 18, 4, 
2, -21, 15, -20, 16, -31, -39, -8, -13, 11, -31, 2, -7, -11, -25, 6, 
24, 36, -10, 39, 4, 13, 18, 1, -4, 35, -19, -12, -7, 37, 30, 8, 
7, -39, 4, -20, 19, -61, -11, 5, -57, -45, 1, -6, 7, -61, -3, 4, 
-4, -34, 0, -54, -3, -13, -42, 3, -9, 35, -64, -10, -6, -20, -50, -5, 
-11, 38, -8, 34, -4, 7, 39, -7, 3, 1, -19, 7, -6, 14, 38, -6, 
-90, 3, -127, 0, -83, -82, 6, 0, -61, -102, -88, -92, -75, -99, -84, -122, 
-64, 7, -65, -10, -91, -59, 11, -7, -63, -76, -102, -60, -69, -109, -127, -88, 
-119, 8, -70, -7, -71, -75, 9, -5, -111, -70, -71, -59, -120, -90, -71, -95, 
-84, -7, -63, 6, -95, -75, 6, -4, -72, -123, -120, -89, -108, -126, -99, -77, 
-79, -5, -120, 7, -115, -92, -2, 7, -78, -75, -68, -84, -65, -79, -85, -100, 
-71, 2, -81, 9, -83, -107, 7, 5, -108, -72, -63, -117, -99, -74, -60, -114, 
-125, 3, -89, -4, -57, -93, -3, 0, -107, -88, -127, -112, -73, -126, -127, -59, 
-111, -2, -93, 4, -103, -60, 6, 9, -127, -89, -112, -116, -104, -73, -87, -81, 
-114, 18, -115, -7, -110, -110, 7, 8, -127, -99, -127, -57, -64, -109, -125, -71, 
23, 59, -112, 7, 74, -63, -23, 9, -47, -93, -59, 93, 89, -51, -34, -95, 
61, 43, 64, -19, -61, 1, -43, 2, -81, -12, 0, -65, 81, -87, 0, -116, 
15, -31, 80, 28, -76, -73, 22, 7, -110, -114, 18, -109, 63, -55, -65, -94, 
16, 72, -74, -33, 81, 11, -11, 97, -50, -10, -67, 81, 58, -37, -43, -99, 
27, 59, 56, 80, 73, 88, -36, 79, -42, -47, 81, 61, 127, 23, 11, -46, 
0, -35, 115, 113, -34, -19, 10, 99, -98, 1, 31, 117, 124, -69, -5, -40, 
116, 68, -99, 30, 81, 44, -6, -1, -34, -76, -41, -51, 82, 3, -1, 83, 
46, 49, 76, 109, -26, 83, 18, 8, -59, -3, 87, -43, 122, 65, 6, -12, 
43, 11, 91, 78, -112, 29, 11, 2, 127, 25, 56, 111, 97, 54, 84, 127, 
42, -12, -61, -68, -117, 65, -4, 0, -21, 70, 6, 29, -60, -12, -82, 118, 
87, 7, -82, 0, -80, 19, -40, -6, -31, -95, -42, -124, -79, -58, -111, -85, 
48, -55, -82, -77, -78, -44, -35, -7, -91, -68, 61, -122, -103, -50, -73, -125, 
91, 67, -109, -43, -106, 70, -7, -32, -75, 46, 21, -73, -93, -32, -97, 127, 
92, -13, -58, -34, -107, 7, -30, -32, -116, -79, 45, -70, -89, -118, -113, -91, 
111, -46, -68, -61, -119, -86, -59, -33, -87, -37, 16, -64, -103, -80, -122, -69, 
100, 99, -121, -60, -58, 92, -6, 6, -61, -19, -27, -62, -127, -77, -109, 122, 
67, -10, -124, -15, -117, -46, -1, 6, -57, -100, 105, -63, -115, -116, -97, -101, 
64, -91, -91, -60, -59, -48, -9, 7, -88, -98, 53, -79, -67, -72, -97, -127, 
-112, -7, -86, -1, -115, -95, -9, 13, -102, -106, -101, -4, -100, -127, -127, -69, 
-59, -21, -123, 6, -124, -95, 0, -7, -60, -93, -119, -119, -95, -107, -127, -68, 
-115, 18, -114, -4, -84, -68, 7, 4, -70, -87, -68, -34, -73, -96, -98, -79, 
-64, -4, -79, -14, -65, -91, 10, -35, -80, -77, -110, -87, -80, -110, -63, -61, 
-57, -4, -68, 6, -115, -104, 5, -52, -92, -90, -78, -63, -60, -95, -110, -127, 
-122, 13, -73, 8, -112, -74, 2, -89, -60, -127, -112, -84, -127, -77, -78, -127, 
-86, -5, -127, -4, -114, -123, -7, 0, -89, -81, -74, -61, -120, -73, -103, -93, 
-117, -60, -59, -5, -125, -59, 9, 2, -79, -127, -117, -68, -112, -118, -115, -127, 
-127, 11, -71, -10, -127, -81, -9, 7, -98, -127, -59, -68, -92, -121, -87, -100, 
-65, 9, -80, 2, -67, -99, -3, -7, -57, -127, -122, 17, -117, -106, -93, -86, 
-121, 5, -109, 7, -120, -98, 6, -1, -127, -80, -127, -91, -103, -127, -109, -85, 
-91, 8, -62, 7, -103, -127, -2, -6, -63, -111, -106, 0, -88, -70, -94, -81, 
-94, 6, -117, 10, -107, -97, 2, -7, -113, -101, -80, -62, -96, -78, -96, -66, 
-109, 2, -99, 9, -120, -121, -9, 2, -83, -60, -76, -108, -119, -66, -74, -79, 
-70, 10, -63, -1, -127, -68, -4, -59, -119, -63, -93, -85, -92, -81, -127, -127, 
-127, 3, -127, 6, -98, -81, 1, 0, -66, -82, -97, -1, -116, -102, -127, -79, 
-108, 0, -75, -1, -126, -119, 9, 5, -112, -111, -72, -94, -72, -106, -60, -95, 
-127, 7, -92, -6, -77, -97, 7, -9, -112, -100, -82, -11, -99, -81, -124, -86, 
-70, -98, -51, -79, 74, -102, 17, 3, -121, -72, -105, -94, 124, -100, 127, -100, 
-72, -64, 82, 62, -90, -63, 37, 11, -77, -64, -87, -106, 58, -47, 101, -53, 
-105, -62, 61, 8, -70, -62, 29, -2, -80, -102, -58, -58, 127, -60, 60, -33, 
-62, -94, -56, -52, 123, -85, 18, 1, -33, -121, -76, 86, 86, -112, 119, -85, 
-60, -74, 113, 79, 109, -112, 42, -6, -41, 44, -76, 76, 123, -99, 101, -86, 
-69, -14, 81, 45, -72, -26, 36, 76, 107, 28, -120, 117, 89, -123, 57, -59, 
-72, -75, -65, -80, 127, -59, 33, 10, -90, -122, -85, -91, 81, -90, 103, -64, 
-86, -84, 78, 3, 90, -83, -16, -8, -85, 83, -66, -54, 82, -3, 124, -25, 
-63, 21, 104, 70, -109, 49, 44, 0, 127, 7, -104, 96, 99, 113, 126, 113, 
-115, -1, -88, -7, -72, -125, -2, 2, -71, -109, -112, -65, -64, -101, -64, -94, 
-70, 0, -87, -12, -60, -70, 6, -4, -124, -84, -60, -81, -96, -117, -62, -85, 
-92, 7, -111, 5, -127, -94, 7, 6, -118, -112, -84, -75, -127, -106, -112, -93, 
-120, -5, -74, -3, -70, -126, 4, 0, -124, -122, -66, -88, -63, -66, -127, -87, 
-95, 9, -73, -6, -81, -84, -6, -3, -67, -122, -72, -59, -127, -127, -100, -73, 
-61, -1, -127, -7, -127, -72, -14, -5, -68, -74, -71, -93, -117, -121, -108, -65, 
-126, 0, -120, 0, -89, -69, 0, -1, -62, -126, -127, -52, -57, -97, -112, -73, 
-127, 7, -80, 0, -84, -79, 0, -7, -116, -70, -123, -79, -122, -66, -67, -87, 
-64, -1, -87, 7, -83, -96, 7, 6, -91, -79, -85, -62, -127, -88, -100, -101, 
-59, -56, -69, 6, -127, -122, 7, -7, -125, -91, -117, -65, -67, -74, -88, -114, 
-71, -56, -60, 11, -68, -98, -8, 7, -76, -92, -88, -116, -85, -88, -127, -116, 
-58, -58, -86, -2, -115, -73, -9, -2, -119, -122, -57, -104, -127, -62, -106, -93, 
-123, -50, -101, -7, -127, -84, -7, -6, -69, -59, -80, -81, -101, -57, -58, -113, 
-75, -53, -125, 13, -108, -102, 2, 9, -126, -97, -118, -108, -102, -59, -91, -78, 
-70, -48, -112, 1, -122, -103, -7, -7, -125, -99, -123, -99, -81, -75, -60, -105, 
-115, -62, -61, 1, -85, -90, 7, 3, -108, -109, -117, -90, -107, -105, -127, -113, 
-127, -56, -105, 9, -91, -83, -3, 0, -127, -104, -71, -79, -124, -127, -85, -95, 
-107, -48, -117, -3, -80, -127, -9, 21, -87, -117, -91, -56, -97, -127, -77, -122, 
-87, -6, -97, -7, -89, -127, 5, -5, -110, -127, -73, 18, -121, -81, -93, -13, 
-65, 1, -125, -7, -126, -58, 0, -7, -74, -109, -61, 16, -98, -105, -103, -57, 
-125, 7, -123, 3, -62, -59, -2, 7, -80, -63, -125, -32, -108, -75, -127, -78, 
-86, 6, -62, -10, -87, -90, -7, -11, -88, -65, -76, -60, -118, -127, -77, -31, 
-127, -3, -126, -10, -102, -116, 7, -10, -127, -94, -75, -88, -72, -127, -114, -27, 
-102, 9, -82, 7, -101, -96, 7, 0, -105, -63, -102, -68, -83, -80, -103, -68, 
-127, 4, -73, 7, -72, -91, 1, -1, -127, -111, -71, 16, -119, -70, -58, 2, 
-77, 2, -127, 3, -112, -126, 6, 0, -59, -97, -116, 20, -109, -115, -64, -42, 
-97, 7, -95, -6, -63, -93, 11, -7, -102, -61, -79, 21, -103, -104, -127, -65, 
-52, -76, -53, -83, 117, -83, 16, -7, -73, -59, -113, 102, 68, -89, -36, -90, 
-102, -82, 75, -52, -52, -52, 3, 7, -55, -98, -72, -47, 64, -102, -63, -59, 
-77, -92, 82, -45, -60, -84, -26, -9, -57, -111, -105, -97, 118, -91, -53, -70, 
-74, -46, -67, -28, 75, -45, -33, 68, -72, -44, -121, 61, 127, -72, -56, -66, 
-102, -83, 98, -10, 83, -86, -27, 85, -65, -27, 51, 68, 60, -101, -33, -79, 
-126, -88, 127, 41, 50, -33, -36, 113, -23, -40, -116, 82, 77, -86, -27, -86, 
-66, -86, -51, -63, 94, -102, -27, 0, -18, -58, -97, -61, 77, -8, -14, -104, 
-78, -76, 111, 76, 92, -47, 39, -1, -63, 7, 74, -38, 71, -19, 12, -47, 
-115, -14, 71, 119, -72, -23, -32, 8, 122, -21, -107, 127, 94, 3, 100, 62, 
0, 0, 7, 11, -14, 2, -4, -7, -3, 2, 0, -2, -7, -7, -4, -5, 
-7, -9, -10, -18, -9, -6, -1, -2, 7, 0, 6, -14, 7, -2, 9, 1, 
-7, -18, -6, -6, 7, 6, -13, -11, 7, -2, -8, -6, -1, 6, -2, 6, 
-5, 3, 3, -10, -14, 8, -10, 7, 21, -2, 9, 3, 0, -5, -5, 0, 
-2, -16, 1, -6, 26, 15, -8, -3, 9, -15, -21, -7, 7, 28, 9, -6, 
6, -5, -8, -3, -32, -31, 7, -6, 23, 4, 13, 17, 0, 14, 0, 6, 
6, 6, -7, -6, 21, 6, 8, 9, -13, 6, 8, 7, 6, 14, 7, -12, 
4, -7, 11, 8, 14, 3, 0, 1, 10, -26, 22, 0, -7, -42, -7, -4, 
13, 7, 7, -7, 0, -14, -7, 6, -4, 13, -35, -6, 1, -9, 0, -30, 
-77, 8, -76, 8, -56, -88, -7, -5, -127, 5, -114, -8, -71, -124, -123, 8, 
-117, 14, -91, -7, -67, -89, 1, -9, -63, -117, -73, -62, -119, -76, -58, -69, 
-122, -9, -104, -2, -95, -84, -6, 2, -64, -68, -73, -12, -118, -72, -72, -105, 
-61, 6, -81, 11, -88, -112, -7, 6, -113, -34, -127, 1, -103, -127, -107, 2, 
-81, 0, -61, -7, -110, -90, -3, 7, -127, -82, -119, -107, -95, -127, -57, -89, 
-120, 4, -61, 7, -127, -84, 13, -9, -96, -121, -127, 7, -68, -108, -113, -77, 
-99, -7, -102, 3, -114, -112, 0, -7, -127, 2, -71, -8, -93, -80, -99, 31, 
-107, -10, -87, 7, -89, -101, 7, 4, -99, -85, -79, -87, -83, -110, -127, -91, 
-84, 7, -68, -6, -105, -91, 9, 6, -90, -121, -127, 20, -127, -105, -74, -71, 
-85, 29, -62, -71, -89, -60, -21, 5, -101, -118, -122, -67, -119, -113, -90, -125, 
-89, 75, -97, -16, -63, -127, -38, 10, -117, -80, -69, -113, -75, -67, -96, 108, 
-26, 76, -124, -17, -78, -85, -36, -4, -127, -87, -80, -111, -81, -94, -113, 68, 
-116, 20, -82, -44, -98, -95, -25, -51, -123, -66, -127, -78, -69, -103, -114, -114, 
-61, 25, -94, -16, -116, -77, -71, -1, -59, -124, -99, -92, -115, -78, -78, 91, 
-54, 34, -71, -29, -92, -78, -25, -54, -117, -38, -92, -96, -78, -86, -107, -89, 
-110, 42, -84, -67, -109, -57, -39, 9, -117, -80, -117, -60, -115, -127, -127, -62, 
-124, 43, -121, -15, -64, -91, -43, -7, -120, -89, -127, -113, -72, -99, -66, 52, 
-37, 48, -109, -61, -111, -114, -34, 8, -70, -71, -90, -127, -84, -95, -90, -91, 
-118, -61, -95, -32, -86, -112, 2, -10, -73, -70, -86, -83, -113, -72, -77, -124, 
-127, -57, -126, -70, -79, -102, -6, -7, -114, -77, -79, -79, -76, -109, -82, -78, 
-102, -66, -113, 3, -80, -93, -4, -5, -127, -74, -127, -67, -124, -113, -95, -126, 
-91, -60, -58, -29, -122, -127, -10, -106, -71, -127, -64, -60, -74, -70, -81, -104, 
-102, -38, -57, 68, -97, -118, 0, -104, -65, -95, -87, -59, -107, -111, -96, -127, 
-68, -96, -80, 89, -107, -94, -5, -76, -109, -127, -58, -86, -64, -65, -101, -93, 
-121, -97, -78, -30, -88, -97, 7, 2, -80, -103, -127, -67, -63, -110, -76, -93, 
-108, 100, -127, -80, -91, -120, 12, 6, -127, -63, -115, -94, -71, -80, -64, -68, 
-75, -127, -74, 4, -76, -83, -9, -8, -112, -127, -104, -83, -127, -93, -117, -119, 
-67, -32, -88, -98, 71, -92, -28, -3, -81, -88, -69, 106, 124, -51, -16, -119, 
-106, -74, 84, -49, -105, -104, -41, -7, -99, -28, -9, -110, 86, -121, -19, -80, 
-100, -78, 117, -6, -49, -97, -39, -10, -64, -93, -108, -63, 125, -57, -21, -62, 
-51, -26, -47, -64, 90, -49, -32, 83, -13, -26, -53, 116, 110, -40, -15, -69, 
-112, -50, 120, 26, 71, -59, -54, 84, -65, 2, 40, 60, 66, -81, -43, -69, 
-100, -55, 108, 59, -67, -44, -53, 127, -58, -81, -56, 96, 127, -117, -7, -80, 
10, 88, -99, -18, 56, -20, -9, 13, -61, -21, -95, -112, 57, -43, 1, 75, 
-99, -51, 125, 79, -79, -12, -1, -7, -60, 14, 103, -76, 85, -39, 17, -44, 
-85, -46, 98, 70, -61, -23, 37, 8, 74, -57, 24, 116, 127, -23, 41, 96, 
};

const int8_t LineNetwork_layer_6_bias[] = {
-114, -117, 8, -2, -90, -100, 6, -113, 45, -85, -71, -83, -122, -89, -84, 51, -79, -124, 29, 33, -85, -90, -87, -123, -79, -104, 42, -71, -96, 25, -78, 30, };


const int8_t LineNetwork_layer_9_weights[] = {
-62, -54, 40, 99, 73, 64, 59, -12, 29, 27, 58, -17, -52, 21, -57, 123, -81, 22, 54, 113, 74, 24, -65, 83, 25, 127, 37, 50, 61, -127, -44, 25, 
};

const int8_t LineNetwork_layer_9_bias[] = {
1, };




LineNetwork::LineNetwork()
	: ModelInterface()
{
	init_buffer(18432);
}

void LineNetwork::forward()
{
	Conv2d(	output_buffer(), input_buffer(),
		LineNetwork_layer_0_bias, LineNetwork_layer_0_weights, 
		55, 8, 1, 96, 96, 3, 2);
	swap_buffer();

	ReLU(	output_buffer(), input_buffer(), 18432);
	swap_buffer();

	Conv2d(	output_buffer(), input_buffer(),
		LineNetwork_layer_2_bias, LineNetwork_layer_2_weights, 
		55, 8, 8, 48, 48, 3, 2);
	swap_buffer();

	ReLU(	output_buffer(), input_buffer(), 4608);
	swap_buffer();

	Conv2d(	output_buffer(), input_buffer(),
		LineNetwork_layer_4_bias, LineNetwork_layer_4_weights, 
		57, 16, 8, 24, 24, 3, 2);
	swap_buffer();

	ReLU(	output_buffer(), input_buffer(), 2304);
	swap_buffer();

	Conv2d(	output_buffer(), input_buffer(),
		LineNetwork_layer_6_bias, LineNetwork_layer_6_weights, 
		48, 32, 16, 12, 12, 3, 2);
	swap_buffer();

	ReLU(	output_buffer(), input_buffer(), 1152);
	swap_buffer();

	Conv2d(	output_buffer(), input_buffer(),
		LineNetwork_layer_9_bias, LineNetwork_layer_9_weights, 
		32, 1, 32, 6, 6, 1, 1);
	swap_buffer();

	swap_buffer();
}