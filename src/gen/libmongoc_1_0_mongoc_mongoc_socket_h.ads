pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
--   with unistd_h;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
--  limited with x86_64_linux_gnu_bits_socket_h;
with Interfaces.C.Strings;
with System;
--  with stddef_h;
--  with stdio_h;
with System; --  limited with x86_64_linux_gnu_bits_types_struct_iovec_h;
with Interfaces.C.Extensions;
--  limited --  with netdb_h;

package libmongoc_1_0_mongoc_mongoc_socket_h is

   subtype mongoc_socklen_t is Interfaces.C.int;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:51

   type u_mongoc_socket_t is null record;   -- incomplete struct

   subtype mongoc_socket_t is u_mongoc_socket_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:53

   type mongoc_socket_poll_t is record
      socket : access mongoc_socket_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:56
      events : aliased int;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:57
      revents : aliased int;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:58
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:59

   function mongoc_socket_accept (sock : access mongoc_socket_t; expire_at : Interfaces.Integer_64) return access mongoc_socket_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_socket_accept";

   function mongoc_socket_bind
     (sock : access mongoc_socket_t;
      addr : System.Address;
      addrlen : mongoc_socklen_t) return int  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_socket_bind";

   function mongoc_socket_close (socket : access mongoc_socket_t) return int  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_socket_close";

   function mongoc_socket_connect
     (sock : access mongoc_socket_t;
      addr : System.Address;
      addrlen : mongoc_socklen_t;
      expire_at : Interfaces.Integer_64) return int  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_socket_connect";

   function mongoc_socket_getnameinfo (sock : access mongoc_socket_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_socket_getnameinfo";

   procedure mongoc_socket_destroy (sock : access mongoc_socket_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_socket_destroy";

   function mongoc_socket_errno (sock : access mongoc_socket_t) return int  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_socket_errno";

   function mongoc_socket_getsockname
     (sock : access mongoc_socket_t;
      addr : System.Address;
      addrlen : access mongoc_socklen_t) return int  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_socket_getsockname";

   function mongoc_socket_listen (sock : access mongoc_socket_t; backlog : unsigned) return int  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_socket_listen";

   function mongoc_socket_new
     (domain : int;
      c_type : int;
      protocol : int) return access mongoc_socket_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_socket_new";

   function mongoc_socket_recv
     (sock : access mongoc_socket_t;
      buf : System.Address;
      buflen : size_t;
      flags : int;
      expire_at : Interfaces.Integer_64) return size_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_socket_recv";

   function mongoc_socket_setsockopt
     (sock : access mongoc_socket_t;
      level : int;
      optname : int;
      optval : System.Address;
      optlen : mongoc_socklen_t) return int  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_socket_setsockopt";

   function mongoc_socket_send
     (sock : access mongoc_socket_t;
      buf : System.Address;
      buflen : size_t;
      expire_at : Interfaces.Integer_64) return size_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_socket_send";

   function mongoc_socket_sendv
     (sock : access mongoc_socket_t;
      iov : System.Address;
      iovcnt : size_t;
      expire_at : Interfaces.Integer_64) return size_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_socket_sendv";

   function mongoc_socket_check_closed (sock : access mongoc_socket_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_socket_check_closed";

   procedure mongoc_socket_inet_ntop
     (rp : System.Address;
      buf : Interfaces.C.Strings.chars_ptr;
      buflen : size_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_socket_inet_ntop";

   function mongoc_socket_poll
     (sds : access mongoc_socket_poll_t;
      nsds : size_t;
      timeout : Interfaces.Integer_32) return size_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-socket.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_socket_poll";

end libmongoc_1_0_mongoc_mongoc_socket_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
