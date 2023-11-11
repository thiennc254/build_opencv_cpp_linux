#include <opencv2/core.hpp>
#include <opencv2/videoio.hpp>
#include <opencv2/highgui.hpp>
#include <iostream>
#include <stdio.h>
using namespace cv;
using namespace std;
int main(int, char**)
{
  Mat frame, img;

  img = cv::imread('image.jpeg', cv::IMREAD_COLOR);
  if(!img.data) {
    std::cout << "Image not found" << std::endl;
    return -1;
  }

  cv::imshow("Lena", img);
  cv::waitKey(0);
  cv::destroyAllWindows();

  // VideoCapture cap;
  // int deviceID = 0;
  // int apiID = cv::CAP_ANY;

  // cap.open(deviceID, apiID);

  // if (!cap.isOpened()) {
  //     cerr << "ERROR! Unable to open camera\n";
  //     return -1;
  // }

  // cout << "Start grabbing" << endl
  //     << "Press any key to terminate" << endl;
  // while(true) {
  //     cap.read(frame);
  //     // check if we succeeded
  //     if (frame.empty()) {
  //         cerr << "ERROR! blank frame grabbed\n";
  //         break;
  //     }
  //     // show live and wait for a key with timeout long enough to show images
  //     imshow("Live", frame);
  //     if (waitKey(5) >= 0)
  //         break;
  // }
  return 0;
}