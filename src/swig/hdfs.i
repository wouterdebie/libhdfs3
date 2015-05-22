%module hdfs
%{
#include "client/hdfs.h"
%}

%include "typemaps.i"
%apply int *OUTPUT { int * numEntries };
%apply void *OUTPUT { void * buffer };

%typemap(in) void const * = char const*;

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

%typemap(in) tSize {
  $1 = PyInt_AsLong($input);
}

%typemap(out) tSize {
  $result = PyInt_FromLong($1);
}

%include <carrays.i>
%array_class(hdfsFileInfo, hdfsFileInfoArray);

%include "client/hdfs.h"
