// Generated by gencpp from file beginner_tutorials/Num.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_NUM_H
#define BEGINNER_TUTORIALS_MESSAGE_NUM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace beginner_tutorials
{
template <class ContainerAllocator>
struct Num_
{
  typedef Num_<ContainerAllocator> Type;

  Num_()
    : age(0)
    , content()  {
    }
  Num_(const ContainerAllocator& _alloc)
    : age(0)
    , content(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _age_type;
  _age_type age;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _content_type;
  _content_type content;





  typedef boost::shared_ptr< ::beginner_tutorials::Num_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::Num_<ContainerAllocator> const> ConstPtr;

}; // struct Num_

typedef ::beginner_tutorials::Num_<std::allocator<void> > Num;

typedef boost::shared_ptr< ::beginner_tutorials::Num > NumPtr;
typedef boost::shared_ptr< ::beginner_tutorials::Num const> NumConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::Num_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::Num_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'beginner_tutorials': ['/home/task02/Desktop/ros/catkin_ws/src/beginner_tutorials/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::Num_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::Num_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::Num_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::Num_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::Num_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::Num_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::Num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3b62634e09d2b0196e73d9028295f303";
  }

  static const char* value(const ::beginner_tutorials::Num_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3b62634e09d2b019ULL;
  static const uint64_t static_value2 = 0x6e73d9028295f303ULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::Num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/Num";
  }

  static const char* value(const ::beginner_tutorials::Num_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::Num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 age\n\
string content\n\
";
  }

  static const char* value(const ::beginner_tutorials::Num_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::Num_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.age);
      stream.next(m.content);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Num_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::Num_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::Num_<ContainerAllocator>& v)
  {
    s << indent << "age: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.age);
    s << indent << "content: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.content);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_NUM_H
