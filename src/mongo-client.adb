pragma Warnings (Off);
package body Mongo.Client is

   ----------------
   -- new_Client --
   ----------------

   function new_Client
     (uri_string : String) return access Mongo.Client.Client_T
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "new_Client unimplemented");
      return raise Program_Error with "Unimplemented function new_Client";
   end new_Client;

   ----------------
   -- new_Client --
   ----------------

   function new_Client (uri : Mongo.URIs.Uri_T) return Mongo.Client.Client_T is
   begin
      pragma Compile_Time_Warning (Standard.True, "new_Client unimplemented");
      return raise Program_Error with "Unimplemented function new_Client";
   end new_Client;

   ----------------
   -- New_Client --
   ----------------

   procedure New_Client
     (Client : in out Mongo.Client.Client_T; Uri : Mongo.URIs.Uri_T)
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "New_Client unimplemented");
      raise Program_Error with "Unimplemented procedure New_Client";
   end New_Client;

   ----------------
   -- new_Client --
   ----------------

   function new_Client
     (uri : Mongo.URIs.Uri_T; error : in out Bson.Errors.Error_T)
      return Mongo.Client.Client_T
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "new_Client unimplemented");
      return raise Program_Error with "Unimplemented function new_Client";
   end new_Client;

   -------------
   -- get_uri --
   -------------

   function get_uri (client : Client_T) return Mongo.URIs.Uri_T is
   begin
      pragma Compile_Time_Warning (Standard.True, "get_uri unimplemented");
      return raise Program_Error with "Unimplemented function get_uri";
   end get_uri;

   --------------------------
   -- set_stream_initiator --
   --------------------------

   procedure set_stream_initiator
     (client    : in out Client_T; initiator : mongoc_stream_initiator_t;
      user_data :        System.Address)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "set_stream_initiator unimplemented");
      raise Program_Error with "Unimplemented procedure set_stream_initiator";
   end set_stream_initiator;

   -------------
   -- command --
   -------------

   function command
     (client     : in out Client_T; db_name : String; flags : Query_Flags_T;
      skip       :        Positive; limit : Positive; batch_size : Positive;
      query      :        Bson.Types.Bson_T; fields : Bson.Types.Bson_T;
      read_prefs :    Mongo.Read_Prefs.Prefs_T) return Mongo.Cursor.Cursor_T
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "command unimplemented");
      return raise Program_Error with "Unimplemented function command";
   end command;

   -----------------
   -- kill_cursor --
   -----------------

   procedure kill_cursor
     (client : in out Client_T; cursor_id : Interfaces.Integer_64)
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "kill_cursor unimplemented");
      raise Program_Error with "Unimplemented procedure kill_cursor";
   end kill_cursor;

   --------------------
   -- command_simple --
   --------------------

   function command_simple
     (client : in out Client_T; db_name : String; command : Bson.Types.Bson_T;
      read_prefs : Mongo.Read_Prefs.Prefs_T; reply : in out Bson.Types.Bson_T;
      error      : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "command_simple unimplemented");
      return raise Program_Error with "Unimplemented function command_simple";
   end command_simple;

   --------------------
   -- command_simple --
   --------------------

   procedure command_simple
     (client : in out Client_T; db_name : String; command : Bson.Types.Bson_T;
      read_prefs : Mongo.Read_Prefs.Prefs_T; reply : in out Bson.Types.Bson_T;
      error      : in out Bson.Errors.Error_T)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "command_simple unimplemented");
      raise Program_Error with "Unimplemented procedure command_simple";
   end command_simple;

   ----------------------------
   -- read_command_with_opts --
   ----------------------------

   function read_command_with_opts
     (client : in out Client_T; db_name : String; command : Bson.Types.Bson_T;
      read_prefs :        Mongo.Read_Prefs.Prefs_T; opts : Bson.Types.Bson_T;
      reply : in out Bson.Types.Bson_T; error : in out Bson.Errors.Error_T)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "read_command_with_opts unimplemented");
      return
        raise Program_Error
          with "Unimplemented function read_command_with_opts";
   end read_command_with_opts;

   -----------------------------
   -- write_command_with_opts --
   -----------------------------

   function write_command_with_opts
     (client : in out Client_T; db_name : String; command : Bson.Types.Bson_T;
      opts   :        Bson.Types.Bson_T; reply : in out Bson.Types.Bson_T;
      error  : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "write_command_with_opts unimplemented");
      return
        raise Program_Error
          with "Unimplemented function write_command_with_opts";
   end write_command_with_opts;

   ----------------------------------
   -- read_write_command_with_opts --
   ----------------------------------

   function read_write_command_with_opts
     (client : in out Client_T; db_name : String; command : Bson.Types.Bson_T;
      read_prefs :        Mongo.Read_Prefs.Prefs_T; opts : Bson.Types.Bson_T;
      reply : in out Bson.Types.Bson_T; error : in out Bson.Errors.Error_T)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "read_write_command_with_opts unimplemented");
      return
        raise Program_Error
          with "Unimplemented function read_write_command_with_opts";
   end read_write_command_with_opts;

   -----------------------
   -- command_with_opts --
   -----------------------

   function command_with_opts
     (client : in out Client_T; db_name : String; command : Bson.Types.Bson_T;
      read_prefs :        Mongo.Read_Prefs.Prefs_T; opts : Bson.Types.Bson_T;
      reply : in out Bson.Types.Bson_T; error : in out Bson.Errors.Error_T)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "command_with_opts unimplemented");
      return
        raise Program_Error with "Unimplemented function command_with_opts";
   end command_with_opts;

   -----------------------------------
   -- command_simple_with_server_id --
   -----------------------------------

   function command_simple_with_server_id
     (client : in out Client_T; db_name : String; command : Bson.Types.Bson_T;
      read_prefs :        Mongo.Read_Prefs.Prefs_T; server_id : Positive;
      reply : in out Bson.Types.Bson_T; error : in out Bson.Errors.Error_T)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "command_simple_with_server_id unimplemented");
      return
        raise Program_Error
          with "Unimplemented function command_simple_with_server_id";
   end command_simple_with_server_id;

   -------------
   -- destroy --
   -------------

   procedure destroy (client : in out Client_T) is
   begin
      pragma Compile_Time_Warning (Standard.True, "destroy unimplemented");
      raise Program_Error with "Unimplemented procedure destroy";
   end destroy;

   -------------------
   -- start_session --
   -------------------

   function start_session
     (client : in out Client_T; opts : access constant mongoc_session_opt_t;
      error : in out Bson.Errors.Error_T) return access mongoc_client_session_t
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "start_session unimplemented");
      return raise Program_Error with "Unimplemented function start_session";
   end start_session;

   ------------------
   -- Get_Database --
   ------------------

   function Get_Database
     (Client : in out Client_T; Name : String) return Database.Database_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Database unimplemented");
      return raise Program_Error with "Unimplemented function Get_Database";
   end Get_Database;

   --------------------------
   -- get_default_database --
   --------------------------

   function get_default_database
     (client : in out Client_T) return Database.Database_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_default_database unimplemented");
      return
        raise Program_Error with "Unimplemented function get_default_database";
   end get_default_database;

   ----------------
   -- get_gridfs --
   ----------------

   function get_gridfs
     (client : in out Client_T; db : String; prefix : String;
      error  : in out Bson.Errors.Error_T)
      return access libmongoc_1_0_mongoc_mongoc_gridfs_h.u_mongoc_gridfs_t
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "get_gridfs unimplemented");
      return raise Program_Error with "Unimplemented function get_gridfs";
   end get_gridfs;

   --------------------
   -- get_collection --
   --------------------

   function get_collection
     (client : in out Client_T; db : String; Collection : String)
      return Mongo.Collection.Collection_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_collection unimplemented");
      return raise Program_Error with "Unimplemented function get_collection";
   end get_collection;

   ------------------------
   -- get_database_names --
   ------------------------

   function get_database_names
     (client : in out Client_T; error : in out Bson.Errors.Error_T)
      return System.Address
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_database_names unimplemented");
      return
        raise Program_Error with "Unimplemented function get_database_names";
   end get_database_names;

   ----------------------------------
   -- get_database_names_with_opts --
   ----------------------------------

   function get_database_names_with_opts
     (client : in out Client_T; opts : Bson.Types.Bson_T;
      error  : in out Bson.Errors.Error_T) return System.Address
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_database_names_with_opts unimplemented");
      return
        raise Program_Error
          with "Unimplemented function get_database_names_with_opts";
   end get_database_names_with_opts;

   --------------------
   -- find_databases --
   --------------------

   function find_databases
     (client : in out Client_T; error : in out Bson.Errors.Error_T)
      return Mongo.Cursor.Cursor_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "find_databases unimplemented");
      return raise Program_Error with "Unimplemented function find_databases";
   end find_databases;

   ------------------------------
   -- find_databases_with_opts --
   ------------------------------

   function find_databases_with_opts
     (client : in out Client_T; opts : Bson.Types.Bson_T)
      return Mongo.Cursor.Cursor_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "find_databases_with_opts unimplemented");
      return
        raise Program_Error
          with "Unimplemented function find_databases_with_opts";
   end find_databases_with_opts;

   -----------------------
   -- get_server_status --
   -----------------------

   function get_server_status
     (client     : in out Client_T;
      read_prefs :        access libmongoc_1_0_mongoc_mongoc_read_prefs_h
        .u_mongoc_read_prefs_t;
      reply : in out Bson.Types.Bson_T; error : in out Bson.Errors.Error_T)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_server_status unimplemented");
      return
        raise Program_Error with "Unimplemented function get_server_status";
   end get_server_status;

   --------------------------
   -- get_max_message_size --
   --------------------------

   function get_max_message_size (client : in out Client_T) return Integer is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_max_message_size unimplemented");
      return
        raise Program_Error with "Unimplemented function get_max_message_size";
   end get_max_message_size;

   -----------------------
   -- get_max_bson_size --
   -----------------------

   function get_max_bson_size (client : in out Client_T) return Integer is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_max_bson_size unimplemented");
      return
        raise Program_Error with "Unimplemented function get_max_bson_size";
   end get_max_bson_size;

   -----------------------
   -- get_write_concern --
   -----------------------

   function get_write_concern
     (client : Client_T)
      return access constant libmongoc_1_0_mongoc_mongoc_write_concern_h
     .u_mongoc_write_concern_t
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_write_concern unimplemented");
      return
        raise Program_Error with "Unimplemented function get_write_concern";
   end get_write_concern;

   -----------------------
   -- set_write_concern --
   -----------------------

   procedure set_write_concern
     (client        : in out Client_T;
      write_concern :        Mongo.Write_Concerns.Write_Concern_T)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "set_write_concern unimplemented");
      raise Program_Error with "Unimplemented procedure set_write_concern";
   end set_write_concern;

   ----------------------
   -- get_read_concern --
   ----------------------

   function get_read_concern
     (client : Client_T)
      return access constant libmongoc_1_0_mongoc_mongoc_read_concern_h
     .u_mongoc_read_concern_t
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_read_concern unimplemented");
      return
        raise Program_Error with "Unimplemented function get_read_concern";
   end get_read_concern;

   ----------------------
   -- set_read_concern --
   ----------------------

   procedure set_read_concern
     (client       : in out Client_T;
      read_concern : access constant libmongoc_1_0_mongoc_mongoc_read_concern_h
        .u_mongoc_read_concern_t)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "set_read_concern unimplemented");
      raise Program_Error with "Unimplemented procedure set_read_concern";
   end set_read_concern;

   --------------------
   -- get_read_prefs --
   --------------------

   function get_read_prefs (client : Client_T) return Mongo.Read_Prefs.Prefs_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_read_prefs unimplemented");
      return raise Program_Error with "Unimplemented function get_read_prefs";
   end get_read_prefs;

   --------------------
   -- set_read_prefs --
   --------------------

   procedure set_read_prefs
     (client : in out Client_T; read_prefs : Mongo.Read_Prefs.Prefs_T)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "set_read_prefs unimplemented");
      raise Program_Error with "Unimplemented procedure set_read_prefs";
   end set_read_prefs;

   ------------------
   -- set_ssl_opts --
   ------------------

   procedure set_ssl_opts
     (client : in out Client_T;
      opts   :        access constant libmongoc_1_0_mongoc_mongoc_ssl_h
        .u_mongoc_ssl_opt_t)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "set_ssl_opts unimplemented");
      raise Program_Error with "Unimplemented procedure set_ssl_opts";
   end set_ssl_opts;

   -----------------------
   -- set_apm_callbacks --
   -----------------------

   function set_apm_callbacks
     (client    : in out Client_T;
      callbacks :        access libmongoc_1_0_mongoc_mongoc_apm_h
        .u_mongoc_apm_callbacks_t;
      context : System.Address) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "set_apm_callbacks unimplemented");
      return
        raise Program_Error with "Unimplemented function set_apm_callbacks";
   end set_apm_callbacks;

   ----------------------------
   -- get_server_description --
   ----------------------------

   function get_server_description
     (client : in out Client_T; server_id : Positive)
      return access libmongoc_1_0_mongoc_mongoc_server_description_h
     .u_mongoc_server_description_t
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_server_description unimplemented");
      return
        raise Program_Error
          with "Unimplemented function get_server_description";
   end get_server_description;

   -----------------------------
   -- get_server_descriptions --
   -----------------------------

   function get_server_descriptions
     (client : Client_T; n : access size_t) return System.Address
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_server_descriptions unimplemented");
      return
        raise Program_Error
          with "Unimplemented function get_server_descriptions";
   end get_server_descriptions;

   --------------------------------------------
   -- mongoc_server_descriptions_destroy_all --
   --------------------------------------------

   procedure mongoc_server_descriptions_destroy_all
     (sds : System.Address; n : size_t)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True,
         "mongoc_server_descriptions_destroy_all unimplemented");
      raise Program_Error
        with "Unimplemented procedure mongoc_server_descriptions_destroy_all";
   end mongoc_server_descriptions_destroy_all;

   -------------------
   -- select_server --
   -------------------

   function select_server
     (client : in out Client_T; for_writes : Boolean;
      prefs  :    Mongo.Read_Prefs.Prefs_T; error : in out Bson.Errors.Error_T)
      return access libmongoc_1_0_mongoc_mongoc_server_description_h
     .u_mongoc_server_description_t
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "select_server unimplemented");
      return raise Program_Error with "Unimplemented function select_server";
   end select_server;

   -------------------
   -- set_error_api --
   -------------------

   function set_error_api
     (client : in out Client_T; version : Integer) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "set_error_api unimplemented");
      return raise Program_Error with "Unimplemented function set_error_api";
   end set_error_api;

   -----------------
   -- set_appname --
   -----------------

   function set_appname
     (client : in out Client_T; appname : String) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "set_appname unimplemented");
      return raise Program_Error with "Unimplemented function set_appname";
   end set_appname;

   -----------------
   -- set_appname --
   -----------------

   procedure set_appname (client : in out Client_T; appname : String) is
   begin
      pragma Compile_Time_Warning (Standard.True, "set_appname unimplemented");
      raise Program_Error with "Unimplemented procedure set_appname";
   end set_appname;

   -----------
   -- watch --
   -----------

   function watch
     (client : in out Client_T; pipeline : Bson.Types.Bson_T;
      opts   :        Bson.Types.Bson_T)
      return access libmongoc_1_0_mongoc_mongoc_change_stream_h
     .u_mongoc_change_stream_t
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "watch unimplemented");
      return raise Program_Error with "Unimplemented function watch";
   end watch;

   -----------
   -- reset --
   -----------

   procedure reset (client : in out Client_T) is
   begin
      pragma Compile_Time_Warning (Standard.True, "reset unimplemented");
      raise Program_Error with "Unimplemented procedure reset";
   end reset;

   ----------------------------
   -- enable_auto_encryption --
   ----------------------------

   function enable_auto_encryption
     (client : in out Client_T;
      opts   :    access libmongoc_1_0_mongoc_mongoc_client_side_encryption_h
        .u_mongoc_auto_encryption_opts_t;
      error : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "enable_auto_encryption unimplemented");
      return
        raise Program_Error
          with "Unimplemented function enable_auto_encryption";
   end enable_auto_encryption;

   --------------------
   -- set_server_api --
   --------------------

   function set_server_api
     (client : in out Client_T;
      api    :        access constant libmongoc_1_0_mongoc_mongoc_server_api_h
        .u_mongoc_server_api_t;
      error : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "set_server_api unimplemented");
      return raise Program_Error with "Unimplemented function set_server_api";
   end set_server_api;

   -------------------------------
   -- get_handshake_description --
   -------------------------------

   function get_handshake_description
     (client : in out Client_T; server_id : Positive;
      opts   : in out Bson.Types.Bson_T; error : in out Bson.Errors.Error_T)
      return access libmongoc_1_0_mongoc_mongoc_server_description_h
     .U_Mongoc_Server_Description_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_handshake_description unimplemented");
      return
        raise Program_Error
          with "Unimplemented function get_handshake_description";
   end get_handshake_description;

   ----------------------------
   -- New_From_Command_Reply --
   ----------------------------

   function New_From_Command_Reply
     (client    : Client_T; reply : in out Bson.Types.Bson_T;
      server_id : Positive) return Mongo.Cursor.Cursor_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "New_From_Command_Reply unimplemented");
      return
        raise Program_Error
          with "Unimplemented function New_From_Command_Reply";
   end New_From_Command_Reply;

   --------------------------------------
   -- new_from_command_reply_with_opts --
   --------------------------------------

   function new_from_command_reply_with_opts
     (client : Mongo.Client.Client_T; reply : in out Bson.Types.Bson_T;
      opts   : Bson.Types.Bson_T) return Mongo.Cursor.Cursor_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "new_from_command_reply_with_opts unimplemented");
      return
        raise Program_Error
          with "Unimplemented function new_from_command_reply_with_opts";
   end new_from_command_reply_with_opts;

end Mongo.Client;
