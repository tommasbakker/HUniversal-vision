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
 * Auto-generated by gensrv_cpp from file /home/t/Desktop/repo/src/cpp/ros/rexos_std_srvs/srv/Module.srv
 *
 */


#ifndef REXOS_STD_SRVS_MESSAGE_MODULE_H
#define REXOS_STD_SRVS_MESSAGE_MODULE_H

#include <ros/service_traits.h>


#include <rexos_std_srvs/ModuleRequest.h>
#include <rexos_std_srvs/ModuleResponse.h>


namespace rexos_std_srvs
{

struct Module
{

typedef ModuleRequest Request;
typedef ModuleResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Module
} // namespace rexos_std_srvs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rexos_std_srvs::Module > {
  static const char* value()
  {
    return "32066a77720df5097fe95349590b6013";
  }

  static const char* value(const ::rexos_std_srvs::Module&) { return value(); }
};

template<>
struct DataType< ::rexos_std_srvs::Module > {
  static const char* value()
  {
    return "rexos_std_srvs/Module";
  }

  static const char* value(const ::rexos_std_srvs::Module&) { return value(); }
};


// service_traits::MD5Sum< ::rexos_std_srvs::ModuleRequest> should match 
// service_traits::MD5Sum< ::rexos_std_srvs::Module > 
template<>
struct MD5Sum< ::rexos_std_srvs::ModuleRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rexos_std_srvs::Module >::value();
  }
  static const char* value(const ::rexos_std_srvs::ModuleRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rexos_std_srvs::ModuleRequest> should match 
// service_traits::DataType< ::rexos_std_srvs::Module > 
template<>
struct DataType< ::rexos_std_srvs::ModuleRequest>
{
  static const char* value()
  {
    return DataType< ::rexos_std_srvs::Module >::value();
  }
  static const char* value(const ::rexos_std_srvs::ModuleRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rexos_std_srvs::ModuleResponse> should match 
// service_traits::MD5Sum< ::rexos_std_srvs::Module > 
template<>
struct MD5Sum< ::rexos_std_srvs::ModuleResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rexos_std_srvs::Module >::value();
  }
  static const char* value(const ::rexos_std_srvs::ModuleResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rexos_std_srvs::ModuleResponse> should match 
// service_traits::DataType< ::rexos_std_srvs::Module > 
template<>
struct DataType< ::rexos_std_srvs::ModuleResponse>
{
  static const char* value()
  {
    return DataType< ::rexos_std_srvs::Module >::value();
  }
  static const char* value(const ::rexos_std_srvs::ModuleResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // REXOS_STD_SRVS_MESSAGE_MODULE_H
