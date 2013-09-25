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
#include <Matrices/Matrices.h>
#include <Vectors/Vectors.h>
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
	string topLeftValue = "WP_800_400_TL";
	string topRightValue = "WP_800_400_TR";
	string bottomRightValue = "WP_800_400_BR";
	
	Vector2 topLeftCoor;
	Vector2 topRightCoor;
	Vector2 bottomRightCoor;
	
	int collectionSize = message.collection.size();
	
	if(collectionSize != 3) return;
	
	for(int i = 0; i < collectionSize; i++){		
		if(topLeftValue.compare(message.collection[i].value) == 0){
			topLeftCoor.x = message.collection[i].corners[1].x;
			topLeftCoor.y = message.collection[i].corners[1].y;			
		}else if(topRightValue.compare(message.collection[i].value) == 0){
			topRightCoor.x = message.collection[i].corners[1].x;
			topRightCoor.y = message.collection[i].corners[1].y;			
		}else if(bottomRightValue.compare(message.collection[i].value) == 0){
			bottomRightCoor.x = message.collection[i].corners[1].x;
			bottomRightCoor.y = message.collection[i].corners[1].y;			
		}
	}
	ROS_INFO_STREAM("topLeftCoor " << topLeftCoor);
	ROS_INFO_STREAM("topRightCoor " << topRightCoor);
	ROS_INFO_STREAM("bottomRightCoor " << bottomRightCoor);
	
	////////////
	// calulate midpoint
	////////////
	// line between topLeft and topRight
	Vector2 lineTl2Tr;
	lineTl2Tr.x = topRightCoor.x - topLeftCoor.x;
	lineTl2Tr.y = topRightCoor.y - topLeftCoor.y;
	ROS_INFO_STREAM("lineTl2Tr " << lineTl2Tr);
	
	// line between topRight and bottomRight
	Vector2 lineTr2Br;
	lineTr2Br.x = bottomRightCoor.x - topRightCoor.x;
	lineTr2Br.y = bottomRightCoor.y - topRightCoor.y;
	ROS_INFO_STREAM("lineTr2Br " << lineTr2Br);
	
	// calulate new midpoint by deviding lineTl2Tr and bottomRight and then adding them
	Vector2 halfLineTl2Tr;
	halfLineTl2Tr.x = lineTl2Tr.x / 2;
	halfLineTl2Tr.y = lineTl2Tr.y / 2;
	Vector2 halfLineTr2Br;
	halfLineTr2Br.x = lineTr2Br.x / 2;
	halfLineTr2Br.y = lineTr2Br.y / 2;
	
	Vector2 midPoint;
	midPoint.x = topLeftCoor.x + halfLineTl2Tr.x + halfLineTr2Br.x;
	midPoint.y = topLeftCoor.y + halfLineTl2Tr.y + halfLineTr2Br.y;
	ROS_INFO_STREAM("midpoint " << midPoint);
	
	Matrix3 translationMatrixA;
	translationMatrixA[2] = -midPoint.x;
	translationMatrixA[5] = -midPoint.y;
	Matrix3 translationMatrixB;
	translationMatrixB[2] = midPoint.x;
	translationMatrixB[5] = midPoint.y;
	ROS_INFO_STREAM("translationMatrixA " << translationMatrixA);
	//ROS_INFO_STREAM("translationMatrixB " << translationMatrixB);
	
	
	////////////
	// calulate rotation angle
	////////////
	// the expected vector is horizontal to the left because TR is at the right of TL (eg. walk in this direction to get to TR)
	Vector2 expectedDirection(-1, 0); 
	Vector2 actualDirection;
	actualDirection.x = lineTl2Tr.x;
	actualDirection.y = lineTl2Tr.y;
	actualDirection.normalize();
	
	// we could calulate the angle by calulating the dot product and convert it to radians. But this is a more fancy approach (it actually aint)
	// calulate the expected angle (0)
	double expectedAngle = acos(expectedDirection.x);
	if(expectedDirection.y < 0) expectedAngle = 0 - expectedAngle;
	
	// calulate the actual angle
	double actualAngle = acos(actualDirection.x);
	if(actualDirection.y < 0) actualAngle = 0 - actualAngle;
	
	// substract the two angles to get the correction angle
	double correctionAngle = expectedAngle - actualAngle;
	
	Matrix3 rotationMatrix;
	rotationMatrix[0] = cos(correctionAngle);
	rotationMatrix[1] = -sin(correctionAngle);
	rotationMatrix[3] = sin(correctionAngle);
	rotationMatrix[4] = cos(correctionAngle);
	ROS_INFO_STREAM("rotationMatrix " << rotationMatrix);

	ROS_INFO_STREAM("expectedDirection " << expectedDirection);
	ROS_INFO_STREAM("actualDirection " << actualDirection);
	ROS_INFO_STREAM("correctionAngle " << correctionAngle);
	
	////////////
	// scale to workplate coor system
	////////////
	double workplateWidth = 80;
	double workplateHeight = 40;
	Matrix3 scaleMatrix;
	scaleMatrix[0] = -(	(workplateWidth / 1) / (lineTl2Tr.length()));
	scaleMatrix[4] = 	(workplateHeight / 1) / (lineTr2Br.length());
	ROS_INFO_STREAM("lineTl2Tr.length() " << lineTl2Tr.length());
	ROS_INFO_STREAM("lineTr2Br.length() " << lineTr2Br.length());
	ROS_INFO_STREAM("scaleMatrix " << scaleMatrix);
	
	for(int i = 0; i < collectionSize; i++){
		//for(int j = 0; j < 3; j++){
			Vector3 oldVector;
			oldVector.x = message.collection[i].corners[1].x;
			oldVector.y = message.collection[i].corners[1].y;
			oldVector.z = 1;
			
			ROS_INFO_STREAM("QrCode \t" << message.collection[i].value);
			Vector3 newCoor = oldVector;
			ROS_INFO_STREAM("-old \t\t" << newCoor);
			newCoor = translationMatrixA * newCoor;
			ROS_INFO_STREAM("-transCoor \t" << newCoor);
			newCoor = rotationMatrix * newCoor;
			ROS_INFO_STREAM("rotCoor \t" << newCoor);
			newCoor = scaleMatrix * newCoor;
			ROS_INFO_STREAM("-scaleCoor \t" << newCoor);
		//}
	}
}
	


void PartLocatorNode::run() {
	ROS_INFO("waiting for camera/qr_codes");
	ros::Subscriber sub = nodeHandle.subscribe("camera/qr_codes", 10, &PartLocatorNode::qrCodeCallback,this);
	
	getRotationAngle();
	ros::spin();
}

int main(int argc, char* argv[]) {
	ros::init(argc, argv, "part_locator_node");
	ROS_DEBUG("Constructing node");








/*	Vector2 topLeftCoor(50, 0);
	Vector2 topRightCoor(100, 50);
	Vector2 bottomRightCoor(50, 100);*/
/*	Vector2 topLeftCoor(0, 0);
	Vector2 topRightCoor(100, 0);
	Vector2 bottomRightCoor(100, 100);*/
	Vector2 topLeftCoor(100, 0);
	Vector2 topRightCoor(100, 100);
	Vector2 bottomRightCoor(0, 100);
	
	////////////
	// calulate midpoint
	////////////
	
	
	// line between topLeft and topRight
	Vector2 lineTl2Tr;
	lineTl2Tr.x = topRightCoor.x - topLeftCoor.x;
	lineTl2Tr.y = topRightCoor.y - topLeftCoor.y;
	ROS_INFO_STREAM("lineTl2Tr " << lineTl2Tr);
	
	// line between topRight and bottomRight
	Vector2 lineTr2Br;
	lineTr2Br.x = bottomRightCoor.x - topRightCoor.x;
	lineTr2Br.y = bottomRightCoor.y - topRightCoor.y;
	ROS_INFO_STREAM("lineTr2Br " << lineTr2Br);
	
	// calulate new midpoint by deviding lineTl2Tr and bottomRight and then adding them
	Vector2 halfLineTl2Tr;
	halfLineTl2Tr.x = lineTl2Tr.x / 2;
	halfLineTl2Tr.y = lineTl2Tr.y / 2;
	Vector2 halfLineTr2Br;
	halfLineTr2Br.x = lineTr2Br.x / 2;
	halfLineTr2Br.y = lineTr2Br.y / 2;
	
	Vector2 midPoint;
	midPoint.x = topLeftCoor.x + halfLineTl2Tr.x + halfLineTr2Br.x;
	midPoint.y = topLeftCoor.y + halfLineTl2Tr.y + halfLineTr2Br.y;
	ROS_INFO_STREAM("midpoint " << midPoint);
	
	Matrix3 translationMatrixA;
	translationMatrixA[2] = -midPoint.x;
	translationMatrixA[5] = -midPoint.y;
	Matrix3 translationMatrixB;
	translationMatrixB[2] = midPoint.x;
	translationMatrixB[5] = midPoint.y;
	ROS_INFO_STREAM("translationMatrixA " << translationMatrixA);
	ROS_INFO_STREAM("translationMatrixB " << translationMatrixB);
	
	
	////////////
	// calulate rotation angle
	////////////
	
	// the expected vector is horizontal to the left because TR is at the right of TL (eg. walk in this direction to get to TR)
	Vector2 expectedDirection(1, 0); 
	Vector2 actualDirection;
	actualDirection.x = lineTl2Tr.x;
	actualDirection.y = lineTl2Tr.y;
	actualDirection.normalize();
	
	// we could calulate the angle by calulating the dot product and convert it to radians. But this is a more fancy approach (it actually aint)
	// calulate the expected angle (0)
	double expectedAngle = acos(expectedDirection.x);
	if(expectedDirection.y < 0) expectedAngle = 0 - expectedAngle;
	
	// calulate the actual angle
	double actualAngle = acos(actualDirection.x);
	if(actualDirection.y < 0) actualAngle = 0 - actualAngle;
	
	// substract the two angles to get the correction angle
	double correctionAngle = expectedAngle - actualAngle;
	
	Matrix3 rotationMatrix;
	rotationMatrix[0] = cos(correctionAngle);
	rotationMatrix[1] = -sin(correctionAngle);
	rotationMatrix[3] = sin(correctionAngle);
	rotationMatrix[4] = cos(correctionAngle);
	ROS_INFO_STREAM("rotationMatrix " << rotationMatrix);

	ROS_INFO_STREAM("expectedDirection " << expectedDirection);
	ROS_INFO_STREAM("actualDirection " << actualDirection);
	ROS_INFO_STREAM("correctionAngle " << correctionAngle);
	
	////////////
	// scale to workplate coor system
	////////////
	double workplateWidth = 80;
	double workplateHeight = 40;
	Matrix3 scaleMatrix;
	scaleMatrix[0] = (1 / lineTl2Tr.length()) * workplateWidth;
	scaleMatrix[4] = (1 / lineTr2Br.length()) * workplateHeight;
	ROS_INFO_STREAM("scaleMatrix " << scaleMatrix);
	
	
	
	Matrix3 totalMatrix = translationMatrixA * rotationMatrix * scaleMatrix;
	ROS_INFO_STREAM("totalMatrix " << totalMatrix);
	Vector3 oldCoor(100, 0, 1);
	Vector3 newCoor;
	
	newCoor = Vector3(100, 0, 1);
	newCoor = translationMatrixA * newCoor;
	ROS_INFO_STREAM("newCoor " << newCoor);
	newCoor = rotationMatrix * newCoor;
	ROS_INFO_STREAM("newCoor " << newCoor);
	newCoor = scaleMatrix * newCoor;
	ROS_INFO_STREAM("-newCoor " << newCoor);
	ROS_INFO_STREAM("-newCoor " << totalMatrix * newCoor);
	
	newCoor = Vector3(100, 100, 1);
	newCoor = translationMatrixA * newCoor;
	ROS_INFO_STREAM("newCoor " << newCoor);
	newCoor = rotationMatrix * newCoor;
	ROS_INFO_STREAM("newCoor " << newCoor);
	newCoor = scaleMatrix * newCoor;
	ROS_INFO_STREAM("-newCoor " << newCoor);
	ROS_INFO_STREAM("-newCoor " << totalMatrix * newCoor);
	
	newCoor = Vector3(0, 100, 1);
	newCoor = translationMatrixA * newCoor;
	ROS_INFO_STREAM("newCoor " << newCoor);
	newCoor = rotationMatrix * newCoor;
	ROS_INFO_STREAM("newCoor " << newCoor);
	newCoor = scaleMatrix * newCoor;
	ROS_INFO_STREAM("-newCoor " << newCoor);
	ROS_INFO_STREAM("-newCoor " << totalMatrix * newCoor);
	
	//float angle = getAngleBetweenTwoPoints(qrPoints[0],qrPoints[1]);
	
	









	PartLocatorNode node;
	
	node.run();
	return 0;
}
