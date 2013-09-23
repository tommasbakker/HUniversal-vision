/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by gensrv_cpp from file /home/t/Desktop/repo/src/cpp/ros/camera_node/srv/AutoWhiteBalance.srv
 *
 */


#ifndef CAMERA_NODE_MESSAGE_AUTOWHITEBALANCE_H
#define CAMERA_NODE_MESSAGE_AUTOWHITEBALANCE_H

#include <ros/service_traits.h>


#include <camera_node/AutoWhiteBalanceRequest.h>
#include <camera_node/AutoWhiteBalanceResponse.h>


namespace camera_node
{

struct AutoWhiteBalance
{

typedef AutoWhiteBalanceRequest Request;
typedef AutoWhiteBalanceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AutoWhiteBalance
} // namespace camera_node


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::camera_node::AutoWhiteBalance > {
  static const char* value()
  {
    return "8c1211af706069c994c06e00eb59ac9e";
  }

  static const char* value(const ::camera_node::AutoWhiteBalance&) { return value(); }
};

template<>
struct DataType< ::camera_node::AutoWhiteBalance > {
  static const char* value()
  {
    return "camera_node/AutoWhiteBalance";
  }

  static const char* value(const ::camera_node::AutoWhiteBalance&) { return value(); }
};


// service_traits::MD5Sum< ::camera_node::AutoWhiteBalanceRequest> should match 
// service_traits::MD5Sum< ::camera_node::AutoWhiteBalance > 
template<>
struct MD5Sum< ::camera_node::AutoWhiteBalanceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::camera_node::AutoWhiteBalance >::value();
  }
  static const char* value(const ::camera_node::AutoWhiteBalanceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::camera_node::AutoWhiteBalanceRequest> should match 
// service_traits::DataType< ::camera_node::AutoWhiteBalance > 
template<>
struct DataType< ::camera_node::AutoWhiteBalanceRequest>
{
  static const char* value()
  {
    return DataType< ::camera_node::AutoWhiteBalance >::value();
  }
  static const char* value(const ::camera_node::AutoWhiteBalanceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::camera_node::AutoWhiteBalanceResponse> should match 
// service_traits::MD5Sum< ::camera_node::AutoWhiteBalance > 
template<>
struct MD5Sum< ::camera_node::AutoWhiteBalanceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::camera_node::AutoWhiteBalance >::value();
  }
  static const char* value(const ::camera_node::AutoWhiteBalanceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::camera_node::AutoWhiteBalanceResponse> should match 
// service_traits::DataType< ::camera_node::AutoWhiteBalance > 
template<>
struct DataType< ::camera_node::AutoWhiteBalanceResponse>
{
  static const char* value()
  {
    return DataType< ::camera_node::AutoWhiteBalance >::value();
  }
  static const char* value(const ::camera_node::AutoWhiteBalanceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CAMERA_NODE_MESSAGE_AUTOWHITEBALANCE_H
