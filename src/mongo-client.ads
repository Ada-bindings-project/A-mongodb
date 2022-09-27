pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with libmongoc_1_0_mongoc_mongoc_client_side_encryption_h;
with libmongoc_1_0_mongoc_mongoc_bulk_operation_h;
with Mongo.Uris;
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

package mongo.client is

   MONGOC_NAMESPACE_MAX : constant := 128;

   MONGOC_DEFAULT_CONNECTTIMEOUTMS : constant := (10 * 1000);

   MONGOC_DEFAULT_SOCKETTIMEOUTMS : constant := (1000 * 60 * 5);

   subtype mongoc_client_t is libmongoc_1_0_mongoc_mongoc_client_side_encryption_h.u_mongoc_client_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:75
   type Client_T is tagged null record;

   subtype mongoc_client_session_t is libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:78

   type u_mongoc_session_opt_t is null record;   -- incomplete struct

   subtype mongoc_session_opt_t is u_mongoc_session_opt_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:79

   type u_mongoc_transaction_opt_t is null record;   -- incomplete struct

   subtype mongoc_transaction_opt_t is u_mongoc_transaction_opt_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:80

   type mongoc_stream_initiator_t is access function
        (arg1 : Mongo.Uris.uri_t;
         arg2 : access constant libmongoc_1_0_mongoc_mongoc_host_list_h.u_mongoc_host_list_t;
         arg3 : System.Address;
         arg4 : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client.h:98

   function new_Client (uri_string : String) return access mongoc_client_t;

   function new_Client (uri : Mongo.Uris.uri_t) return access mongoc_client_t;

   function new_Client (uri : Mongo.Uris.uri_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access mongoc_client_t;

   function get_uri (client : client_t) return Mongo.Uris.uri_t;

   procedure set_stream_initiator
     (client : in out client_t;
      initiator : mongoc_stream_initiator_t;
      user_data : System.Address);

   function command
     (client : in out client_t;
      db_name : String;
      flags : libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_query_flags_t;
      skip : Interfaces.Unsigned_32;
      limit : Interfaces.Unsigned_32;
      batch_size : Interfaces.Unsigned_32;
      query : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      fields : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t) return access libmongoc_1_0_mongoc_mongoc_cursor_h.u_mongoc_cursor_t;

   procedure kill_cursor (client : in out client_t; cursor_id : Interfaces.Integer_64);

   function command_simple
     (client : in out client_t;
      db_name : String;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Boolean;

   function read_command_with_opts
     (client : in out client_t;
      db_name : String;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Boolean;

   function write_command_with_opts
     (client : in out client_t;
      db_name : String;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Boolean;

   function read_write_command_with_opts
     (client : in out client_t;
      db_name : String;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Boolean;

   function command_with_opts
     (client : in out client_t;
      db_name : String;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Boolean;

   function command_simple_with_server_id
     (client : in out client_t;
      db_name : String;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      server_id : Interfaces.Unsigned_32;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Boolean;

   procedure destroy (client : in out client_t);

   function start_session
     (client : in out client_t;
      opts : access constant mongoc_session_opt_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access mongoc_client_session_t;

   function get_database (client : in out client_t; name : String) return access libmongoc_1_0_mongoc_mongoc_database_h.u_mongoc_database_t;

   function get_default_database (client : in out client_t) return access libmongoc_1_0_mongoc_mongoc_database_h.u_mongoc_database_t;

   function get_gridfs
     (client : in out client_t;
      db : String;
      prefix : String;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libmongoc_1_0_mongoc_mongoc_gridfs_h.u_mongoc_gridfs_t ;

   function get_collection
     (client : in out client_t;
      db : String;
      collection : String) return access libmongoc_1_0_mongoc_mongoc_collection_h.u_mongoc_collection_t;

   function get_database_names (client : in out client_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return System.Address;

   function get_database_names_with_opts
     (client : in out client_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return System.Address;

   function find_databases (client : in out client_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libmongoc_1_0_mongoc_mongoc_cursor_h.u_mongoc_cursor_t;

   function find_databases_with_opts (client : in out client_t; opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return access libmongoc_1_0_mongoc_mongoc_cursor_h.u_mongoc_cursor_t;

   function get_server_status
     (client : in out client_t;
      read_prefs : access libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Boolean;

   function get_max_message_size (client : in out client_t) return Interfaces.Integer_32;

   function get_max_bson_size (client : in out client_t) return Interfaces.Integer_32;

   function get_write_concern (client : client_t) return access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t;

   procedure set_write_concern (client : in out client_t; write_concern : access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t);

   function get_read_concern (client : client_t) return access constant libmongoc_1_0_mongoc_mongoc_read_concern_h.u_mongoc_read_concern_t;

   procedure set_read_concern (client : in out client_t; read_concern : access constant libmongoc_1_0_mongoc_mongoc_read_concern_h.u_mongoc_read_concern_t);

   function get_read_prefs (client : client_t) return access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;

   procedure set_read_prefs (client : in out client_t; read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t);

   procedure set_ssl_opts (client : in out client_t; opts : access constant libmongoc_1_0_mongoc_mongoc_ssl_h.u_mongoc_ssl_opt_t);

   function set_apm_callbacks
     (client : in out client_t;
      callbacks : access libmongoc_1_0_mongoc_mongoc_apm_h.u_mongoc_apm_callbacks_t;
      context : System.Address) return Boolean;

   function get_server_description (client : in out client_t; server_id : Interfaces.Unsigned_32) return access libmongoc_1_0_mongoc_mongoc_server_description_h.u_mongoc_server_description_t;

   function get_server_descriptions (client : client_t; n : access size_t) return System.Address;

   procedure mongoc_server_descriptions_destroy_all (sds : System.Address; n : size_t);

   function select_server
     (client : in out client_t;
      for_writes : Boolean;
      prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libmongoc_1_0_mongoc_mongoc_server_description_h.u_mongoc_server_description_t;

   function set_error_api (client : in out client_t; version : Interfaces.Integer_32) return Boolean;

   function set_appname (client : in out client_t; appname : String) return Boolean;

   function watch
     (client : in out client_t;
      pipeline : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return access libmongoc_1_0_mongoc_mongoc_change_stream_h.u_mongoc_change_stream_t;

   procedure reset (client : in out client_t);

   function enable_auto_encryption
     (client : in out client_t;
      opts : access libmongoc_1_0_mongoc_mongoc_client_side_encryption_h.u_mongoc_auto_encryption_opts_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Boolean;

   function set_server_api
     (client : in out client_t;
      api : access constant libmongoc_1_0_mongoc_mongoc_server_api_h.u_mongoc_server_api_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Boolean;

   function get_handshake_description
     (client : in out client_t;
      server_id : Interfaces.Unsigned_32;
      opts : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libmongoc_1_0_mongoc_mongoc_server_description_h.U_Mongoc_Server_Description_T;

end mongo.client;
