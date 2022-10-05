pragma Warnings (Off);
package body Mongo.Read_Prefs is

   ----------
   -- Nnew --
   ----------

   function Nnew (Mode : Read_Mode_T) return Prefs_T is
   begin
      pragma Compile_Time_Warning (Standard.True, "Nnew unimplemented");
      return raise Program_Error with "Unimplemented function Nnew";
   end Nnew;

   ----------
   -- Copy --
   ----------

   function Copy (Read_Prefs : Prefs_T) return Prefs_T is
   begin
      pragma Compile_Time_Warning (Standard.True, "Copy unimplemented");
      return raise Program_Error with "Unimplemented function Copy";
   end Copy;

   -------------
   -- Destroy --
   -------------

   procedure Destroy (Read_Prefs : in out Prefs_T) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Destroy unimplemented");
      raise Program_Error with "Unimplemented procedure Destroy";
   end Destroy;

   --------------
   -- Get_Mode --
   --------------

   function Get_Mode (Read_Prefs : Prefs_T) return Read_Mode_T is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Mode unimplemented");
      return raise Program_Error with "Unimplemented function Get_Mode";
   end Get_Mode;

   --------------
   -- Set_Mode --
   --------------

   procedure Set_Mode (Read_Prefs : in out Prefs_T; Mode : Read_Mode_T) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Set_Mode unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Mode";
   end Set_Mode;

   --------------
   -- Get_Tags --
   --------------

   function Get_Tags (Read_Prefs : Prefs_T) return Bson.Types.Bson_T is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Tags unimplemented");
      return raise Program_Error with "Unimplemented function Get_Tags";
   end Get_Tags;

   --------------
   -- Set_Tags --
   --------------

   procedure Set_Tags (Read_Prefs : in out Prefs_T; Tags : Bson.Types.Bson_T)
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Set_Tags unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Tags";
   end Set_Tags;

   -------------
   -- Add_Tag --
   -------------

   procedure Add_Tag (Read_Prefs : in out Prefs_T; Tag : Bson.Types.Bson_T) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Add_Tag unimplemented");
      raise Program_Error with "Unimplemented procedure Add_Tag";
   end Add_Tag;

   -----------------------
   -- Get_Max_Staleness --
   -----------------------

   function Get_Max_Staleness (Read_Prefs : Prefs_T) return Duration is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Max_Staleness unimplemented");
      return
        raise Program_Error with "Unimplemented function Get_Max_Staleness";
   end Get_Max_Staleness;

   -----------------------
   -- Set_Max_Staleness --
   -----------------------

   procedure Set_Max_Staleness
     (Read_Prefs : in out Prefs_T; Max_Staleness : Duration)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Max_Staleness unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Max_Staleness";
   end Set_Max_Staleness;

   ---------------
   -- Get_Hedge --
   ---------------

   function Get_Hedge (Read_Prefs : Prefs_T) return Bson.Types.Bson_T is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Hedge unimplemented");
      return raise Program_Error with "Unimplemented function Get_Hedge";
   end Get_Hedge;

   ---------------
   -- Set_Hedge --
   ---------------

   procedure Set_Hedge (Read_Prefs : in out Prefs_T; Hedge : Bson.Types.Bson_T)
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Set_Hedge unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Hedge";
   end Set_Hedge;

   --------------
   -- Is_Valid --
   --------------

   function Is_Valid (Read_Prefs : Prefs_T) return Boolean is
   begin
      pragma Compile_Time_Warning (Standard.True, "Is_Valid unimplemented");
      return raise Program_Error with "Unimplemented function Is_Valid";
   end Is_Valid;

end Mongo.Read_Prefs;
