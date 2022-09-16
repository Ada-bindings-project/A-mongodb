pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;

package libmongoc_1_0_mongoc_mongoc_rand_h is

   procedure mongoc_rand_seed (buf : System.Address; num : int)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-rand.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_rand_seed";

   procedure mongoc_rand_add
     (buf : System.Address;
      num : int;
      entropy : double)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-rand.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_rand_add";

   function mongoc_rand_status return int  -- /usr/include/libmongoc-1.0/mongoc/mongoc-rand.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_rand_status";

end libmongoc_1_0_mongoc_mongoc_rand_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
