pragma Warnings (Off);
package body Mongo.Cursor is

   ----------
   -- More --
   ----------

   function More (Cursor : in out Cursor_T) return Boolean is
   begin
      pragma Compile_Time_Warning (Standard.True, "More unimplemented");
      return raise Program_Error with "Unimplemented function More";
   end More;

   ----------
   -- Next --
   ----------

   function Next
     (Cursor : in out Cursor_T; Bson : System.Address) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Next unimplemented");
      return raise Program_Error with "Unimplemented function Next";
   end Next;

   -----------
   -- Error --
   -----------

   function Error
     (Cursor : in out Cursor_T; Error : Bson.Errors.Error_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Error unimplemented");
      return raise Program_Error with "Unimplemented function Error";
   end Error;

   --------------------
   -- Error_Document --
   --------------------

   function Error_Document
     (Cursor : in out Cursor_T; Error : Bson.Errors.Error_T;
      Doc    :        System.Address) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Error_Document unimplemented");
      return raise Program_Error with "Unimplemented function Error_Document";
   end Error_Document;

   --------------
   -- Get_Host --
   --------------

   procedure Get_Host
     (Cursor : in out Cursor_T; Host : out Mongo.Host_Lists.Host_List_T)
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Host unimplemented");
      raise Program_Error with "Unimplemented procedure Get_Host";
   end Get_Host;

   --------------
   -- Is_Alive --
   --------------

   function Is_Alive (Cursor : Cursor_T) return Boolean is
   begin
      pragma Compile_Time_Warning (Standard.True, "Is_Alive unimplemented");
      return raise Program_Error with "Unimplemented function Is_Alive";
   end Is_Alive;

   -------------
   -- Current --
   -------------

   function Current (Cursor : Cursor_T) return Bson.Types.Bson_T is
   begin
      pragma Compile_Time_Warning (Standard.True, "Current unimplemented");
      return raise Program_Error with "Unimplemented function Current";
   end Current;

   --------------------
   -- Set_Batch_Size --
   --------------------

   procedure Set_Batch_Size (Cursor : in out Cursor_T; Batch_Size : Positive)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Batch_Size unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Batch_Size";
   end Set_Batch_Size;

   --------------------
   -- Get_Batch_Size --
   --------------------

   function Get_Batch_Size (Cursor : Cursor_T) return Positive is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Batch_Size unimplemented");
      return raise Program_Error with "Unimplemented function Get_Batch_Size";
   end Get_Batch_Size;

   ---------------
   -- Set_Limit --
   ---------------

   function Set_Limit
     (Cursor : in out Cursor_T; Limit : Long_Long_Integer) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Set_Limit unimplemented");
      return raise Program_Error with "Unimplemented function Set_Limit";
   end Set_Limit;

   ---------------
   -- Get_Limit --
   ---------------

   function Get_Limit (Cursor : Cursor_T) return Long_Long_Integer is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Limit unimplemented");
      return raise Program_Error with "Unimplemented function Get_Limit";
   end Get_Limit;

   --------------
   -- Set_Hint --
   --------------

   function Set_Hint
     (Cursor : in out Cursor_T; Server_Id : Positive) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Set_Hint unimplemented");
      return raise Program_Error with "Unimplemented function Set_Hint";
   end Set_Hint;

   --------------
   -- Get_Hint --
   --------------

   function Get_Hint (Cursor : Cursor_T) return Positive is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Hint unimplemented");
      return raise Program_Error with "Unimplemented function Get_Hint";
   end Get_Hint;

   ------------
   -- Get_Id --
   ------------

   function Get_Id (Cursor : Cursor_T) return Long_Long_Integer is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Id unimplemented");
      return raise Program_Error with "Unimplemented function Get_Id";
   end Get_Id;

   -------------------------
   -- Set_Max_Await_Times --
   -------------------------

   procedure Set_Max_Await_Times
     (Cursor : in out Cursor_T; Max_Await_Times : Duration)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Max_Await_Times unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Max_Await_Times";
   end Set_Max_Await_Times;

   -------------------------
   -- Get_Max_Await_Times --
   -------------------------

   function Get_Max_Await_Times (Cursor : Cursor_T) return Duration is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Max_Await_Times unimplemented");
      return
        raise Program_Error with "Unimplemented function Get_Max_Await_Times";
   end Get_Max_Await_Times;

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Cursor : in out Cursor_T) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Adjust unimplemented");
      raise Program_Error with "Unimplemented procedure Adjust";
   end Adjust;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Cursor : in out Cursor_T) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Finalize unimplemented");
      raise Program_Error with "Unimplemented procedure Finalize";
   end Finalize;

end Mongo.Cursor;
