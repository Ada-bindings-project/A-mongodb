pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libbson_1_0_bson_bson_types_h;
with System;
with Interfaces.C.Extensions;

package libmongoc_1_0_mongoc_mongoc_change_stream_h is

   type u_mongoc_change_stream_t is null record;   -- incomplete struct

   subtype mongoc_change_stream_t is u_mongoc_change_stream_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-change-stream.h:28

   procedure mongoc_change_stream_destroy (arg1 : access mongoc_change_stream_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-change-stream.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_change_stream_destroy";

   function mongoc_change_stream_get_resume_token (arg1 : access mongoc_change_stream_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-change-stream.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_change_stream_get_resume_token";

   function mongoc_change_stream_next (arg1 : access mongoc_change_stream_t; arg2 : System.Address) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-change-stream.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_change_stream_next";

   function mongoc_change_stream_error_document
     (arg1 : access constant mongoc_change_stream_t;
      arg2 : access libbson_1_0_bson_bson_types_h.u_bson_error_t;
      arg3 : System.Address) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-change-stream.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_change_stream_error_document";

end libmongoc_1_0_mongoc_mongoc_change_stream_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
