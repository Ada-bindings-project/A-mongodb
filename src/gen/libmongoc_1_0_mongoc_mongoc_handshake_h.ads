pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;

package libmongoc_1_0_mongoc_mongoc_handshake_h is

   MONGOC_HANDSHAKE_APPNAME_MAX : constant := 128;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-handshake.h:29

   function mongoc_handshake_data_append
     (driver_name : Interfaces.C.Strings.chars_ptr;
      driver_version : Interfaces.C.Strings.chars_ptr;
      platform : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-handshake.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_handshake_data_append";

end libmongoc_1_0_mongoc_mongoc_handshake_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
