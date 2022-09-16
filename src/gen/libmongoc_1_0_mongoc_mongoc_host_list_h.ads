pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;

package libmongoc_1_0_mongoc_mongoc_host_list_h is

   --  unsupported macro: BSON_HOST_NAME_MAX _POSIX_HOST_NAME_MAX
   type u_mongoc_host_list_t;
   subtype mongoc_host_list_t is u_mongoc_host_list_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-host-list.h:35

   subtype anon_array2593 is Interfaces.C.char_array (0 .. 255);
   subtype anon_array2595 is Interfaces.C.char_array (0 .. 261);
   type anon_array2275 is array (0 .. 3) of System.Address;
   type u_mongoc_host_list_t is record
      next : access mongoc_host_list_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-host-list.h:39
      host : aliased anon_array2593;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-host-list.h:40
      host_and_port : aliased anon_array2595;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-host-list.h:41
      port : aliased Interfaces.Unsigned_16;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-host-list.h:42
      family : aliased int;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-host-list.h:43
      padding : anon_array2275;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-host-list.h:44
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-host-list.h:38

end libmongoc_1_0_mongoc_mongoc_host_list_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
