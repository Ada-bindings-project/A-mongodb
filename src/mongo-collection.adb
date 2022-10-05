pragma Warnings (Off);
package body Mongo.Collection is

   ---------------
   -- Aggregate --
   ---------------

   function Aggregate
     (Collection : Collection_T; Flags : Query_Flags_T;
      Pipeline   : Bson.Types.Bson_T; Opts : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T) return Mongo.Cursor.Cursor_T
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Aggregate unimplemented");
      return raise Program_Error with "Unimplemented function Aggregate";
   end Aggregate;

   -------------------------------
   -- Mongoc_Collection_Destroy --
   -------------------------------

   procedure Mongoc_Collection_Destroy (Collection : Collection_T) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Mongoc_Collection_Destroy unimplemented");
      raise Program_Error
        with "Unimplemented procedure Mongoc_Collection_Destroy";
   end Mongoc_Collection_Destroy;

   ----------
   -- Copy --
   ----------

   function Copy (Collection : Collection_T) return Collection_T is
   begin
      pragma Compile_Time_Warning (Standard.True, "Copy unimplemented");
      return raise Program_Error with "Unimplemented function Copy";
   end Copy;

   -------------
   -- Command --
   -------------

   function Command
     (Collection : Collection_T; Flags : Query_Flags_T; Skip : Positive;
      Limit : Positive; Batch_Size : Positive; Command : Bson.Types.Bson_T;
      Fields     : Bson.Types.Bson_T; Read_Prefs : Mongo.Read_Prefs.Prefs_T)
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
     (Collection :        Collection_T; Command : Bson.Types.Bson_T;
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
     (Collection :        Collection_T; Command : Bson.Types.Bson_T;
      Opts       :        Bson.Types.Bson_T; Reply : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean
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
     (Collection :        Collection_T; Command : Bson.Types.Bson_T;
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
     (Collection :        Collection_T; Command : Bson.Types.Bson_T;
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
     (Collection :        Collection_T; Command : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T; Reply : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Command_Simple unimplemented");
      return raise Program_Error with "Unimplemented function Command_Simple";
   end Command_Simple;

   -----------
   -- Count --
   -----------

   function Count
     (Collection :        Collection_T; Flags : Query_Flags_T;
      Query      :        Bson.Types.Bson_T; Skip : Interfaces.Integer_64;
      Limit :    Interfaces.Integer_64; Read_Prefs : Mongo.Read_Prefs.Prefs_T;
      Error      : in out Bson.Errors.Error_T) return Interfaces.Integer_64
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Count unimplemented");
      return raise Program_Error with "Unimplemented function Count";
   end Count;

   ---------------------
   -- Count_With_Opts --
   ---------------------

   function Count_With_Opts
     (Collection :        Collection_T; Flags : Query_Flags_T;
      Query      :        Bson.Types.Bson_T; Skip : Interfaces.Integer_64;
      Limit      :        Interfaces.Integer_64; Opts : Bson.Types.Bson_T;
      Read_Prefs :        Mongo.Read_Prefs.Prefs_T;
      Error      : in out Bson.Errors.Error_T) return Interfaces.Integer_64
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Count_With_Opts unimplemented");
      return raise Program_Error with "Unimplemented function Count_With_Opts";
   end Count_With_Opts;

   ----------
   -- Drop --
   ----------

   function Drop
     (Collection : Collection_T; Error : in out Bson.Errors.Error_T)
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
     (Collection :        Collection_T; Opts : Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Drop_With_Opts unimplemented");
      return raise Program_Error with "Unimplemented function Drop_With_Opts";
   end Drop_With_Opts;

   ----------------
   -- Drop_Index --
   ----------------

   function Drop_Index
     (Collection :        Collection_T; Index_Name : String;
      Error      : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Drop_Index unimplemented");
      return raise Program_Error with "Unimplemented function Drop_Index";
   end Drop_Index;

   --------------------------
   -- Drop_Index_With_Opts --
   --------------------------

   function Drop_Index_With_Opts
     (Collection : Collection_T; Index_Name : String; Opts : Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Drop_Index_With_Opts unimplemented");
      return
        raise Program_Error with "Unimplemented function Drop_Index_With_Opts";
   end Drop_Index_With_Opts;

   ------------------
   -- Create_Index --
   ------------------

   function Create_Index
     (Collection : Collection_T; Keys : Bson.Types.Bson_T;
      Opt        : access constant libmongoc_1_0_mongoc_mongoc_index_h
        .Mongoc_Index_Opt_T;
      Error : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Create_Index unimplemented");
      return raise Program_Error with "Unimplemented function Create_Index";
   end Create_Index;

   ----------------------------
   -- Create_Index_With_Opts --
   ----------------------------

   function Create_Index_With_Opts
     (Collection : Collection_T; Keys : Bson.Types.Bson_T;
      Opt        : access constant libmongoc_1_0_mongoc_mongoc_index_h
        .Mongoc_Index_Opt_T;
      Opts  :        Bson.Types.Bson_T; Reply : in out Bson.Types.Bson_T;
      Error : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Create_Index_With_Opts unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Create_Index_With_Opts";
   end Create_Index_With_Opts;

   ------------------
   -- Ensure_Index --
   ------------------

   function Ensure_Index
     (Collection : Collection_T; Keys : Bson.Types.Bson_T;
      Opt        : access constant libmongoc_1_0_mongoc_mongoc_index_h
        .Mongoc_Index_Opt_T;
      Error : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Ensure_Index unimplemented");
      return raise Program_Error with "Unimplemented function Ensure_Index";
   end Ensure_Index;

   ------------------
   -- Find_Indexes --
   ------------------

   function Find_Indexes
     (Collection : Collection_T; Error : in out Bson.Errors.Error_T)
      return Mongo.Cursor.Cursor_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Find_Indexes unimplemented");
      return raise Program_Error with "Unimplemented function Find_Indexes";
   end Find_Indexes;

   ----------------------------
   -- Find_Indexes_With_Opts --
   ----------------------------

   function Find_Indexes_With_Opts
     (Collection : Collection_T; Opts : Bson.Types.Bson_T)
      return Mongo.Cursor.Cursor_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Find_Indexes_With_Opts unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Find_Indexes_With_Opts";
   end Find_Indexes_With_Opts;

   ----------
   -- Find --
   ----------

   function Find
     (Collection : Collection_T; Flags : Query_Flags_T; Skip : Positive;
      Limit      : Positive; Batch_Size : Positive; Query : Bson.Types.Bson_T;
      Fields     : Bson.Types.Bson_T; Read_Prefs : Mongo.Read_Prefs.Prefs_T)
      return Mongo.Cursor.Cursor_T
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Find unimplemented");
      return raise Program_Error with "Unimplemented function Find";
   end Find;

   --------------------
   -- Find_With_Opts --
   --------------------

   function Find_With_Opts
     (Collection : Collection_T; Filter : Bson.Types.Bson_T;
      Opts       : Bson.Types.Bson_T; Read_Prefs : Mongo.Read_Prefs.Prefs_T)
      return Mongo.Cursor.Cursor_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Find_With_Opts unimplemented");
      return raise Program_Error with "Unimplemented function Find_With_Opts";
   end Find_With_Opts;

   ------------
   -- Insert --
   ------------

   function Insert
     (Collection    : Collection_T;
      Flags : libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_insert_flags_t;
      Document      : Bson.Types.Bson_T;
      Write_Concern : access constant libmongoc_1_0_mongoc_mongoc_write_concern_h
        .u_mongoc_write_concern_t;
      Error : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Insert unimplemented");
      return raise Program_Error with "Unimplemented function Insert";
   end Insert;

   ----------------
   -- Insert_One --
   ----------------

   function Insert_One
     (Collection :        Collection_T; Document : Bson.Types.Bson_T;
      Opts       :        Bson.Types.Bson_T; Reply : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Insert_One unimplemented");
      return raise Program_Error with "Unimplemented function Insert_One";
   end Insert_One;

   ----------------
   -- Insert_One --
   ----------------

   procedure Insert_One
     (Collection :        Collection_T; Document : Bson.Types.Bson_T;
      Opts       :        Bson.Types.Bson_T; Reply : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T)
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Insert_One unimplemented");
      raise Program_Error with "Unimplemented procedure Insert_One";
   end Insert_One;

   -----------------
   -- Insert_Many --
   -----------------

   function Insert_Many
     (Collection  :        Collection_T; Documents : System.Address;
      N_Documents :        size_t; Opts : Bson.Types.Bson_T;
      Reply : in out Bson.Types.Bson_T; Error : in out Bson.Errors.Error_T)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Insert_Many unimplemented");
      return raise Program_Error with "Unimplemented function Insert_Many";
   end Insert_Many;

   -----------------
   -- Insert_Bulk --
   -----------------

   function Insert_Bulk
     (Collection    :        Collection_T;
      Flags :        libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_insert_flags_t;
      Documents     :        System.Address; N_Documents : Positive;
      Write_Concern :        Mongo.Write_Concerns.Write_Concern_T;
      Error         : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Insert_Bulk unimplemented");
      return raise Program_Error with "Unimplemented function Insert_Bulk";
   end Insert_Bulk;

   ------------
   -- Update --
   ------------

   function Update
     (Collection    :        Collection_T;
      Flags :        libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_update_flags_t;
      Selector      :        Bson.Types.Bson_T; Update : Bson.Types.Bson_T;
      Write_Concern :        Mongo.Write_Concerns.Write_Concern_T;
      Error         : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Update unimplemented");
      return raise Program_Error with "Unimplemented function Update";
   end Update;

   ----------------
   -- Update_One --
   ----------------

   function Update_One
     (Collection :        Collection_T; Selector : Bson.Types.Bson_T;
      Update     :        Bson.Types.Bson_T; Opts : Bson.Types.Bson_T;
      Reply : in out Bson.Types.Bson_T; Error : in out Bson.Errors.Error_T)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Update_One unimplemented");
      return raise Program_Error with "Unimplemented function Update_One";
   end Update_One;

   -----------------
   -- Update_Many --
   -----------------

   function Update_Many
     (Collection :        Collection_T; Selector : Bson.Types.Bson_T;
      Update     :        Bson.Types.Bson_T; Opts : Bson.Types.Bson_T;
      Reply : in out Bson.Types.Bson_T; Error : in out Bson.Errors.Error_T)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Update_Many unimplemented");
      return raise Program_Error with "Unimplemented function Update_Many";
   end Update_Many;

   -----------------
   -- Replace_One --
   -----------------

   function Replace_One
     (Collection  :        Collection_T; Selector : Bson.Types.Bson_T;
      Replacement :        Bson.Types.Bson_T; Opts : Bson.Types.Bson_T;
      Reply : in out Bson.Types.Bson_T; Error : in out Bson.Errors.Error_T)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Replace_One unimplemented");
      return raise Program_Error with "Unimplemented function Replace_One";
   end Replace_One;

   ------------
   -- Delete --
   ------------

   function Delete
     (Collection    :        Collection_T;
      Flags :        libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_delete_flags_t;
      Selector      :        Bson.Types.Bson_T;
      Write_Concern :        Mongo.Write_Concerns.Write_Concern_T;
      Error         : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Delete unimplemented");
      return raise Program_Error with "Unimplemented function Delete";
   end Delete;

   ----------
   -- Save --
   ----------

   function Save
     (Collection    :        Collection_T; Document : Bson.Types.Bson_T;
      Write_Concern :        Mongo.Write_Concerns.Write_Concern_T;
      Error         : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Save unimplemented");
      return raise Program_Error with "Unimplemented function Save";
   end Save;

   ------------
   -- Remove --
   ------------

   function Remove
     (Collection    :        Collection_T;
      Flags :        libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_remove_flags_t;
      Selector      :        Bson.Types.Bson_T;
      Write_Concern :        Mongo.Write_Concerns.Write_Concern_T;
      Error         : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Remove unimplemented");
      return raise Program_Error with "Unimplemented function Remove";
   end Remove;

   ----------------
   -- Delete_One --
   ----------------

   function Delete_One
     (Collection :        Collection_T; Selector : Bson.Types.Bson_T;
      Opts       :        Bson.Types.Bson_T; Reply : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Delete_One unimplemented");
      return raise Program_Error with "Unimplemented function Delete_One";
   end Delete_One;

   -----------------
   -- Delete_Many --
   -----------------

   function Delete_Many
     (Collection :        Collection_T; Selector : Bson.Types.Bson_T;
      Opts       :        Bson.Types.Bson_T; Reply : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Delete_Many unimplemented");
      return raise Program_Error with "Unimplemented function Delete_Many";
   end Delete_Many;

   ------------
   -- Rename --
   ------------

   function Rename
     (Collection : Collection_T; New_Db : String; New_Name : String;
      Drop_Target_Before_Rename : Boolean; Error : in out Bson.Errors.Error_T)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Rename unimplemented");
      return raise Program_Error with "Unimplemented function Rename";
   end Rename;

   ----------------------
   -- Rename_With_Opts --
   ----------------------

   function Rename_With_Opts
     (Collection :        Collection_T; New_Db : String; New_Name : String;
      Drop_Target_Before_Rename :        Boolean; Opts : Bson.Types.Bson_T;
      Error                     : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Rename_With_Opts unimplemented");
      return
        raise Program_Error with "Unimplemented function Rename_With_Opts";
   end Rename_With_Opts;

   -------------------------------
   -- Find_And_Modify_With_Opts --
   -------------------------------

   function Find_And_Modify_With_Opts
     (Collection : Collection_T; Query : Bson.Types.Bson_T;
      Opts : access constant libmongoc_1_0_mongoc_mongoc_find_and_modify_h
        .U_Mongoc_Find_And_Modify_Opts_T;
      Reply : in out Bson.Types.Bson_T; Error : in out Bson.Errors.Error_T)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Find_And_Modify_With_Opts unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Find_And_Modify_With_Opts";
   end Find_And_Modify_With_Opts;

   ---------------------
   -- Find_And_Modify --
   ---------------------

   function Find_And_Modify
     (Collection :        Collection_T; Query : Bson.Types.Bson_T;
      Sort       :        Bson.Types.Bson_T; Update : Bson.Types.Bson_T;
      Fields     :    Bson.Types.Bson_T; U_Remove : Boolean; Upsert : Boolean;
      U_New      :        Boolean; Reply : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Find_And_Modify unimplemented");
      return raise Program_Error with "Unimplemented function Find_And_Modify";
   end Find_And_Modify;

   -----------
   -- Stats --
   -----------

   function Stats
     (Collection :        Collection_T; Options : Bson.Types.Bson_T;
      Reply : in out Bson.Types.Bson_T; Error : in out Bson.Errors.Error_T)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Stats unimplemented");
      return raise Program_Error with "Unimplemented function Stats";
   end Stats;

   ---------------------------
   -- Create_Bulk_Operation --
   ---------------------------

   function Create_Bulk_Operation
     (Collection    : Collection_T; Ordered : Boolean;
      Write_Concern : Mongo.Write_Concerns.Write_Concern_T)
      return access libmongoc_1_0_mongoc_mongoc_bulk_operation_h
     .U_Mongoc_Bulk_Operation_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Create_Bulk_Operation unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Create_Bulk_Operation";
   end Create_Bulk_Operation;

   -------------------------------------
   -- Create_Bulk_Operation_With_Opts --
   -------------------------------------

   function Create_Bulk_Operation_With_Opts
     (Collection : Collection_T; Opts : Bson.Types.Bson_T)
      return access libmongoc_1_0_mongoc_mongoc_bulk_operation_h
     .U_Mongoc_Bulk_Operation_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Create_Bulk_Operation_With_Opts unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Create_Bulk_Operation_With_Opts";
   end Create_Bulk_Operation_With_Opts;

   --------------------
   -- Get_Read_Prefs --
   --------------------

   function Get_Read_Prefs
     (Collection : Collection_T) return Mongo.Read_Prefs.Prefs_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Read_Prefs unimplemented");
      return raise Program_Error with "Unimplemented function Get_Read_Prefs";
   end Get_Read_Prefs;

   ---------------------
   -- Get1_Read_Prefs --
   ---------------------

   function Get1_Read_Prefs
     (Collection : Collection_T) return Mongo.Read_Prefs.Prefs_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get1_Read_Prefs unimplemented");
      return raise Program_Error with "Unimplemented function Get1_Read_Prefs";
   end Get1_Read_Prefs;

   --------------------
   -- Set_Read_Prefs --
   --------------------

   procedure Set_Read_Prefs
     (Collection : Collection_T; Read_Prefs : Mongo.Read_Prefs.Prefs_T)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Read_Prefs unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Read_Prefs";
   end Set_Read_Prefs;

   ----------------------
   -- Get_Read_Concern --
   ----------------------

   function Get_Read_Concern
     (Collection : Collection_T)
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
     (Collection   : Collection_T;
      Read_Concern : access constant libmongoc_1_0_mongoc_mongoc_read_concern_h
        .U_Mongoc_Read_Concern_T)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Read_Concern unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Read_Concern";
   end Set_Read_Concern;

   -----------------------
   -- Get_Write_Concern --
   -----------------------

   function Get_Write_Concern
     (Collection : Collection_T) return Mongo.Write_Concerns.Write_Concern_T
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
     (Collection    : Collection_T;
      Write_Concern : Mongo.Write_Concerns.Write_Concern_T)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Write_Concern unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Write_Concern";
   end Set_Write_Concern;

   --------------
   -- Get_Name --
   --------------

   function Get_Name (Collection : Collection_T) return String is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Name unimplemented");
      return raise Program_Error with "Unimplemented function Get_Name";
   end Get_Name;

   --------------------
   -- Get_Last_Error --
   --------------------

   function Get_Last_Error (Collection : Collection_T) return Bson.Types.Bson_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Last_Error unimplemented");
      return raise Program_Error with "Unimplemented function Get_Last_Error";
   end Get_Last_Error;

   --------------------------
   -- Keys_To_Index_String --
   --------------------------

   function Keys_To_Index_String (Keys : Bson.Types.Bson_T) return String is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Keys_To_Index_String unimplemented");
      return
        raise Program_Error with "Unimplemented function Keys_To_Index_String";
   end Keys_To_Index_String;

   --------------
   -- Validate --
   --------------

   function Validate
     (Collection :        Collection_T; Options : Bson.Types.Bson_T;
      Reply : in out Bson.Types.Bson_T; Error : in out Bson.Errors.Error_T)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Validate unimplemented");
      return raise Program_Error with "Unimplemented function Validate";
   end Validate;

   -----------
   -- Watch --
   -----------

   function Watch
     (Coll : Collection_T; Pipeline : Bson.Types.Bson_T;
      Opts : Bson.Types.Bson_T)
      return access libmongoc_1_0_mongoc_mongoc_change_stream_h
     .U_Mongoc_Change_Stream_T
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Watch unimplemented");
      return raise Program_Error with "Unimplemented function Watch";
   end Watch;

   ---------------------
   -- Count_Documents --
   ---------------------

   function Count_Documents
     (Coll  :        Collection_T; Filter : Bson.Types.Bson_T;
      Opts  :        Bson.Types.Bson_T; Read_Prefs : Mongo.Read_Prefs.Prefs_T;
      Reply : in out Bson.Types.Bson_T; Error : in out Bson.Errors.Error_T)
      return Interfaces.Integer_64
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Count_Documents unimplemented");
      return raise Program_Error with "Unimplemented function Count_Documents";
   end Count_Documents;

   ------------------------------
   -- Estimated_Document_Count --
   ------------------------------

   function Estimated_Document_Count
     (Coll       :        Collection_T; Opts : Bson.Types.Bson_T;
      Read_Prefs : Mongo.Read_Prefs.Prefs_T; Reply : in out Bson.Types.Bson_T;
      Error      : in out Bson.Errors.Error_T) return Interfaces.Integer_64
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Estimated_Document_Count unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Estimated_Document_Count";
   end Estimated_Document_Count;

end Mongo.Collection;
