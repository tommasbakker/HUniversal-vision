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
 * Auto-generated by genmsg_cpp from file /home/t/Desktop/repo/src/cpp/ros/rexos_std_msgs/msg/Map.msg
 *
 */


#ifndef REXOS_STD_MSGS_MESSAGE_MAP_H
#define REXOS_STD_MSGS_MESSAGE_MAP_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <rexos_std_msgs/KeyValuePair.h>

namespace rexos_std_msgs
{
template <class ContainerAllocator>
struct Map_
{
  typedef Map_<ContainerAllocator> Type;

  Map_()
    : KeyValuePairSet()  {
    }
  Map_(const ContainerAllocator& _alloc)
    : KeyValuePairSet(_alloc)  {
    }



   typedef std::vector< ::rexos_std_msgs::KeyValuePair_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::rexos_std_msgs::KeyValuePair_<ContainerAllocator> >::other >  _KeyValuePairSet_type;
  _KeyValuePairSet_type KeyValuePairSet;




  typedef boost::shared_ptr< ::rexos_std_msgs::Map_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rexos_std_msgs::Map_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct Map_

typedef ::rexos_std_msgs::Map_<std::allocator<void> > Map;

typedef boost::shared_ptr< ::rexos_std_msgs::Map > MapPtr;
typedef boost::shared_ptr< ::rexos_std_msgs::Map const> MapConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rexos_std_msgs::Map_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rexos_std_msgs::Map_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rexos_std_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/groovy/share/std_msgs/msg'], 'rexos_std_msgs': ['/home/t/Desktop/repo/src/cpp/ros/rexos_std_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rexos_std_msgs::Map_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rexos_std_msgs::Map_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rexos_std_msgs::Map_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rexos_std_msgs::Map_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rexos_std_msgs::Map_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rexos_std_msgs::Map_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rexos_std_msgs::Map_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6cd68a555157238126f230a58866beef";
  }

  static const char* value(const ::rexos_std_msgs::Map_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6cd68a5551572381ULL;
  static const uint64_t static_value2 = 0x26f230a58866beefULL;
};

template<class ContainerAllocator>
struct DataType< ::rexos_std_msgs::Map_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rexos_std_msgs/Map";
  }

  static const char* value(const ::rexos_std_msgs::Map_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rexos_std_msgs::Map_<ContainerAllocator> >
{
  static const char* value()
  {
    return "KeyValuePair[] KeyValuePairSet\n\
================================================================================\n\
MSG: rexos_std_msgs/KeyValuePair\n\
string key\n\
string value\n\
";
  }

  static const char* value(const ::rexos_std_msgs::Map_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rexos_std_msgs::Map_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.KeyValuePairSet);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct Map_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rexos_std_msgs::Map_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rexos_std_msgs::Map_<ContainerAllocator>& v)
  {
    s << indent << "KeyValuePairSet[]" << std::endl;
    for (size_t i = 0; i < v.KeyValuePairSet.size(); ++i)
    {
      s << indent << "  KeyValuePairSet[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rexos_std_msgs::KeyValuePair_<ContainerAllocator> >::stream(s, indent + "    ", v.KeyValuePairSet[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // REXOS_STD_MSGS_MESSAGE_MAP_H
