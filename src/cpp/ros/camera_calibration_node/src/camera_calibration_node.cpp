/**
 * @file cameraCalibrationNode.cpp
 * @brief Remote interface to adjust the camera settings in runtime.
 * @date Created: 2012-10-18
 *
 * @author Koen Braham
 * @author Daan Veltman
 *
 * @section LICENSE
 * Copyright © 2012, HU University of Applied Sciences Utrecht.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
 * - Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 * - Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
 * - Neither the name of the HU University of Applied Sciences Utrecht nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE HU UNIVERSITY OF APPLIED SCIENCES UTRECHT
 * BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 * GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 **/

#include "camera_calibration_node/camera_calibration_node.h"
#include "camera_node/Services.h"
#include "camera_node/CorrectionMatrices.h"
#include <camera/RectifyImage.h>

#include <opencv/cv.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>

#include <image_transport/image_transport.h>
#include "sensor_msgs/Image.h"

#include <iostream>

CameraCalibrationNode::CameraCalibrationNode() :

	it(nodeHandle)
{
	calibrateLensServer = nodeHandle.advertiseService("CalibrateLens", &CameraCalibrationNode::calibrateLens, this);
}

void CameraCalibrationNode::run() {
	ROS_INFO("Waiting for calibrationStart");
	ros::spin();
}

bool CameraCalibrationNode::calibrateLens(
	camera_calibration_node::CalibrateLens::Request &request,
	camera_calibration_node::CalibrateLens::Response &response)
{
	framesToCapture = request.frameCount;
	image_transport::Subscriber sub = it.subscribe("camera/image", 1, &CameraCalibrationNode::handleFrame, this);

	// capture required frames
	ros::Rate captureRate(2);
	while(images.size() < framesToCapture){
		captureRate.sleep();
		ros::spinOnce();
	}

	// createMatrices
	ROS_INFO("Generating matrices...");
	Camera::RectifyImage rectifier;
	rectifier.createMatrices(cv::Size(6, 9), images);
	
	ROS_INFO("Sending matrices...");
	std::cout << "Dist Coeffs: " << rectifier.distCoeffs << std::endl;
	std::cout << "Camera matrix: " << rectifier.cameraMatrix << std::endl;

	ros::ServiceClient client = nodeHandle.serviceClient<camera_node::CorrectionMatrices>(camera_node_services::CORRECTION_MATRICES);
	camera_node::CorrectionMatrices serviceCall;
	
	std::cout << "sending: " << rectifier.cameraMatrix.at<double>(0, 0);

	serviceCall.request.distCoeffs.push_back(rectifier.distCoeffs.at<double>(0));
	serviceCall.request.distCoeffs.push_back(rectifier.distCoeffs.at<double>(1));
	serviceCall.request.distCoeffs.push_back(rectifier.distCoeffs.at<double>(2));
	serviceCall.request.distCoeffs.push_back(rectifier.distCoeffs.at<double>(3));
	serviceCall.request.distCoeffs.push_back(rectifier.distCoeffs.at<double>(4));

	serviceCall.request.cameraMatrix.values[0] = rectifier.cameraMatrix.at<double>(0, 0);
	serviceCall.request.cameraMatrix.values[1] = rectifier.cameraMatrix.at<double>(0, 1);
	serviceCall.request.cameraMatrix.values[2] = rectifier.cameraMatrix.at<double>(0, 2);
	serviceCall.request.cameraMatrix.values[3] = rectifier.cameraMatrix.at<double>(1, 0);
	serviceCall.request.cameraMatrix.values[4] = rectifier.cameraMatrix.at<double>(1, 1);
	serviceCall.request.cameraMatrix.values[5] = rectifier.cameraMatrix.at<double>(1, 2);
	serviceCall.request.cameraMatrix.values[6] = rectifier.cameraMatrix.at<double>(2, 0);
	serviceCall.request.cameraMatrix.values[7] = rectifier.cameraMatrix.at<double>(2, 1);
	serviceCall.request.cameraMatrix.values[8] = rectifier.cameraMatrix.at<double>(2, 2);
	
	std::cout << "sending: " << serviceCall.request.distCoeffs[0];
	client.call(serviceCall);

	ROS_INFO("Cleaning up...");
	while(images.size() != 0){
		cv::Mat* image = images.back();
		images.pop_back();
		delete image;
	}
	
	sub.shutdown();
	ROS_INFO("Done");
	return true;
}
void CameraCalibrationNode::handleFrame(const sensor_msgs::ImageConstPtr& msg) {
	cv_bridge::CvImagePtr cv_ptr;
	try {
		cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::MONO8);
		cv::Mat* image = new cv::Mat(cv_ptr->image);
		images.push_back(image);
		//cv::imwrite("/home/agileman/Desktop/images/image.jpg", *image);
		ROS_INFO("image processed");
	}
	catch (cv_bridge::Exception& e)	{
		ROS_ERROR("cv_bridge exception: %s", e.what());
	}
}

int main(int argc, char* argv[]) {
	ros::init(argc, argv, "cameraCalibrationNode");
	ROS_DEBUG("Constructing node");

	CameraCalibrationNode node;

	node.run();
	return 0;
}
