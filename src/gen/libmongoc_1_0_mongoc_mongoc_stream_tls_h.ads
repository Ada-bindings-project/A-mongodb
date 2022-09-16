pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libmongoc_1_0_mongoc_mongoc_stream_h;
with Interfaces.C.Strings;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
limited with libbson_1_0_bson_bson_types_h;
with Interfaces.C.Extensions;
limited with libmongoc_1_0_mongoc_mongoc_ssl_h;

package libmongoc_1_0_mongoc_mongoc_stream_tls_h is

   type u_mongoc_stream_tls_t is null record;   -- incomplete struct

   subtype mongoc_stream_tls_t is u_mongoc_stream_tls_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream-tls.h:31

   function mongoc_stream_tls_handshake
     (stream : access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t;
      host : Interfaces.C.Strings.chars_ptr;
      timeout_msec : Interfaces.Integer_32;
      events : access int;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream-tls.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_tls_handshake";

   function mongoc_stream_tls_handshake_block
     (stream : access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t;
      host : Interfaces.C.Strings.chars_ptr;
      timeout_msec : Interfaces.Integer_32;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream-tls.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_tls_handshake_block";

   function mongoc_stream_tls_do_handshake (stream : access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t; timeout_msec : Interfaces.Integer_32) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream-tls.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_tls_do_handshake";

   function mongoc_stream_tls_check_cert (stream : access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t; host : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream-tls.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_tls_check_cert";

   function mongoc_stream_tls_new_with_hostname
     (base_stream : access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t;
      host : Interfaces.C.Strings.chars_ptr;
      opt : access libmongoc_1_0_mongoc_mongoc_ssl_h.u_mongoc_ssl_opt_t;
      client : int) return access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream-tls.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_tls_new_with_hostname";

   function mongoc_stream_tls_new
     (base_stream : access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t;
      opt : access libmongoc_1_0_mongoc_mongoc_ssl_h.u_mongoc_ssl_opt_t;
      client : int) return access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream-tls.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_tls_new";

end libmongoc_1_0_mongoc_mongoc_stream_tls_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
