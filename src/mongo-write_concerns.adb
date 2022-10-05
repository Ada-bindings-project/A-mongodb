pragma Warnings (Off);
package body Mongo.Write_Concerns is

   ----------
   -- Newc --
   ----------

   function Newc return Write_Concern_T is
   begin
      pragma Compile_Time_Warning (Standard.True, "Newc unimplemented");
      return raise Program_Error with "Unimplemented function Newc";
   end Newc;

   ----------
   -- Copy --
   ----------

   function Copy (Write_Concern : Write_Concern_T) return Write_Concern_T is
   begin
      pragma Compile_Time_Warning (Standard.True, "Copy unimplemented");
      return raise Program_Error with "Unimplemented function Copy";
   end Copy;

   -------------
   -- Destroy --
   -------------

   procedure Destroy (Write_Concern : in out Write_Concern_T) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Destroy unimplemented");
      raise Program_Error with "Unimplemented procedure Destroy";
   end Destroy;

   ---------------
   -- Get_Fsync --
   ---------------

   function Get_Fsync (Write_Concern : Write_Concern_T) return Boolean is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Fsync unimplemented");
      return raise Program_Error with "Unimplemented function Get_Fsync";
   end Get_Fsync;

   ---------------
   -- Set_Fsync --
   ---------------

   procedure Set_Fsync
     (Write_Concern : in out Write_Concern_T; Fsync_U : Boolean)
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Set_Fsync unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Fsync";
   end Set_Fsync;

   -----------------
   -- Get_Journal --
   -----------------

   function Get_Journal (Write_Concern : Write_Concern_T) return Boolean is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Journal unimplemented");
      return raise Program_Error with "Unimplemented function Get_Journal";
   end Get_Journal;

   --------------------
   -- Journal_Is_Set --
   --------------------

   function Journal_Is_Set (Write_Concern : Write_Concern_T) return Boolean is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Journal_Is_Set unimplemented");
      return raise Program_Error with "Unimplemented function Journal_Is_Set";
   end Journal_Is_Set;

   -----------------
   -- Set_Journal --
   -----------------

   procedure Set_Journal
     (Write_Concern : in out Write_Concern_T; Journal : Boolean)
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Set_Journal unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Journal";
   end Set_Journal;

   -----------
   -- Get_W --
   -----------

   function Get_W (Write_Concern : Write_Concern_T) return Integer is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_W unimplemented");
      return raise Program_Error with "Unimplemented function Get_W";
   end Get_W;

   -----------
   -- Set_W --
   -----------

   procedure Set_W (Write_Concern : in out Write_Concern_T; W : Integer) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Set_W unimplemented");
      raise Program_Error with "Unimplemented procedure Set_W";
   end Set_W;

   --------------
   -- Get_Wtag --
   --------------

   function Get_Wtag (Write_Concern : Write_Concern_T) return String is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Wtag unimplemented");
      return raise Program_Error with "Unimplemented function Get_Wtag";
   end Get_Wtag;

   --------------
   -- Set_Wtag --
   --------------

   procedure Set_Wtag (Write_Concern : in out Write_Concern_T; Tag : String) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Set_Wtag unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Wtag";
   end Set_Wtag;

   ------------------
   -- Get_Wtimeout --
   ------------------

   function Get_Wtimeout (Write_Concern : Write_Concern_T) return Duration is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Wtimeout unimplemented");
      return raise Program_Error with "Unimplemented function Get_Wtimeout";
   end Get_Wtimeout;

   ------------------------
   -- Get_Wtimeout_Int64 --
   ------------------------

   function Get_Wtimeout_Int64
     (Write_Concern : Write_Concern_T) return Ada.Real_Time.Time_Span
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Wtimeout_Int64 unimplemented");
      return
        raise Program_Error with "Unimplemented function Get_Wtimeout_Int64";
   end Get_Wtimeout_Int64;

   ------------------
   -- Set_Wtimeout --
   ------------------

   procedure Set_Wtimeout
     (Write_Concern : in out Write_Concern_T; Wtimeout : Duration)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Wtimeout unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Wtimeout";
   end Set_Wtimeout;

   ------------------------
   -- Set_Wtimeout_Int64 --
   ------------------------

   procedure Set_Wtimeout_Int64
     (Write_Concern : in out Write_Concern_T;
      Wtimeout      :        Ada.Real_Time.Time_Span)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Wtimeout_Int64 unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Wtimeout_Int64";
   end Set_Wtimeout_Int64;

   -------------------
   -- Get_Wmajority --
   -------------------

   function Get_Wmajority (Write_Concern : Write_Concern_T) return Boolean is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Wmajority unimplemented");
      return raise Program_Error with "Unimplemented function Get_Wmajority";
   end Get_Wmajority;

   -------------------
   -- Set_Wmajority --
   -------------------

   procedure Set_Wmajority
     (Write_Concern : in out Write_Concern_T; Wtimeout_Msec : Integer)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Wmajority unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Wmajority";
   end Set_Wmajority;

   ---------------------
   -- Is_Acknowledged --
   ---------------------

   function Is_Acknowledged (Write_Concern : Write_Concern_T) return Boolean is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Is_Acknowledged unimplemented");
      return raise Program_Error with "Unimplemented function Is_Acknowledged";
   end Is_Acknowledged;

   --------------
   -- Is_Valid --
   --------------

   function Is_Valid (Write_Concern : Write_Concern_T) return Boolean is
   begin
      pragma Compile_Time_Warning (Standard.True, "Is_Valid unimplemented");
      return raise Program_Error with "Unimplemented function Is_Valid";
   end Is_Valid;

   ------------
   -- Append --
   ------------

   function Append
     (Write_Concern : in out Write_Concern_T; Doc : Bson.Types.Bson_T)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Append unimplemented");
      return raise Program_Error with "Unimplemented function Append";
   end Append;

   ----------------
   -- Is_Default --
   ----------------

   function Is_Default (Write_Concern : Write_Concern_T) return Boolean is
   begin
      pragma Compile_Time_Warning (Standard.True, "Is_Default unimplemented");
      return raise Program_Error with "Unimplemented function Is_Default";
   end Is_Default;

end Mongo.Write_Concerns;
