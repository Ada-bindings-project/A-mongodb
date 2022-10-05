pragma Warnings (Off);
package body Mongo.Database is

   --------------
   -- Get_Name --
   --------------

   function Get_Name (Database : in out Database_T) return String is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Name unimplemented");
      return raise Program_Error with "Unimplemented function Get_Name";
   end Get_Name;

   -----------------
   -- Remove_User --
   -----------------

   function Remove_User
     (Database : in out Database_T; Username : String;
      Error    : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Remove_User unimplemented");
      return raise Program_Error with "Unimplemented function Remove_User";
   end Remove_User;

   ----------------------
   -- Remove_All_Users --
   ----------------------

   function Remove_All_Users
     (Database : in out Database_T; Error : in out Bson.Errors.Error_T)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Remove_All_Users unimplemented");
      return
        raise Program_Error with "Unimplemented function Remove_All_Users";
   end Remove_All_Users;

   --------------
   -- Add_User --
   --------------

   function Add_User
     (Database : in out Database_T; Username : String; Password : String;
      Roles    :        Bson.Types.Bson_T; Custom_Data : Bson.Types.Bson_T;
      Error    : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Add_User unimplemented");
      return raise Program_Error with "Unimplemented function Add_User";
   end Add_User;

   -------------
   -- Destroy --
   -------------

   procedure Destroy (Database : in out Database_T) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Destroy unimplemented");
      raise Program_Error with "Unimplemented procedure Destroy";
   end Destroy;

   ---------------
   -- Aggregate --
   ---------------

   function Aggregate
     (Db   : in out Database_T; Pipeline : Bson.Types.Bson_T;
      Opts :        Bson.Types.Bson_T; Read_Prefs : Mongo.Read_Prefs.Prefs_T)
      return Mongo.Cursor.Cursor_T
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Aggregate unimplemented");
      return raise Program_Error with "Unimplemented function Aggregate";
   end Aggregate;

   ----------
   -- Copy --
   ----------

   function Copy (Database : in out Database_T) return Database_T is
   begin
      pragma Compile_Time_Warning (Standard.True, "Copy unimplemented");
      return raise Program_Error with "Unimplemented function Copy";
   end Copy;

   -------------
   -- Command --
   -------------

   function Command
     (Database : in out Database_T; Flags : Query_Flags_T; Skip : Natural;
      Limit    :    Natural; Batch_Size : Natural; Command : Bson.Types.Bson_T;
      Fields   :    Bson.Types.Bson_T; Read_Prefs : Mongo.Read_Prefs.Prefs_T)
      return Mongo.Cursor.Cursor_T
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Command unimplemented");
      return raise Program_Error with "Unimplemented function Command";
   end Command;

   ----------------------------
   -- Read_Command_With_Opts --
   ----------------------------

   function Read_Command_With_Opts
     (Database   : in out Database_T; Command : Bson.Types.Bson_T;
      Read_Prefs :        Mongo.Read_Prefs.Prefs_T; Opts : Bson.Types.Bson_T;
      Reply : in out Bson.Types.Bson_T; Error : in out Bson.Errors.Error_T)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Read_Command_With_Opts unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Read_Command_With_Opts";
   end Read_Command_With_Opts;

   -----------------------------
   -- Write_Command_With_Opts --
   -----------------------------

   function Write_Command_With_Opts
     (Database : in out Database_T; Command : Bson.Types.Bson_T;
      Opts     :        Bson.Types.Bson_T; Reply : in out Bson.Types.Bson_T;
      Error    : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Write_Command_With_Opts unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Write_Command_With_Opts";
   end Write_Command_With_Opts;

   ----------------------------------
   -- Read_Write_Command_With_Opts --
   ----------------------------------

   function Read_Write_Command_With_Opts
     (Database   : in out Database_T; Command : Bson.Types.Bson_T;
      Read_Prefs :        Mongo.Read_Prefs.Prefs_T; Opts : Bson.Types.Bson_T;
      Reply : in out Bson.Types.Bson_T; Error : in out Bson.Errors.Error_T)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Read_Write_Command_With_Opts unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Read_Write_Command_With_Opts";
   end Read_Write_Command_With_Opts;

   -----------------------
   -- Command_With_Opts --
   -----------------------

   function Command_With_Opts
     (Database   : in out Database_T; Command : Bson.Types.Bson_T;
      Read_Prefs :        Mongo.Read_Prefs.Prefs_T; Opts : Bson.Types.Bson_T;
      Reply : in out Bson.Types.Bson_T; Error : in out Bson.Errors.Error_T)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Command_With_Opts unimplemented");
      return
        raise Program_Error with "Unimplemented function Command_With_Opts";
   end Command_With_Opts;

   --------------------
   -- Command_Simple --
   --------------------

   function Command_Simple
     (Database   : in out Database_T; Command : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T; Reply : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Command_Simple unimplemented");
      return raise Program_Error with "Unimplemented function Command_Simple";
   end Command_Simple;

   ----------
   -- Drop --
   ----------

   function Drop
     (Database : in out Database_T; Error : in out Bson.Errors.Error_T)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Drop unimplemented");
      return raise Program_Error with "Unimplemented function Drop";
   end Drop;

   --------------------
   -- Drop_With_Opts --
   --------------------

   function Drop_With_Opts
     (Database : in out Database_T; Opts : Bson.Types.Bson_T;
      Error    : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Drop_With_Opts unimplemented");
      return raise Program_Error with "Unimplemented function Drop_With_Opts";
   end Drop_With_Opts;

   --------------------
   -- Has_Collection --
   --------------------

   function Has_Collection
     (Database : in out Database_T; Name : String;
      Error    : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Has_Collection unimplemented");
      return raise Program_Error with "Unimplemented function Has_Collection";
   end Has_Collection;

   -----------------------
   -- Create_Collection --
   -----------------------

   function Create_Collection
     (Database : in out Database_T; Name : String; Options : Bson.Types.Bson_T;
      Error : in out Bson.Errors.Error_T) return Mongo.Collection.Collection_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Create_Collection unimplemented");
      return
        raise Program_Error with "Unimplemented function Create_Collection";
   end Create_Collection;

   --------------------
   -- Get_Read_Prefs --
   --------------------

   function Get_Read_Prefs
     (Database : Database_T) return Mongo.Read_Prefs.Prefs_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Read_Prefs unimplemented");
      return raise Program_Error with "Unimplemented function Get_Read_Prefs";
   end Get_Read_Prefs;

   --------------------
   -- Set_Read_Prefs --
   --------------------

   procedure Set_Read_Prefs
     (Database : in out Database_T; Read_Prefs : Mongo.Read_Prefs.Prefs_T)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Read_Prefs unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Read_Prefs";
   end Set_Read_Prefs;

   -----------------------
   -- Get_Write_Concern --
   -----------------------

   function Get_Write_Concern
     (Database : Database_T) return Mongo.Write_Concerns.Write_Concern_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Write_Concern unimplemented");
      return
        raise Program_Error with "Unimplemented function Get_Write_Concern";
   end Get_Write_Concern;

   -----------------------
   -- Set_Write_Concern --
   -----------------------

   procedure Set_Write_Concern
     (Database      : in out Database_T;
      Write_Concern :        Mongo.Write_Concerns.Write_Concern_T)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Write_Concern unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Write_Concern";
   end Set_Write_Concern;

   ----------------------
   -- Get_Read_Concern --
   ----------------------

   function Get_Read_Concern
     (Database : Database_T)
      return access constant libmongoc_1_0_mongoc_mongoc_read_concern_h
     .U_Mongoc_Read_Concern_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Read_Concern unimplemented");
      return
        raise Program_Error with "Unimplemented function Get_Read_Concern";
   end Get_Read_Concern;

   ----------------------
   -- Set_Read_Concern --
   ----------------------

   procedure Set_Read_Concern
     (Database     : in out Database_T;
      Read_Concern : access constant libmongoc_1_0_mongoc_mongoc_read_concern_h
        .U_Mongoc_Read_Concern_T)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Read_Concern unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Read_Concern";
   end Set_Read_Concern;

   ----------------------
   -- Find_Collections --
   ----------------------

   function Find_Collections
     (Database : in out Database_T; Filter : Bson.Types.Bson_T;
      Error    : in out Bson.Errors.Error_T) return Mongo.Cursor.Cursor_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Find_Collections unimplemented");
      return
        raise Program_Error with "Unimplemented function Find_Collections";
   end Find_Collections;

   --------------------------------
   -- Find_Collections_With_Opts --
   --------------------------------

   function Find_Collections_With_Opts
     (Database : in out Database_T; Opts : Bson.Types.Bson_T)
      return Mongo.Cursor.Cursor_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Find_Collections_With_Opts unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Find_Collections_With_Opts";
   end Find_Collections_With_Opts;

   --------------------------
   -- Get_Collection_Names --
   --------------------------

   function Get_Collection_Names
     (Database : in out Database_T; Error : in out Bson.Errors.Error_T)
      return System.Address
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Collection_Names unimplemented");
      return
        raise Program_Error with "Unimplemented function Get_Collection_Names";
   end Get_Collection_Names;

   ------------------------------------
   -- Get_Collection_Names_With_Opts --
   ------------------------------------

   function Get_Collection_Names_With_Opts
     (Database : in out Database_T; Opts : Bson.Types.Bson_T;
      Error    : in out Bson.Errors.Error_T) return System.Address
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Collection_Names_With_Opts unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Get_Collection_Names_With_Opts";
   end Get_Collection_Names_With_Opts;

   --------------------
   -- Get_Collection --
   --------------------

   function Get_Collection
     (Database : in out Database_T; Name : String)
      return Mongo.Collection.Collection_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Collection unimplemented");
      return raise Program_Error with "Unimplemented function Get_Collection";
   end Get_Collection;

   -----------
   -- Watch --
   -----------

   function Watch
     (Db : Database_T; Pipeline : Bson.Types.Bson_T; Opts : Bson.Types.Bson_T)
      return access libmongoc_1_0_mongoc_mongoc_change_stream_h
     .U_Mongoc_Change_Stream_T
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Watch unimplemented");
      return raise Program_Error with "Unimplemented function Watch";
   end Watch;

   ----------------
   -- Initialize --
   ----------------

   overriding procedure Initialize (Db : in out Database_T) is
   begin
      null;
   end Initialize;

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Db : in out Database_T) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Adjust unimplemented");
      raise Program_Error with "Unimplemented procedure Adjust";
   end Adjust;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Db : in out Database_T) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Finalize unimplemented");
      raise Program_Error with "Unimplemented procedure Finalize";
   end Finalize;

end Mongo.Database;
