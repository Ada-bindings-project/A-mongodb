pragma Warnings (Off);
package body Mongo.URIs is

   -------------
   -- New_Uri --
   -------------

   procedure New_Uri (Uri : in out Uri_T; Name : String) is
   begin
      pragma Compile_Time_Warning (Standard.True, "New_Uri unimplemented");
      raise Program_Error with "Unimplemented procedure New_Uri";
   end New_Uri;

   -------------
   -- New_Uri --
   -------------

   procedure New_Uri
     (Uri : in out Uri_T; Name : Ada.Strings.Unbounded.Unbounded_String)
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "New_Uri unimplemented");
      raise Program_Error with "Unimplemented procedure New_Uri";
   end New_Uri;

   -------------
   -- New_Uri --
   -------------

   procedure New_Uri
     (Uri : in out Uri_T; Name : String; Error : in out Bson.Errors.Error_T)
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "New_Uri unimplemented");
      raise Program_Error with "Unimplemented procedure New_Uri";
   end New_Uri;

   -------------
   -- New_Uri --
   -------------

   procedure New_Uri
     (Uri   : in out Uri_T; Name : Ada.Strings.Unbounded.Unbounded_String;
      Error : in out Bson.Errors.Error_T)
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "New_Uri unimplemented");
      raise Program_Error with "Unimplemented procedure New_Uri";
   end New_Uri;

   -------------
   -- New_Uri --
   -------------

   procedure New_Uri
     (Uri : in out Uri_T; Hostname : String; Port : GNAT.Sockets.Port_Type)
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "New_Uri unimplemented");
      raise Program_Error with "Unimplemented procedure New_Uri";
   end New_Uri;

   -------------
   -- New_Uri --
   -------------

   procedure New_Uri
     (Uri  : in out Uri_T; Hostname : Ada.Strings.Unbounded.Unbounded_String;
      Port :        GNAT.Sockets.Port_Type)
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "New_Uri unimplemented");
      raise Program_Error with "Unimplemented procedure New_Uri";
   end New_Uri;

   ---------------
   -- Get_Hosts --
   ---------------

   function Get_Hosts (URI : Uri_T) return Mongo.Host_Lists.Host_List_T is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Hosts unimplemented");
      return raise Program_Error with "Unimplemented function Get_Hosts";
   end Get_Hosts;

   ----------------------
   -- Get_Srv_Hostname --
   ----------------------

   function Get_Srv_Hostname (URI : Uri_T) return String is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Srv_Hostname unimplemented");
      return
        raise Program_Error with "Unimplemented function Get_Srv_Hostname";
   end Get_Srv_Hostname;

   --------------------------
   -- Get_Srv_Service_Name --
   --------------------------

   function Get_Srv_Service_Name (URI : Uri_T) return String is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Srv_Service_Name unimplemented");
      return
        raise Program_Error with "Unimplemented function Get_Srv_Service_Name";
   end Get_Srv_Service_Name;

   ------------------
   -- Get_Database --
   ------------------

   function Get_Database (URI : Uri_T) return String is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Database unimplemented");
      return raise Program_Error with "Unimplemented function Get_Database";
   end Get_Database;

   ----------------
   -- Get_Option --
   ----------------

   function Get_Option
     (URI : Uri_T; Option : String; Fallback : Boolean) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Option unimplemented");
      return raise Program_Error with "Unimplemented function Get_Option";
   end Get_Option;

   ----------------
   -- Get_Option --
   ----------------

   function Get_Option
     (URI : Uri_T; Option : String; Fallback : Long_Integer)
      return Long_Integer
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Option unimplemented");
      return raise Program_Error with "Unimplemented function Get_Option";
   end Get_Option;

   ----------------
   -- Get_Option --
   ----------------

   function Get_Option
     (URI : Uri_T; Option : String; Fallback : Long_Long_Integer)
      return Long_Long_Integer
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Option unimplemented");
      return raise Program_Error with "Unimplemented function Get_Option";
   end Get_Option;

   ----------------
   -- Get_Option --
   ----------------

   function Get_Option
     (URI : Uri_T; Option : String; Fallback : String) return String
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Option unimplemented");
      return raise Program_Error with "Unimplemented function Get_Option";
   end Get_Option;

   ----------------
   -- Set_Option --
   ----------------

   function Set_Option
     (URI : Uri_T; Option : String; Value : Boolean) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Set_Option unimplemented");
      return raise Program_Error with "Unimplemented function Set_Option";
   end Set_Option;

   ----------------
   -- Set_Option --
   ----------------

   function Set_Option
     (URI : Uri_T; Option : String; Value : Long_Integer) return Long_Integer
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Set_Option unimplemented");
      return raise Program_Error with "Unimplemented function Set_Option";
   end Set_Option;

   ----------------
   -- Set_Option --
   ----------------

   function Set_Option
     (URI : Uri_T; Option : String; Value : Long_Long_Integer)
      return Long_Long_Integer
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Set_Option unimplemented");
      return raise Program_Error with "Unimplemented function Set_Option";
   end Set_Option;

   ----------------
   -- Set_Option --
   ----------------

   function Set_Option
     (URI : Uri_T; Option : String; Value : String) return String
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Set_Option unimplemented");
      return raise Program_Error with "Unimplemented function Set_Option";
   end Set_Option;

   --------------------
   -- Get_Read_Prefs --
   --------------------

   function Get_Read_Prefs (Uri : Uri_T) return Bson.Types.Bson_T is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Read_Prefs unimplemented");
      return raise Program_Error with "Unimplemented function Get_Read_Prefs";
   end Get_Read_Prefs;

   ---------------------
   -- Get_Replica_Set --
   ---------------------

   function Get_Replica_Set (Uri : Uri_T) return String is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Replica_Set unimplemented");
      return raise Program_Error with "Unimplemented function Get_Replica_Set";
   end Get_Replica_Set;

   ----------------
   -- Get_String --
   ----------------

   function Get_String (Uri : Uri_T) return String is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_String unimplemented");
      return raise Program_Error with "Unimplemented function Get_String";
   end Get_String;

   ------------------
   -- Get_Username --
   ------------------

   function Get_Username (Uri : Uri_T) return String is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Username unimplemented");
      return raise Program_Error with "Unimplemented function Get_Username";
   end Get_Username;

   ------------------
   -- Set_Username --
   ------------------

   function Set_Username (Uri : in out Uri_T; Username : String) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Username unimplemented");
      return raise Program_Error with "Unimplemented function Set_Username";
   end Set_Username;

   ---------------------
   -- Get_Credentials --
   ---------------------

   function Get_Credentials (Uri : Uri_T) return Bson.Types.Bson_T is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Credentials unimplemented");
      return raise Program_Error with "Unimplemented function Get_Credentials";
   end Get_Credentials;

   ---------------------
   -- Get_Auth_Source --
   ---------------------

   function Get_Auth_Source (Uri : Uri_T) return String is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Auth_Source unimplemented");
      return raise Program_Error with "Unimplemented function Get_Auth_Source";
   end Get_Auth_Source;

   ---------------------
   -- Set_Auth_Source --
   ---------------------

   function Set_Auth_Source (Uri : in out Uri_T; Value : String) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Auth_Source unimplemented");
      return raise Program_Error with "Unimplemented function Set_Auth_Source";
   end Set_Auth_Source;

   -----------------
   -- Get_Appname --
   -----------------

   function Get_Appname (Uri : Uri_T) return String is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Appname unimplemented");
      return raise Program_Error with "Unimplemented function Get_Appname";
   end Get_Appname;

   -----------------
   -- Set_Appname --
   -----------------

   function Set_Appname (Uri : in out Uri_T; Value : String) return Boolean is
   begin
      pragma Compile_Time_Warning (Standard.True, "Set_Appname unimplemented");
      return raise Program_Error with "Unimplemented function Set_Appname";
   end Set_Appname;

   ---------------------
   -- Set_Compressors --
   ---------------------

   function Set_Compressors (Uri : in out Uri_T; Value : String) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Compressors unimplemented");
      return raise Program_Error with "Unimplemented function Set_Compressors";
   end Set_Compressors;

   ------------------------
   -- Get_Auth_Mechanism --
   ------------------------

   function Get_Auth_Mechanism (Uri : Uri_T) return String is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Auth_Mechanism unimplemented");
      return
        raise Program_Error with "Unimplemented function Get_Auth_Mechanism";
   end Get_Auth_Mechanism;

   ------------------------
   -- Set_Auth_Mechanism --
   ------------------------

   function Set_Auth_Mechanism
     (Uri : in out Uri_T; Value : String) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Auth_Mechanism unimplemented");
      return
        raise Program_Error with "Unimplemented function Set_Auth_Mechanism";
   end Set_Auth_Mechanism;

   ------------------------------
   -- Get_Mechanism_Properties --
   ------------------------------

   function Get_Mechanism_Properties
     (Uri : Uri_T; Properties : Bson.Types.Bson_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Mechanism_Properties unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Get_Mechanism_Properties";
   end Get_Mechanism_Properties;

   ------------------------------
   -- Set_Mechanism_Properties --
   ------------------------------

   function Set_Mechanism_Properties
     (Uri : in out Uri_T; Properties : Bson.Types.Bson_T) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Mechanism_Properties unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Set_Mechanism_Properties";
   end Set_Mechanism_Properties;

   -------------
   -- Get_Ssl --
   -------------

   function Get_Ssl (Uri : Uri_T) return Boolean is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Ssl unimplemented");
      return raise Program_Error with "Unimplemented function Get_Ssl";
   end Get_Ssl;

   -------------
   -- Get_Tls --
   -------------

   function Get_Tls (Uri : Uri_T) return Boolean is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Tls unimplemented");
      return raise Program_Error with "Unimplemented function Get_Tls";
   end Get_Tls;

   --------------
   -- Unescape --
   --------------

   function Unescape (Escaped_String : String) return String is
   begin
      pragma Compile_Time_Warning (Standard.True, "Unescape unimplemented");
      return raise Program_Error with "Unimplemented function Unescape";
   end Unescape;

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Object : in out Uri_T) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Adjust unimplemented");
      raise Program_Error with "Unimplemented procedure Adjust";
   end Adjust;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Object : in out Uri_T) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Finalize unimplemented");
      raise Program_Error with "Unimplemented procedure Finalize";
   end Finalize;

end Mongo.URIs;
