pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with libmongoc_1_0_mongoc_mongoc_client_side_encryption_h;
with libmongoc_1_0_mongoc_mongoc_bulk_operation_h;
limited with libmongoc_1_0_mongoc_mongoc_uri_h;
limited with libmongoc_1_0_mongoc_mongoc_host_list_h;
with System;
limited with libbson_1_0_bson_bson_types_h;
limited with libmongoc_1_0_mongoc_mongoc_stream_h;
with Interfaces.C.Strings;
with libmongoc_1_0_mongoc_mongoc_flags_h;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;
limited with libmongoc_1_0_mongoc_mongoc_read_prefs_h;
limited with libmongoc_1_0_mongoc_mongoc_cursor_h;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
with Interfaces.C.Extensions;
limited with libmongoc_1_0_mongoc_mongoc_database_h;
limited with libmongoc_1_0_mongoc_mongoc_gridfs_h;
limited with libmongoc_1_0_mongoc_mongoc_collection_h;
limited with libmongoc_1_0_mongoc_mongoc_write_concern_h;
limited with libmongoc_1_0_mongoc_mongoc_read_concern_h;
limited with libmongoc_1_0_mongoc_mongoc_ssl_h;
limited with libmongoc_1_0_mongoc_mongoc_apm_h;
limited with libmongoc_1_0_mongoc_mongoc_server_description_h;
--  with stddef_h;
limited with libmongoc_1_0_mongoc_mongoc_change_stream_h;
limited with libmongoc_1_0_mongoc_mongoc_server_api_h;

package libmongoc_1_0_mongoc_mongoc_client_h is

   MONGOC_NAMESPACE_MAX : constant := 128;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:48

   MONGOC_DEFAULT_CONNECTTIMEOUTMS : constant := (10 * 1000);  --  /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:52

   MONGOC_DEFAULT_SOCKETTIMEOUTMS : constant := (1000 * 60 * 5);  --  /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:65

   subtype mongoc_client_t is libmongoc_1_0_mongoc_mongoc_client_side_encryption_h.u_mongoc_client_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:75

   subtype mongoc_client_session_t is libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:78

   type u_mongoc_session_opt_t is null record;   -- incomplete struct

   subtype mongoc_session_opt_t is u_mongoc_session_opt_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:79

   type u_mongoc_transaction_opt_t is null record;   -- incomplete struct

   subtype mongoc_transaction_opt_t is u_mongoc_transaction_opt_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:80

   type mongoc_stream_initiator_t is access function
        (arg1 : access constant libmongoc_1_0_mongoc_mongoc_uri_h.u_mongoc_uri_t;
         arg2 : access constant libmongoc_1_0_mongoc_mongoc_host_list_h.u_mongoc_host_list_t;
         arg3 : System.Address;
         arg4 : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:98

   function mongoc_client_new (uri_string : Interfaces.C.Strings.chars_ptr) return access mongoc_client_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_new";

   function mongoc_client_new_from_uri (uri : access constant libmongoc_1_0_mongoc_mongoc_uri_h.u_mongoc_uri_t) return access mongoc_client_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_new_from_uri";

   function mongoc_client_new_from_uri_with_error (uri : access constant libmongoc_1_0_mongoc_mongoc_uri_h.u_mongoc_uri_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access mongoc_client_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_new_from_uri_with_error";

   function mongoc_client_get_uri (client : access constant mongoc_client_t) return access constant libmongoc_1_0_mongoc_mongoc_uri_h.u_mongoc_uri_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_get_uri";

   procedure mongoc_client_set_stream_initiator
     (client : access mongoc_client_t;
      initiator : mongoc_stream_initiator_t;
      user_data : System.Address)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_set_stream_initiator";

   function mongoc_client_command
     (client : access mongoc_client_t;
      db_name : Interfaces.C.Strings.chars_ptr;
      flags : libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_query_flags_t;
      skip : Interfaces.Unsigned_32;
      limit : Interfaces.Unsigned_32;
      batch_size : Interfaces.Unsigned_32;
      query : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      fields : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t) return access libmongoc_1_0_mongoc_mongoc_cursor_h.u_mongoc_cursor_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_command";

   procedure mongoc_client_kill_cursor (client : access mongoc_client_t; cursor_id : Interfaces.Integer_64)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_kill_cursor";

   function mongoc_client_command_simple
     (client : access mongoc_client_t;
      db_name : Interfaces.C.Strings.chars_ptr;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_command_simple";

   function mongoc_client_read_command_with_opts
     (client : access mongoc_client_t;
      db_name : Interfaces.C.Strings.chars_ptr;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_read_command_with_opts";

   function mongoc_client_write_command_with_opts
     (client : access mongoc_client_t;
      db_name : Interfaces.C.Strings.chars_ptr;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_write_command_with_opts";

   function mongoc_client_read_write_command_with_opts
     (client : access mongoc_client_t;
      db_name : Interfaces.C.Strings.chars_ptr;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_read_write_command_with_opts";

   function mongoc_client_command_with_opts
     (client : access mongoc_client_t;
      db_name : Interfaces.C.Strings.chars_ptr;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_command_with_opts";

   function mongoc_client_command_simple_with_server_id
     (client : access mongoc_client_t;
      db_name : Interfaces.C.Strings.chars_ptr;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      server_id : Interfaces.Unsigned_32;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_command_simple_with_server_id";

   procedure mongoc_client_destroy (client : access mongoc_client_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_destroy";

   function mongoc_client_start_session
     (client : access mongoc_client_t;
      opts : access constant mongoc_session_opt_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access mongoc_client_session_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_start_session";

   function mongoc_client_get_database (client : access mongoc_client_t; name : Interfaces.C.Strings.chars_ptr) return access libmongoc_1_0_mongoc_mongoc_database_h.u_mongoc_database_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_get_database";

   function mongoc_client_get_default_database (client : access mongoc_client_t) return access libmongoc_1_0_mongoc_mongoc_database_h.u_mongoc_database_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_get_default_database";

   function mongoc_client_get_gridfs
     (client : access mongoc_client_t;
      db : Interfaces.C.Strings.chars_ptr;
      prefix : Interfaces.C.Strings.chars_ptr;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libmongoc_1_0_mongoc_mongoc_gridfs_h.u_mongoc_gridfs_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_get_gridfs";

   function mongoc_client_get_collection
     (client : access mongoc_client_t;
      db : Interfaces.C.Strings.chars_ptr;
      collection : Interfaces.C.Strings.chars_ptr) return access libmongoc_1_0_mongoc_mongoc_collection_h.u_mongoc_collection_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_get_collection";

   function mongoc_client_get_database_names (client : access mongoc_client_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return System.Address  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:204
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_get_database_names";

   function mongoc_client_get_database_names_with_opts
     (client : access mongoc_client_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return System.Address  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_get_database_names_with_opts";

   function mongoc_client_find_databases (client : access mongoc_client_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libmongoc_1_0_mongoc_mongoc_cursor_h.u_mongoc_cursor_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_find_databases";

   function mongoc_client_find_databases_with_opts (client : access mongoc_client_t; opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return access libmongoc_1_0_mongoc_mongoc_cursor_h.u_mongoc_cursor_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_find_databases_with_opts";

   function mongoc_client_get_server_status
     (client : access mongoc_client_t;
      read_prefs : access libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_get_server_status";

   function mongoc_client_get_max_message_size (client : access mongoc_client_t) return Interfaces.Integer_32  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_get_max_message_size";

   function mongoc_client_get_max_bson_size (client : access mongoc_client_t) return Interfaces.Integer_32  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_get_max_bson_size";

   function mongoc_client_get_write_concern (client : access constant mongoc_client_t) return access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_get_write_concern";

   procedure mongoc_client_set_write_concern (client : access mongoc_client_t; write_concern : access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_set_write_concern";

   function mongoc_client_get_read_concern (client : access constant mongoc_client_t) return access constant libmongoc_1_0_mongoc_mongoc_read_concern_h.u_mongoc_read_concern_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_get_read_concern";

   procedure mongoc_client_set_read_concern (client : access mongoc_client_t; read_concern : access constant libmongoc_1_0_mongoc_mongoc_read_concern_h.u_mongoc_read_concern_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_set_read_concern";

   function mongoc_client_get_read_prefs (client : access constant mongoc_client_t) return access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_get_read_prefs";

   procedure mongoc_client_set_read_prefs (client : access mongoc_client_t; read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:242
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_set_read_prefs";

   procedure mongoc_client_set_ssl_opts (client : access mongoc_client_t; opts : access constant libmongoc_1_0_mongoc_mongoc_ssl_h.u_mongoc_ssl_opt_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_set_ssl_opts";

   function mongoc_client_set_apm_callbacks
     (client : access mongoc_client_t;
      callbacks : access libmongoc_1_0_mongoc_mongoc_apm_h.u_mongoc_apm_callbacks_t;
      context : System.Address) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_set_apm_callbacks";

   function mongoc_client_get_server_description (client : access mongoc_client_t; server_id : Interfaces.Unsigned_32) return access libmongoc_1_0_mongoc_mongoc_server_description_h.u_mongoc_server_description_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_get_server_description";

   function mongoc_client_get_server_descriptions (client : access constant mongoc_client_t; n : access size_t) return System.Address  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_get_server_descriptions";

   procedure mongoc_server_descriptions_destroy_all (sds : System.Address; n : size_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:260
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_descriptions_destroy_all";

   function mongoc_client_select_server
     (client : access mongoc_client_t;
      for_writes : Extensions.bool;
      prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libmongoc_1_0_mongoc_mongoc_server_description_h.u_mongoc_server_description_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_select_server";

   function mongoc_client_set_error_api (client : access mongoc_client_t; version : Interfaces.Integer_32) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:268
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_set_error_api";

   function mongoc_client_set_appname (client : access mongoc_client_t; appname : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:270
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_set_appname";

   function mongoc_client_watch
     (client : access mongoc_client_t;
      pipeline : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return access libmongoc_1_0_mongoc_mongoc_change_stream_h.u_mongoc_change_stream_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:272
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_watch";

   procedure mongoc_client_reset (client : access mongoc_client_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:276
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_reset";

   function mongoc_client_enable_auto_encryption
     (client : access mongoc_client_t;
      opts : access libmongoc_1_0_mongoc_mongoc_client_side_encryption_h.u_mongoc_auto_encryption_opts_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_enable_auto_encryption";

   function mongoc_client_set_server_api
     (client : access mongoc_client_t;
      api : access constant libmongoc_1_0_mongoc_mongoc_server_api_h.u_mongoc_server_api_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:284
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_set_server_api";

   function mongoc_client_get_handshake_description
     (client : access mongoc_client_t;
      server_id : Interfaces.Unsigned_32;
      opts : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libmongoc_1_0_mongoc_mongoc_server_description_h.u_mongoc_server_description_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:289
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_get_handshake_description";

end libmongoc_1_0_mongoc_mongoc_client_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
