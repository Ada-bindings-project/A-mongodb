with Bson.Types;
private with libmongoc_1_0_mongoc_mongoc_read_prefs_h;

package Mongo.Read_Prefs is

   NO_MAX_STALENESS       : constant := -1;
   SMALLEST_MAX_STALENESS : Duration := 90.0;

   type Prefs_T is tagged private;
   Null_Perfs : constant Prefs_T;

   type Read_Mode_T is private;
   PRIMARY : constant Read_Mode_T;
   SECONDARY : constant Read_Mode_T;
   PRIMARY_PREFERRED : constant Read_Mode_T;
   SECONDARY_PREFERRED : constant Read_Mode_T;
   NEAREST : constant Read_Mode_T;

   function Nnew (Mode : Read_Mode_T) return  Prefs_T;

   function Copy (Read_Prefs : Prefs_T) return Prefs_T;

   procedure Destroy (Read_Prefs : in out  Prefs_T);

   function Get_Mode (Read_Prefs : Prefs_T) return Read_Mode_T;

   procedure Set_Mode (Read_Prefs : in out  Prefs_T; Mode : Read_Mode_T);

   function Get_Tags (Read_Prefs : Prefs_T) return Bson.Types.Bson_T;

   procedure Set_Tags (Read_Prefs : in out  Prefs_T; Tags : Bson.Types.Bson_T);

   procedure Add_Tag (Read_Prefs : in out  Prefs_T; Tag : Bson.Types.Bson_T);

   function Get_Max_Staleness (Read_Prefs : Prefs_T) return Duration;

   procedure Set_Max_Staleness (Read_Prefs : in out  Prefs_T; Max_Staleness : Duration);

   function Get_Hedge (Read_Prefs : Prefs_T) return Bson.Types.Bson_T;

   procedure Set_Hedge (Read_Prefs : in out  Prefs_T; Hedge : Bson.Types.Bson_T);

   function Is_Valid (Read_Prefs : Prefs_T) return Boolean;

private
   type U_Mongoc_Prefs_T_Access is access all libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t with Storage_Size => 0;
   type Prefs_T is tagged record
      Impl : U_Mongoc_Prefs_T_Access;
   end record;
   Null_Perfs : constant Prefs_T := (Impl => null);
   type Read_Mode_T is new  libmongoc_1_0_mongoc_mongoc_read_prefs_h.mongoc_read_mode_t;
   PRIMARY : constant Read_Mode_T := 1;
   SECONDARY : constant Read_Mode_T := 2;
   PRIMARY_PREFERRED : constant Read_Mode_T := 5;
   SECONDARY_PREFERRED : constant Read_Mode_T := 6;
   NEAREST : constant Read_Mode_T := 10;

end Mongo.Read_Prefs;
