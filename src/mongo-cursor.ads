with System;
with Mongo.Host_Lists;
with Bson.Errors;
with Bson.Types;
private with libmongoc_1_0_mongoc_mongoc_cursor_h;

package Mongo.Cursor is

   type Cursor_T is tagged private;

   function More (Cursor : in out Cursor_T) return Boolean;

   function Next (Cursor : in out Cursor_T; Bson : System.Address) return Boolean;

   function Error (Cursor : in out Cursor_T; Error : Bson.Errors.Error_T) return Boolean;

   function Error_Document
     (Cursor : in out Cursor_T;
      Error  : Bson.Errors.Error_T;
      Doc    : System.Address) return Boolean;

   procedure Get_Host (Cursor : in out Cursor_T;
                       Host   : out Mongo.Host_Lists.Host_List_T);

   function Is_Alive (Cursor : Cursor_T) return Boolean;

   function Current (Cursor : Cursor_T) return Bson.Types.Bson_T;

   procedure Set_Batch_Size (Cursor : in out Cursor_T; Batch_Size : Positive);

   function Get_Batch_Size (Cursor : Cursor_T) return Positive;

   function Set_Limit (Cursor : in out Cursor_T; Limit : Long_Long_Integer) return Boolean;

   function Get_Limit (Cursor : Cursor_T) return Long_Long_Integer;

   function Set_Hint (Cursor : in out Cursor_T; Server_Id : Positive) return Boolean;

   function Get_Hint (Cursor : Cursor_T) return Positive;

   function Get_Id (Cursor : Cursor_T) return Long_Long_Integer;

   procedure Set_Max_Await_Times (Cursor : in out Cursor_T; Max_Await_Times : Duration);

   function Get_Max_Await_Times (Cursor : Cursor_T) return Duration;

private
   type Mongoc_Cursor_T_Access is access all libmongoc_1_0_mongoc_mongoc_cursor_h.mongoc_cursor_t with Storage_Size =>  0;
   type Cursor_T is new Ada.Finalization.Controlled with record
      Impl : Mongoc_Cursor_T_Access;
   end record;
   overriding procedure Initialize (Cursor : in out Cursor_T) is null;
   overriding procedure Adjust     (Cursor : in out Cursor_T);
   overriding procedure Finalize   (Cursor : in out Cursor_T);
end Mongo.Cursor;
