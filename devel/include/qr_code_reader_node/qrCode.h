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
 * Auto-generated by genmsg_cpp from file /home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg/qrCode.msg
 *
 */


#ifndef QR_CODE_READER_NODE_MESSAGE_QRCODE_H
#define QR_CODE_READER_NODE_MESSAGE_QRCODE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <qr_code_reader_node/point64.h>

namespace qr_code_reader_node
{
template <class ContainerAllocator>
struct qrCode_
{
  typedef qrCode_<ContainerAllocator> Type;

  qrCode_()
    : value()
    , corners()  {
    }
  qrCode_(const ContainerAllocator& _alloc)
    : value(_alloc)
    , corners()  {
      corners.assign( ::qr_code_reader_node::point64_<ContainerAllocator> (_alloc));
  }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _value_type;
  _value_type value;

   typedef boost::array< ::qr_code_reader_node::point64_<ContainerAllocator> , 3>  _corners_type;
  _corners_type corners;




  typedef boost::shared_ptr< ::qr_code_reader_node::qrCode_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::qr_code_reader_node::qrCode_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct qrCode_

typedef ::qr_code_reader_node::qrCode_<std::allocator<void> > qrCode;

typedef boost::shared_ptr< ::qr_code_reader_node::qrCode > qrCodePtr;
typedef boost::shared_ptr< ::qr_code_reader_node::qrCode const> qrCodeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::qr_code_reader_node::qrCode_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::qr_code_reader_node::qrCode_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace qr_code_reader_node

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/groovy/share/std_msgs/msg'], 'qr_code_reader_node': ['/home/t/Desktop/repo/src/cpp/ros/qr_code_reader_node/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::qr_code_reader_node::qrCode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::qr_code_reader_node::qrCode_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::qr_code_reader_node::qrCode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::qr_code_reader_node::qrCode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qr_code_reader_node::qrCode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::qr_code_reader_node::qrCode_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::qr_code_reader_node::qrCode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2d00db900ac1def7162fffa086aace94";
  }

  static const char* value(const ::qr_code_reader_node::qrCode_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2d00db900ac1def7ULL;
  static const uint64_t static_value2 = 0x162fffa086aace94ULL;
};

template<class ContainerAllocator>
struct DataType< ::qr_code_reader_node::qrCode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "qr_code_reader_node/qrCode";
  }

  static const char* value(const ::qr_code_reader_node::qrCode_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::qr_code_reader_node::qrCode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string value\n\
point64[3] corners\n\
\n\
================================================================================\n\
MSG: qr_code_reader_node/point64\n\
float64 x\n\
float64 y\n\
\n\
";
  }

  static const char* value(const ::qr_code_reader_node::qrCode_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::qr_code_reader_node::qrCode_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
      stream.next(m.corners);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct qrCode_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::qr_code_reader_node::qrCode_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::qr_code_reader_node::qrCode_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.value);
    s << indent << "corners[]" << std::endl;
    for (size_t i = 0; i < v.corners.size(); ++i)
    {
      s << indent << "  corners[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::qr_code_reader_node::point64_<ContainerAllocator> >::stream(s, indent + "    ", v.corners[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // QR_CODE_READER_NODE_MESSAGE_QRCODE_H