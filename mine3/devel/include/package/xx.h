// Generated by gencpp from file package/xx.msg
// DO NOT EDIT!


#ifndef PACKAGE_MESSAGE_XX_H
#define PACKAGE_MESSAGE_XX_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace package
{
template <class ContainerAllocator>
struct xx_
{
  typedef xx_<ContainerAllocator> Type;

  xx_()
    : value(0)  {
    }
  xx_(const ContainerAllocator& _alloc)
    : value(0)  {
  (void)_alloc;
    }



   typedef int32_t _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::package::xx_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::package::xx_<ContainerAllocator> const> ConstPtr;

}; // struct xx_

typedef ::package::xx_<std::allocator<void> > xx;

typedef boost::shared_ptr< ::package::xx > xxPtr;
typedef boost::shared_ptr< ::package::xx const> xxConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::package::xx_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::package::xx_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace package

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'package': ['/home/qxh/mine3/src/package1/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::package::xx_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::package::xx_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::package::xx_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::package::xx_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::package::xx_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::package::xx_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::package::xx_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b3087778e93fcd34cc8d65bc54e850d1";
  }

  static const char* value(const ::package::xx_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb3087778e93fcd34ULL;
  static const uint64_t static_value2 = 0xcc8d65bc54e850d1ULL;
};

template<class ContainerAllocator>
struct DataType< ::package::xx_<ContainerAllocator> >
{
  static const char* value()
  {
    return "package/xx";
  }

  static const char* value(const ::package::xx_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::package::xx_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 value\n\
";
  }

  static const char* value(const ::package::xx_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::package::xx_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct xx_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::package::xx_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::package::xx_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<int32_t>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PACKAGE_MESSAGE_XX_H