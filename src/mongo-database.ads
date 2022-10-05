limited with Libmongoc_1_0_Mongoc_Mongoc_Read_Concern_H;
with System;
limited with Libmongoc_1_0_Mongoc_Mongoc_Change_Stream_H;
with Bson.Errors;
with Bson.Types;
with Mongo.Collection;
with Mongo.Read_Prefs;
with Mongo.Cursor;
with Mongo.Write_Concerns;
private with libmongoc_1_0_mongoc_mongoc_database_h;
package Mongo.Database is

   type Database_T is tagged private;   -- incomplete struct

   function Get_Name (Database : in out Database_T) return String;

   function Remove_User
     (Database : in out Database_T;
      Username : String;
      Error    : in out  Bson.Errors.Error_T) return Boolean;

   function Remove_All_Users
     (Database : in out Database_T;
      Error    : in out  Bson.Errors.Error_T) return Boolean;

   function Add_User
     (Database    : in out Database_T;
      Username    : String;
      Password    : String;
      Roles       : Bson.Types.Bson_T;
      Custom_Data : Bson.Types.Bson_T;
      Error       : in out  Bson.Errors.Error_T) return Boolean;

   procedure Destroy (Database : in out Database_T);

   function Aggregate
     (Db         : in out Database_T;
      Pipeline   : Bson.Types.Bson_T;
      Opts       : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T) return Mongo.Cursor.Cursor_T;

   function Copy (Database : in out Database_T) return  Database_T;

   function Command
     (Database   : in out Database_T;
      Flags      : Query_Flags_T;
      Skip       : Natural;
      Limit      : Natural;
      Batch_Size : Natural;
      Command    : Bson.Types.Bson_T;
      Fields     : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T) return Mongo.Cursor.Cursor_T;

   function Read_Command_With_Opts
     (Database   : in out Database_T;
      Command    : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T;
      Opts       : Bson.Types.Bson_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out  Bson.Errors.Error_T) return Boolean;

   function Write_Command_With_Opts
     (Database : in out Database_T;
      Command  : Bson.Types.Bson_T;
      Opts     : Bson.Types.Bson_T;
      Reply    : in out Bson.Types.Bson_T;
      Error    : in out  Bson.Errors.Error_T) return Boolean;

   function Read_Write_Command_With_Opts
     (Database   : in out Database_T;
      Command    : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T;
      Opts       : Bson.Types.Bson_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out  Bson.Errors.Error_T) return Boolean;

   function Command_With_Opts
     (Database   : in out Database_T;
      Command    : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T;
      Opts       : Bson.Types.Bson_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out  Bson.Errors.Error_T) return Boolean;

   function Command_Simple
     (Database   : in out Database_T;
      Command    : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out  Bson.Errors.Error_T) return Boolean;

   function Drop (Database : in out Database_T; Error : in out  Bson.Errors.Error_T) return Boolean;

   function Drop_With_Opts
     (Database : in out Database_T;
      Opts     : Bson.Types.Bson_T;
      Error    : in out  Bson.Errors.Error_T) return Boolean;

   function Has_Collection
     (Database : in out Database_T;
      Name     : String;
      Error    : in out  Bson.Errors.Error_T) return Boolean;

   function Create_Collection
     (Database : in out Database_T;
      Name     : String;
      Options  : Bson.Types.Bson_T;
      Error    : in out  Bson.Errors.Error_T) return Mongo.Collection.Collection_T;

   function Get_Read_Prefs (Database : Database_T) return Mongo.Read_Prefs.Prefs_T;

   procedure Set_Read_Prefs (Database : in out Database_T; Read_Prefs : Mongo.Read_Prefs.Prefs_T);

   function Get_Write_Concern (Database : Database_T) return Mongo.Write_Concerns.Write_Concern_T;

   procedure Set_Write_Concern (Database : in out Database_T; Write_Concern : Mongo.Write_Concerns.Write_Concern_T);

   function Get_Read_Concern (Database : Database_T) return access constant libmongoc_1_0_mongoc_mongoc_read_concern_h.U_Mongoc_Read_Concern_T;

   procedure Set_Read_Concern (Database : in out Database_T; Read_Concern : access constant libmongoc_1_0_mongoc_mongoc_read_concern_h.U_Mongoc_Read_Concern_T);

   function Find_Collections
     (Database : in out Database_T;
      Filter   : Bson.Types.Bson_T;
      Error    : in out  Bson.Errors.Error_T) return Mongo.Cursor.Cursor_T;

   function Find_Collections_With_Opts (Database : in out Database_T; Opts : Bson.Types.Bson_T) return Mongo.Cursor.Cursor_T;

   function Get_Collection_Names (Database : in out Database_T; Error : in out  Bson.Errors.Error_T) return System.Address;

   function Get_Collection_Names_With_Opts
     (Database : in out Database_T;
      Opts     : Bson.Types.Bson_T;
      Error    : in out  Bson.Errors.Error_T) return System.Address;

   function Get_Collection (Database : in out Database_T; Name : String) return Mongo.Collection.Collection_T;

   function Watch
     (Db       : Database_T;
      Pipeline : Bson.Types.Bson_T;
      Opts     : Bson.Types.Bson_T) return access libmongoc_1_0_mongoc_mongoc_change_stream_h.U_Mongoc_Change_Stream_T;

private
   type U_Mongoc_Database_T_Access is access all  libmongoc_1_0_mongoc_mongoc_database_h.u_mongoc_database_t with Storage_Size => 0;

   type Database_T is new Ada.Finalization.Controlled with record
      Imp : U_Mongoc_Database_T_Access;
   end record;
   overriding procedure Initialize (Db : in out Database_T);
   overriding procedure Adjust     (Db : in out Database_T);
   overriding procedure Finalize   (Db : in out Database_T);

end Mongo.Database;
