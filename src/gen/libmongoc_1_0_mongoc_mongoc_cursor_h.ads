pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;
with System;
limited with libbson_1_0_bson_bson_types_h;
limited with libmongoc_1_0_mongoc_mongoc_host_list_h;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
limited with libmongoc_1_0_mongoc_mongoc_client_side_encryption_h;

package libmongoc_1_0_mongoc_mongoc_cursor_h is

   type u_mongoc_cursor_t is null record;   -- incomplete struct

   subtype mongoc_cursor_t is u_mongoc_cursor_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:30

   function mongoc_cursor_clone (cursor : access constant mongoc_cursor_t) return access mongoc_cursor_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_clone";

   procedure mongoc_cursor_destroy (cursor : access mongoc_cursor_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_destroy";

   function mongoc_cursor_more (cursor : access mongoc_cursor_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_more";

   function mongoc_cursor_next (cursor : access mongoc_cursor_t; bson : System.Address) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_next";

   function mongoc_cursor_error (cursor : access mongoc_cursor_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_error";

   function mongoc_cursor_error_document
     (cursor : access mongoc_cursor_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t;
      doc : System.Address) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_error_document";

   procedure mongoc_cursor_get_host (cursor : access mongoc_cursor_t; host : access libmongoc_1_0_mongoc_mongoc_host_list_h.u_mongoc_host_list_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_get_host";

   function mongoc_cursor_is_alive (cursor : access constant mongoc_cursor_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_is_alive";

   function mongoc_cursor_current (cursor : access constant mongoc_cursor_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_current";

   procedure mongoc_cursor_set_batch_size (cursor : access mongoc_cursor_t; batch_size : Interfaces.Unsigned_32)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_set_batch_size";

   function mongoc_cursor_get_batch_size (cursor : access constant mongoc_cursor_t) return Interfaces.Unsigned_32  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_get_batch_size";

   function mongoc_cursor_set_limit (cursor : access mongoc_cursor_t; limit : Interfaces.Integer_64) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_set_limit";

   function mongoc_cursor_get_limit (cursor : access constant mongoc_cursor_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_get_limit";

   function mongoc_cursor_set_hint (cursor : access mongoc_cursor_t; server_id : Interfaces.Unsigned_32) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_set_hint";

   function mongoc_cursor_get_hint (cursor : access constant mongoc_cursor_t) return Interfaces.Unsigned_32  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_get_hint";

   function mongoc_cursor_get_id (cursor : access constant mongoc_cursor_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_get_id";

   procedure mongoc_cursor_set_max_await_time_ms (cursor : access mongoc_cursor_t; max_await_time_ms : Interfaces.Unsigned_32)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_set_max_await_time_ms";

   function mongoc_cursor_get_max_await_time_ms (cursor : access constant mongoc_cursor_t) return Interfaces.Unsigned_32  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_get_max_await_time_ms";

   function mongoc_cursor_new_from_command_reply
     (client : access libmongoc_1_0_mongoc_mongoc_client_side_encryption_h.u_mongoc_client_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      server_id : Interfaces.Unsigned_32) return access mongoc_cursor_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_new_from_command_reply";

   function mongoc_cursor_new_from_command_reply_with_opts
     (client : access libmongoc_1_0_mongoc_mongoc_client_side_encryption_h.u_mongoc_client_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return access mongoc_cursor_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cursor_new_from_command_reply_with_opts";

end libmongoc_1_0_mongoc_mongoc_cursor_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
