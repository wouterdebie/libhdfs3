%module hdfs 
%{
#include "client/hdfs.h"
%}

%typemap(in) tPort {
  $1 = PyInt_AsLong($input);
}

%typemap(out) tPort {
  $result = PyInt_FromLong($1);
}

%typemap(in) tOffset {
  $1 = PyInt_AsLong($input);
}

%typemap(out) tOffset {
  $result = PyInt_FromLong($1);
}

%include "client/hdfs.h"
