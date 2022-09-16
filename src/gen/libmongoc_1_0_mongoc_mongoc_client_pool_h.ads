pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with libmongoc_1_0_mongoc_mongoc_client_side_encryption_h;
limited with libmongoc_1_0_mongoc_mongoc_uri_h;
limited with libbson_1_0_bson_bson_types_h;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;
limited with libmongoc_1_0_mongoc_mongoc_ssl_h;
limited with libmongoc_1_0_mongoc_mongoc_apm_h;
with System;
with Interfaces.C.Extensions;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
with Interfaces.C.Strings;
limited with libmongoc_1_0_mongoc_mongoc_server_api_h;

package libmongoc_1_0_mongoc_mongoc_client_pool_h is

   subtype mongoc_client_pool_t is libmongoc_1_0_mongoc_mongoc_client_side_encryption_h.u_mongoc_client_pool_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-pool.h:37

   function mongoc_client_pool_new (uri : access constant libmongoc_1_0_mongoc_mongoc_uri_h.u_mongoc_uri_t) return access mongoc_client_pool_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-pool.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_pool_new";

   function mongoc_client_pool_new_with_error (uri : access constant libmongoc_1_0_mongoc_mongoc_uri_h.u_mongoc_uri_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access mongoc_client_pool_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-pool.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_pool_new_with_error";

   procedure mongoc_client_pool_destroy (pool : access mongoc_client_pool_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-pool.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_pool_destroy";

   function mongoc_client_pool_pop (pool : access mongoc_client_pool_t) return access libmongoc_1_0_mongoc_mongoc_client_side_encryption_h.u_mongoc_client_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-pool.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_pool_pop";

   procedure mongoc_client_pool_push (pool : access mongoc_client_pool_t; client : access libmongoc_1_0_mongoc_mongoc_client_side_encryption_h.u_mongoc_client_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-pool.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_pool_push";

   function mongoc_client_pool_try_pop (pool : access mongoc_client_pool_t) return access libmongoc_1_0_mongoc_mongoc_client_side_encryption_h.u_mongoc_client_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-pool.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_pool_try_pop";

   procedure mongoc_client_pool_max_size (pool : access mongoc_client_pool_t; max_pool_size : Interfaces.Unsigned_32)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-pool.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_pool_max_size";

   procedure mongoc_client_pool_min_size (pool : access mongoc_client_pool_t; min_pool_size : Interfaces.Unsigned_32)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-pool.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_pool_min_size";

   procedure mongoc_client_pool_set_ssl_opts (pool : access mongoc_client_pool_t; opts : access constant libmongoc_1_0_mongoc_mongoc_ssl_h.u_mongoc_ssl_opt_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-pool.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_pool_set_ssl_opts";

   function mongoc_client_pool_set_apm_callbacks
     (pool : access mongoc_client_pool_t;
      callbacks : access libmongoc_1_0_mongoc_mongoc_apm_h.u_mongoc_apm_callbacks_t;
      context : System.Address) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-pool.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_pool_set_apm_callbacks";

   function mongoc_client_pool_set_error_api (pool : access mongoc_client_pool_t; version : Interfaces.Integer_32) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-pool.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_pool_set_error_api";

   function mongoc_client_pool_set_appname (pool : access mongoc_client_pool_t; appname : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-pool.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_pool_set_appname";

   function mongoc_client_pool_enable_auto_encryption
     (pool : access mongoc_client_pool_t;
      opts : access libmongoc_1_0_mongoc_mongoc_client_side_encryption_h.u_mongoc_auto_encryption_opts_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-pool.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_pool_enable_auto_encryption";

   function mongoc_client_pool_set_server_api
     (pool : access mongoc_client_pool_t;
      api : access constant libmongoc_1_0_mongoc_mongoc_server_api_h.u_mongoc_server_api_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-pool.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_pool_set_server_api";

end libmongoc_1_0_mongoc_mongoc_client_pool_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
