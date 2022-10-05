pragma Ada_2022;

with Ada.Real_Time;
with Bson.Types;
private with libmongoc_1_0_mongoc_mongoc_write_concern_h;
package Mongo.Write_Concerns is

   W_UNACKNOWLEDGED : constant := 0;
   W_ERRORS_IGNORED : constant := -1;
   W_DEFAULT        : constant := -2;
   W_MAJORITY       : constant := -3;
   W_TAG            : constant := -4;

   type Write_Concern_T is tagged private;

   function Newc return Write_Concern_T;

   function Copy (Write_Concern : Write_Concern_T) return  Write_Concern_T;

   procedure Destroy (Write_Concern : in out Write_Concern_T);

   function Get_Fsync (Write_Concern : Write_Concern_T) return Boolean;

   procedure Set_Fsync (Write_Concern : in out Write_Concern_T; Fsync_U : Boolean);

   function Get_Journal (Write_Concern : Write_Concern_T) return Boolean;

   function Journal_Is_Set (Write_Concern : Write_Concern_T) return Boolean;

   procedure Set_Journal (Write_Concern : in out Write_Concern_T; Journal : Boolean);

   function Get_W (Write_Concern : Write_Concern_T) return Integer;

   procedure Set_W (Write_Concern : in out Write_Concern_T; W : Integer);

   function Get_Wtag (Write_Concern : Write_Concern_T) return String;

   procedure Set_Wtag (Write_Concern : in out Write_Concern_T; Tag : String);

   function Get_Wtimeout (Write_Concern : Write_Concern_T) return Duration;

   function Get_Wtimeout_Int64 (Write_Concern : Write_Concern_T) return Ada.Real_Time.Time_Span;

   procedure Set_Wtimeout (Write_Concern : in out Write_Concern_T; Wtimeout : Duration);

   procedure Set_Wtimeout_Int64 (Write_Concern : in out Write_Concern_T; Wtimeout : Ada.Real_Time.Time_Span);

   function Get_Wmajority (Write_Concern : Write_Concern_T) return Boolean;

   procedure Set_Wmajority (Write_Concern : in out Write_Concern_T; Wtimeout_Msec : Integer);

   function Is_Acknowledged (Write_Concern : Write_Concern_T) return Boolean;

   function Is_Valid (Write_Concern : Write_Concern_T) return Boolean;

   function Append (Write_Concern : in out Write_Concern_T; Doc : Bson.Types.Bson_T) return Boolean;

   function Is_Default (Write_Concern : Write_Concern_T) return Boolean;
private
   type U_Mongoc_Write_Concern_T_Access is access all libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t with Storage_Size => 0;
   type Write_Concern_T is tagged record
      Impl : U_Mongoc_Write_Concern_T_Access;
   end record;

end Mongo.Write_Concerns;
