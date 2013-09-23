/**
 * @file part_locator_node.cpp
 * @brief locates objects and rotates points.
 * @date Created: 2013-09-20
 *
 * @author Garik hakopian
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
#include "ros/ros.h"

#include "part_locator_node/part_locator_node.h"
#include <opencv/cv.h>
#include <opencv2/highgui/highgui.hpp>
#include <qr_code_reader_node/Collection.h>

#include <iostream>
#include <string>
using namespace cv;
using namespace std;

struct qrCode {
	Point2f points[3];
} ;



PartLocatorNode::PartLocatorNode()
{
	
	ros::Subscriber sub = nodeHandle.subscribe("camera/qr_codes", 10, &PartLocatorNode::qrCodeCallback,this);
	
}
void PartLocatorNode::getRotationAngle(){

	//
	
}


Point2f PartLocatorNode::rotatePoint(Point2f point, float angle)
{
	
	float rotationMatrix[9] = {cos(angle), -sin(angle), 0, 
								sin(angle), cos(angle), 0, 
								0,0,1};
	float valueHolder[3] {point.x, point.y , 1};
	for (int i = 0; i < 3; i++)
	{
		float currentValue = valueHolder[i];
		valueHolder[i] = 0;
		for (int j = 0; j < 3; j++)
		{
			valueHolder[i] += rotationMatrix[i*j+j] * currentValue;
		}
	}
	
	Point2f point2(valueHolder[0],valueHolder[1]);
	
	return point2;
}

void PartLocatorNode::qrCodeCallback(const qr_code_reader_node::Collection & message){
	string upperLeft = "WP_800_400_TL";
	string upperRight = "WP_800_400_TR";
	string lowerRight = "WP_800_400_BR";
	
	int collectionSize = message.collection.size();
	Point2f qrPoints[3];
	
	for(int i = 0; i < collectionSize; i++){		
		if(upperLeft.compare(message.collection[i].value) == 0){
			qrPoints[0].x = message.collection[i].corners[0].x + message.collection[i].corners[1].x + message.collection[i].corners[2].x;
			qrPoints[0].y = message.collection[i].corners[0].y + message.collection[i].corners[1].y + message.collection[i].corners[2].y;			
		}else if(upperRight.compare(message.collection[i].value) == 0){
			qrPoints[1].x = message.collection[i].corners[2].x;
			qrPoints[1].y = message.collection[i].corners[2].y;			
		}else if(lowerRight.compare(message.collection[i].value) == 0){
			qrPoints[2].x = message.collection[i].corners[0].x;
			qrPoints[2].y = message.collection[i].corners[0].y;			
		}
	}
	
	float angle = getAngleBetweenTwoPoints(qrPoints[0],qrPoints[1]);
	
	
	ROS_INFO("im getting stuff %f" , angle);
}



float PartLocatorNode::getAngleBetweenTwoPoints(Point2f point1, Point2f point2){
	
	float angle = 0.0;
	
	if(point1.x >= point2.x){
		
		angle = atan2(point1.y - point2.y, point1.x - point2.x);
	}else{
		angle = atan2(point2.y - point1.y, point2.x - point1.x);
	}
	
	angle *= 180 / 3.14159265359;
	if(angle < 0){
		angle*=-1;
		angle+=180;
	}
	return angle;
}


void PartLocatorNode::run() {
	ROS_INFO("waiting for camera/qr_codes");
	getRotationAngle();
	ros::spin();
}

int main(int argc, char* argv[]) {
	ros::init(argc, argv, "part_locator_node");
	ROS_DEBUG("Constructing node");

	PartLocatorNode node;
	
	node.run();
	return 0;
}
