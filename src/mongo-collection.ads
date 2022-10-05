with Interfaces.C; use Interfaces.C;
with libmongoc_1_0_mongoc_mongoc_flags_h;

limited with Libmongoc_1_0_Mongoc_Mongoc_Index_H;
limited with Libmongoc_1_0_Mongoc_Mongoc_Write_Concern_H;
with System;

limited with Libmongoc_1_0_Mongoc_Mongoc_Find_And_Modify_H;
limited with Libmongoc_1_0_Mongoc_Mongoc_Bulk_Operation_H;
limited with Libmongoc_1_0_Mongoc_Mongoc_Read_Concern_H;
limited with Libmongoc_1_0_Mongoc_Mongoc_Change_Stream_H;
with Bson.Types;
with Bson.Errors;
with Mongo.Read_Prefs;
with Mongo.Cursor;
with Mongo.Write_Concerns;
package Mongo.Collection is

   --  type u_mongoc_collection_t is null record;   -- incomplete struct
   type Collection_T is tagged private;

   function Aggregate
     (Collection : Collection_T;
      Flags      : Query_Flags_T;
      Pipeline   : Bson.Types.Bson_T;
      Opts       : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T) return Mongo.Cursor.Cursor_T;

   procedure Mongoc_Collection_Destroy (Collection : Collection_T);

   function Copy (Collection : Collection_T) return Collection_T;

   function Command
     (Collection : Collection_T;
      Flags      : Query_Flags_T;
      Skip       : Positive;
      Limit      : Positive;
      Batch_Size : Positive;
      Command    : Bson.Types.Bson_T;
      Fields     : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T) return Mongo.Cursor.Cursor_T;

   function Read_Command_With_Opts
     (Collection : Collection_T;
      Command    : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T;
      Opts       : Bson.Types.Bson_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   function Write_Command_With_Opts
     (Collection : Collection_T;
      Command    : Bson.Types.Bson_T;
      Opts       : Bson.Types.Bson_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   function Read_Write_Command_With_Opts
     (Collection : Collection_T;
      Command    : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T;
      Opts       : Bson.Types.Bson_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   function Command_With_Opts
     (Collection : Collection_T;
      Command    : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T;
      Opts       : Bson.Types.Bson_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   function Command_Simple
     (Collection : Collection_T;
      Command    : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   function Count
     (Collection : Collection_T;
      Flags      : Query_Flags_T;
      Query      : Bson.Types.Bson_T;
      Skip       : Interfaces.Integer_64;
      Limit      : Interfaces.Integer_64;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T;
      Error      : in out Bson.Errors.Error_T) return Interfaces.Integer_64;

   function Count_With_Opts
     (Collection : Collection_T;
      Flags      : Query_Flags_T;
      Query      : Bson.Types.Bson_T;
      Skip       : Interfaces.Integer_64;
      Limit      : Interfaces.Integer_64;
      Opts       : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T;
      Error      : in out Bson.Errors.Error_T) return Interfaces.Integer_64;

   function Drop (Collection : Collection_T; Error : in out Bson.Errors.Error_T) return Boolean;

   function Drop_With_Opts
     (Collection : Collection_T;
      Opts       : Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   function Drop_Index
     (Collection : Collection_T;
      Index_Name : String;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   function Drop_Index_With_Opts
     (Collection : Collection_T;
      Index_Name : String;
      Opts       : Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   function Create_Index
     (Collection : Collection_T;
      Keys       : Bson.Types.Bson_T;
      Opt        : access constant libmongoc_1_0_mongoc_mongoc_index_h.Mongoc_Index_Opt_T;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   function Create_Index_With_Opts
     (Collection : Collection_T;
      Keys       : Bson.Types.Bson_T;
      Opt        : access constant libmongoc_1_0_mongoc_mongoc_index_h.Mongoc_Index_Opt_T;
      Opts       : Bson.Types.Bson_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   function Ensure_Index
     (Collection : Collection_T;
      Keys       : Bson.Types.Bson_T;
      Opt        : access constant libmongoc_1_0_mongoc_mongoc_index_h.Mongoc_Index_Opt_T;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   function Find_Indexes (Collection : Collection_T; Error : in out Bson.Errors.Error_T) return Mongo.Cursor.Cursor_T;

   function Find_Indexes_With_Opts (Collection : Collection_T; Opts : Bson.Types.Bson_T) return Mongo.Cursor.Cursor_T;

   function Find
     (Collection : Collection_T;
      Flags      : Query_Flags_T;
      Skip       : Positive;
      Limit      : Positive;
      Batch_Size : Positive;
      Query      : Bson.Types.Bson_T;
      Fields     : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T) return Mongo.Cursor.Cursor_T;

   function Find_With_Opts
     (Collection : Collection_T;
      Filter     : Bson.Types.Bson_T;
      Opts       : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T) return Mongo.Cursor.Cursor_T;

   function Insert
     (Collection    : Collection_T;
      Flags         : libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_insert_flags_t;
      Document      : Bson.Types.Bson_T;
      Write_Concern : access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.U_Mongoc_Write_Concern_T;
      Error         : in out Bson.Errors.Error_T) return Boolean;

   function Insert_One
     (Collection : Collection_T;
      Document   : Bson.Types.Bson_T;
      Opts       : Bson.Types.Bson_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   procedure Insert_One
     (Collection : Collection_T;
      Document   : Bson.Types.Bson_T;
      Opts       : Bson.Types.Bson_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T);

   function Insert_Many
     (Collection  : Collection_T;
      Documents   : System.Address;
      N_Documents : size_t;
      Opts        : Bson.Types.Bson_T;
      Reply       : in out Bson.Types.Bson_T;
      Error       : in out Bson.Errors.Error_T) return Boolean;

   function Insert_Bulk
     (Collection    : Collection_T;
      Flags         : libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_insert_flags_t;
      Documents     : System.Address;
      N_Documents   : Positive;
      Write_Concern : Mongo.Write_Concerns.Write_Concern_T;
      Error         : in out Bson.Errors.Error_T) return Boolean;

   function Update
     (Collection    : Collection_T;
      Flags         : libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_update_flags_t;
      Selector      : Bson.Types.Bson_T;
      Update        : Bson.Types.Bson_T;
      Write_Concern : Mongo.Write_Concerns.Write_Concern_T;
      Error         : in out Bson.Errors.Error_T) return Boolean;

   function Update_One
     (Collection : Collection_T;
      Selector   : Bson.Types.Bson_T;
      Update     : Bson.Types.Bson_T;
      Opts       : Bson.Types.Bson_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   function Update_Many
     (Collection : Collection_T;
      Selector   : Bson.Types.Bson_T;
      Update     : Bson.Types.Bson_T;
      Opts       : Bson.Types.Bson_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   function Replace_One
     (Collection  : Collection_T;
      Selector    : Bson.Types.Bson_T;
      Replacement : Bson.Types.Bson_T;
      Opts        : Bson.Types.Bson_T;
      Reply       : in out Bson.Types.Bson_T;
      Error       : in out Bson.Errors.Error_T) return Boolean;

   function Delete
     (Collection    : Collection_T;
      Flags         : libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_delete_flags_t;
      Selector      : Bson.Types.Bson_T;
      Write_Concern : Mongo.Write_Concerns.Write_Concern_T;
      Error         : in out Bson.Errors.Error_T) return Boolean;

   function Save
     (Collection    : Collection_T;
      Document      : Bson.Types.Bson_T;
      Write_Concern : Mongo.Write_Concerns.Write_Concern_T;
      Error         : in out Bson.Errors.Error_T) return Boolean;

   function Remove
     (Collection    : Collection_T;
      Flags         : libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_remove_flags_t;
      Selector      : Bson.Types.Bson_T;
      Write_Concern : Mongo.Write_Concerns.Write_Concern_T;
      Error         : in out Bson.Errors.Error_T) return Boolean;

   function Delete_One
     (Collection : Collection_T;
      Selector   : Bson.Types.Bson_T;
      Opts       : Bson.Types.Bson_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   function Delete_Many
     (Collection : Collection_T;
      Selector   : Bson.Types.Bson_T;
      Opts       : Bson.Types.Bson_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   function Rename
     (Collection                : Collection_T;
      New_Db                    : String;
      New_Name                  : String;
      Drop_Target_Before_Rename : Boolean;
      Error                     : in out Bson.Errors.Error_T) return Boolean;

   function Rename_With_Opts
     (Collection                : Collection_T;
      New_Db                    : String;
      New_Name                  : String;
      Drop_Target_Before_Rename : Boolean;
      Opts                      : Bson.Types.Bson_T;
      Error                     : in out Bson.Errors.Error_T) return Boolean;

   function Find_And_Modify_With_Opts
     (Collection : Collection_T;
      Query      : Bson.Types.Bson_T;
      Opts       : access constant libmongoc_1_0_mongoc_mongoc_find_and_modify_h.U_Mongoc_Find_And_Modify_Opts_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   function Find_And_Modify
     (Collection : Collection_T;
      Query      : Bson.Types.Bson_T;
      Sort       : Bson.Types.Bson_T;
      Update     : Bson.Types.Bson_T;
      Fields     : Bson.Types.Bson_T;
      U_Remove   : Boolean;
      Upsert     : Boolean;
      U_New      : Boolean;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   function Stats
     (Collection : Collection_T;
      Options    : Bson.Types.Bson_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   function Create_Bulk_Operation
     (Collection    : Collection_T;
      Ordered       : Boolean;
      Write_Concern : Mongo.Write_Concerns.Write_Concern_T) return access libmongoc_1_0_mongoc_mongoc_bulk_operation_h.U_Mongoc_Bulk_Operation_T;

   function Create_Bulk_Operation_With_Opts (Collection : Collection_T; Opts : Bson.Types.Bson_T) return access libmongoc_1_0_mongoc_mongoc_bulk_operation_h.U_Mongoc_Bulk_Operation_T;

   function Get_Read_Prefs (Collection : Collection_T) return Mongo.Read_Prefs.Prefs_T;
   function Get1_Read_Prefs (Collection : Collection_T) return Mongo.Read_Prefs.Prefs_T;
--
   procedure Set_Read_Prefs (Collection : Collection_T; Read_Prefs : Mongo.Read_Prefs.Prefs_T);

   function Get_Read_Concern (Collection : Collection_T) return access constant libmongoc_1_0_mongoc_mongoc_read_concern_h.U_Mongoc_Read_Concern_T;

   procedure Set_Read_Concern (Collection : Collection_T; Read_Concern : access constant libmongoc_1_0_mongoc_mongoc_read_concern_h.U_Mongoc_Read_Concern_T);

   function Get_Write_Concern (Collection : Collection_T) return Mongo.Write_Concerns.Write_Concern_T;

   procedure Set_Write_Concern (Collection : Collection_T; Write_Concern : Mongo.Write_Concerns.Write_Concern_T);

   function Get_Name (Collection : Collection_T) return String;

   function Get_Last_Error (Collection : Collection_T) return Bson.Types.Bson_T;

   function Keys_To_Index_String (Keys : Bson.Types.Bson_T) return String;

   function Validate
     (Collection : Collection_T;
      Options    : Bson.Types.Bson_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean;

   function Watch
     (Coll     : Collection_T;
      Pipeline : Bson.Types.Bson_T;
      Opts     : Bson.Types.Bson_T) return access libmongoc_1_0_mongoc_mongoc_change_stream_h.U_Mongoc_Change_Stream_T;

   function Count_Documents
     (Coll       : Collection_T;
      Filter     : Bson.Types.Bson_T;
      Opts       : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Interfaces.Integer_64;

   function Estimated_Document_Count
     (Coll       : Collection_T;
      Opts       : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T;
      Reply      : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Interfaces.Integer_64;
private
   type Collection_T is new Ada.Finalization.Controlled with record
      Impl : Integer;
   end record;

end Mongo.Collection;
