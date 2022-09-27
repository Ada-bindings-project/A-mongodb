with Interfaces.C; use Interfaces.C;
with System;
limited with libbson_1_0_bson_bson_types_h;


with Mongo.Client;
with Mongo.Host_Lists;
with Bson.Errors;
private with Libmongoc_1_0_Mongoc_Mongoc_Cursor_H;

package mongo.cursor is

   type Cursor_T is tagged private;


   function more (cursor : in out cursor_t) return Boolean;

   function next (cursor : in out cursor_t; bson : System.Address) return Boolean;

   function error (cursor : in out cursor_t; error : bson.Errors.error_t) return Boolean;

   function error_document
     (cursor : in out cursor_t;
      error : bson.Errors.error_t;
      doc : System.Address) return Boolean;

   procedure get_host (cursor : in out cursor_t;
                       Host   : out Mongo.Host_Lists.Host_List_T);

   function is_alive (cursor : cursor_t) return Boolean;

   function current (cursor : cursor_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t;

   procedure set_batch_size (cursor : in out cursor_t; batch_size : Interfaces.Unsigned_32);

   function get_batch_size (cursor : cursor_t) return Interfaces.Unsigned_32;

   function set_limit (cursor : in out cursor_t; limit : Interfaces.Integer_64) return Boolean;

   function get_limit (cursor : cursor_t) return Interfaces.Integer_64;

   function set_hint (cursor : in out cursor_t; server_id : Interfaces.Unsigned_32) return Boolean;

   function get_hint (cursor : cursor_t) return Interfaces.Unsigned_32;

   function get_id (cursor : cursor_t) return Interfaces.Integer_64;

   procedure set_max_await_times (cursor : in out cursor_t; max_await_times : Duration);

   function get_max_await_times (cursor : cursor_t) return Duration;

   function new_from_command_reply
     (client : mongo.client.client_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      server_id : Interfaces.Unsigned_32) return cursor_t;

   function new_from_command_reply_with_opts
     (client : mongo.client.client_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return cursor_t;
private
   type Mongoc_Cursor_T_Access is access all Libmongoc_1_0_Mongoc_Mongoc_Cursor_H.Mongoc_Cursor_T with Storage_Size =>  0;
   type Cursor_T is new Ada.Finalization.Controlled with record
         Impl : Mongoc_Cursor_T_Access;
   end record;
   procedure Initialize (Object : in out Cursor_T) is null;
   procedure Adjust     (Object : in out Cursor_T);
   procedure Finalize   (Object : in out Cursor_T);

   -- function clone (cursor : cursor_t) return cursor_t;

   -- procedure destroy (cursor : in out cursor_t);

end mongo.cursor;
