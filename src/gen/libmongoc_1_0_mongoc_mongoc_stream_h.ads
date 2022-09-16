pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
with System; --  limited with x86_64_linux_gnu_bits_types_struct_iovec_h;
--  with stddef_h;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
--  with stdio_h;
with libmongoc_1_0_mongoc_mongoc_socket_h;
with Interfaces.C.Extensions;

package libmongoc_1_0_mongoc_mongoc_stream_h is

   type u_mongoc_stream_t;
   subtype mongoc_stream_t is u_mongoc_stream_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:30

   type u_mongoc_stream_poll_t is record
      stream : access mongoc_stream_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:33
      events : aliased int;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:34
      revents : aliased int;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:35
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:32

   subtype mongoc_stream_poll_t is u_mongoc_stream_poll_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:36

   type anon_array3846 is array (0 .. 2) of System.Address;
   type u_mongoc_stream_t is record
      c_type : aliased int;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:39
      destroy : access procedure (arg1 : access mongoc_stream_t);  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:40
      close : access function (arg1 : access mongoc_stream_t) return int;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:41
      flush : access function (arg1 : access mongoc_stream_t) return int;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:42
      writev : access function
           (arg1 : access mongoc_stream_t;
            arg2 : System.Address;
            arg3 : size_t;
            arg4 : Interfaces.Integer_32) return size_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:43
      readv : access function
           (arg1 : access mongoc_stream_t;
            arg2 : System.Address;
            arg3 : size_t;
            arg4 : size_t;
            arg5 : Interfaces.Integer_32) return size_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:47
      setsockopt : access function
           (arg1 : access mongoc_stream_t;
            arg2 : int;
            arg3 : int;
            arg4 : System.Address;
            arg5 : libmongoc_1_0_mongoc_mongoc_socket_h.mongoc_socklen_t) return int;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:52
      get_base_stream : access function (arg1 : access mongoc_stream_t) return access mongoc_stream_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:57
      check_closed : access function (arg1 : access mongoc_stream_t) return Extensions.bool;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:58
      poll : access function
           (arg1 : access mongoc_stream_poll_t;
            arg2 : size_t;
            arg3 : Interfaces.Integer_32) return size_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:59
      failed : access procedure (arg1 : access mongoc_stream_t);  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:62
      timed_out : access function (arg1 : access mongoc_stream_t) return Extensions.bool;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:63
      should_retry : access function (arg1 : access mongoc_stream_t) return Extensions.bool;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:64
      padding : anon_array3846;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:65
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:38

   function mongoc_stream_get_base_stream (stream : access mongoc_stream_t) return access mongoc_stream_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_get_base_stream";

   function mongoc_stream_get_tls_stream (stream : access mongoc_stream_t) return access mongoc_stream_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_get_tls_stream";

   function mongoc_stream_close (stream : access mongoc_stream_t) return int  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_close";

   procedure mongoc_stream_destroy (stream : access mongoc_stream_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_destroy";

   procedure mongoc_stream_failed (stream : access mongoc_stream_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_failed";

   function mongoc_stream_flush (stream : access mongoc_stream_t) return int  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_flush";

   function mongoc_stream_writev
     (stream : access mongoc_stream_t;
      iov : System.Address;
      iovcnt : size_t;
      timeout_msec : Interfaces.Integer_32) return size_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_writev";

   function mongoc_stream_write
     (stream : access mongoc_stream_t;
      buf : System.Address;
      count : size_t;
      timeout_msec : Interfaces.Integer_32) return size_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_write";

   function mongoc_stream_readv
     (stream : access mongoc_stream_t;
      iov : System.Address;
      iovcnt : size_t;
      min_bytes : size_t;
      timeout_msec : Interfaces.Integer_32) return size_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_readv";

   function mongoc_stream_read
     (stream : access mongoc_stream_t;
      buf : System.Address;
      count : size_t;
      min_bytes : size_t;
      timeout_msec : Interfaces.Integer_32) return size_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_read";

   function mongoc_stream_setsockopt
     (stream : access mongoc_stream_t;
      level : int;
      optname : int;
      optval : System.Address;
      optlen : libmongoc_1_0_mongoc_mongoc_socket_h.mongoc_socklen_t) return int  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_setsockopt";

   function mongoc_stream_check_closed (stream : access mongoc_stream_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_check_closed";

   function mongoc_stream_timed_out (stream : access mongoc_stream_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_timed_out";

   function mongoc_stream_should_retry (stream : access mongoc_stream_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_should_retry";

   function mongoc_stream_poll
     (streams : access mongoc_stream_poll_t;
      nstreams : size_t;
      timeout : Interfaces.Integer_32) return size_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_poll";

end libmongoc_1_0_mongoc_mongoc_stream_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
