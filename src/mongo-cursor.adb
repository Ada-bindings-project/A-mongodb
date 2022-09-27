pragma Ada_2012;
package body mongo.cursor is

   ----------
   -- more --
   ----------

   function more (cursor : in out cursor_t) return Boolean is
   begin
      pragma Compile_Time_Warning (Standard.True, "more unimplemented");
      return raise Program_Error with "Unimplemented function more";
   end more;

   ----------
   -- next --
   ----------

   function next
     (cursor : in out cursor_t; bson : System.Address) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "next unimplemented");
      return raise Program_Error with "Unimplemented function next";
   end next;

   -----------
   -- error --
   -----------

   function error
     (cursor : in out cursor_t; error : bson.Errors.error_t) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "error unimplemented");
      return raise Program_Error with "Unimplemented function error";
   end error;

   --------------------
   -- error_document --
   --------------------

   function error_document
     (cursor : in out cursor_t; error : bson.Errors.error_t;
      doc    :        System.Address) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "error_document unimplemented");
      return raise Program_Error with "Unimplemented function error_document";
   end error_document;

   --------------
   -- get_host --
   --------------

   procedure get_host
     (cursor : in out cursor_t; Host : out Mongo.Host_Lists.Host_List_T)
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "get_host unimplemented");
      raise Program_Error with "Unimplemented procedure get_host";
   end get_host;

   --------------
   -- is_alive --
   --------------

   function is_alive (cursor : cursor_t) return Boolean is
   begin
      pragma Compile_Time_Warning (Standard.True, "is_alive unimplemented");
      return raise Program_Error with "Unimplemented function is_alive";
   end is_alive;

   -------------
   -- current --
   -------------

   function current
     (cursor : cursor_t)
      return access constant libbson_1_0_bson_bson_types_h.u_bson_t
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "current unimplemented");
      return raise Program_Error with "Unimplemented function current";
   end current;

   --------------------
   -- set_batch_size --
   --------------------

   procedure set_batch_size
     (cursor : in out cursor_t; batch_size : Interfaces.Unsigned_32)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "set_batch_size unimplemented");
      raise Program_Error with "Unimplemented procedure set_batch_size";
   end set_batch_size;

   --------------------
   -- get_batch_size --
   --------------------

   function get_batch_size (cursor : cursor_t) return Interfaces.Unsigned_32 is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_batch_size unimplemented");
      return raise Program_Error with "Unimplemented function get_batch_size";
   end get_batch_size;

   ---------------
   -- set_limit --
   ---------------

   function set_limit
     (cursor : in out cursor_t; limit : Interfaces.Integer_64) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "set_limit unimplemented");
      return raise Program_Error with "Unimplemented function set_limit";
   end set_limit;

   ---------------
   -- get_limit --
   ---------------

   function get_limit (cursor : cursor_t) return Interfaces.Integer_64 is
   begin
      pragma Compile_Time_Warning (Standard.True, "get_limit unimplemented");
      return raise Program_Error with "Unimplemented function get_limit";
   end get_limit;

   --------------
   -- set_hint --
   --------------

   function set_hint
     (cursor : in out cursor_t; server_id : Interfaces.Unsigned_32)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "set_hint unimplemented");
      return raise Program_Error with "Unimplemented function set_hint";
   end set_hint;

   --------------
   -- get_hint --
   --------------

   function get_hint (cursor : cursor_t) return Interfaces.Unsigned_32 is
   begin
      pragma Compile_Time_Warning (Standard.True, "get_hint unimplemented");
      return raise Program_Error with "Unimplemented function get_hint";
   end get_hint;

   ------------
   -- get_id --
   ------------

   function get_id (cursor : cursor_t) return Interfaces.Integer_64 is
   begin
      pragma Compile_Time_Warning (Standard.True, "get_id unimplemented");
      return raise Program_Error with "Unimplemented function get_id";
   end get_id;

   -------------------------
   -- set_max_await_times --
   -------------------------

   procedure set_max_await_times
     (cursor : in out cursor_t; max_await_times : Duration)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "set_max_await_times unimplemented");
      raise Program_Error with "Unimplemented procedure set_max_await_times";
   end set_max_await_times;

   -------------------------
   -- get_max_await_times --
   -------------------------

   function get_max_await_times (cursor : cursor_t) return Duration is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_max_await_times unimplemented");
      return
        raise Program_Error with "Unimplemented function get_max_await_times";
   end get_max_await_times;

   ----------------------------
   -- new_from_command_reply --
   ----------------------------

   function new_from_command_reply
     (client    : mongo.client.client_t;
      reply     : access libbson_1_0_bson_bson_types_h.u_bson_t;
      server_id : Interfaces.Unsigned_32) return cursor_t
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "new_from_command_reply unimplemented");
      return
        raise Program_Error
          with "Unimplemented function new_from_command_reply";
   end new_from_command_reply;

   --------------------------------------
   -- new_from_command_reply_with_opts --
   --------------------------------------

   function new_from_command_reply_with_opts
     (client : mongo.client.client_t;
      reply  : access libbson_1_0_bson_bson_types_h.u_bson_t;
      opts   : access constant libbson_1_0_bson_bson_types_h.u_bson_t)
      return cursor_t
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "new_from_command_reply_with_opts unimplemented");
      return
        raise Program_Error
          with "Unimplemented function new_from_command_reply_with_opts";
   end new_from_command_reply_with_opts;

   ------------
   -- Adjust --
   ------------

   procedure Adjust (Object : in out Cursor_T) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Adjust unimplemented");
      raise Program_Error with "Unimplemented procedure Adjust";
   end Adjust;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Object : in out Cursor_T) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Finalize unimplemented");
      raise Program_Error with "Unimplemented procedure Finalize";
   end Finalize;

end mongo.cursor;
