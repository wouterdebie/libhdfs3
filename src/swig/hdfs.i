%module hdfs 
%{
#include "client/hdfs.h"
%}
typedef int32_t tSize; /// size of data for read/write io ops
typedef time_t tTime; /// time type in seconds
typedef int64_t tOffset; /// offset within the file
typedef uint16_t tPort; /// port
%include "client/hdfs.h"

%inline %{
    typedef int32_t tSize; /// size of data for read/write io ops
    typedef time_t tTime; /// time type in seconds
    typedef int64_t tOffset; /// offset within the file
    typedef uint16_t tPort; /// port
%}