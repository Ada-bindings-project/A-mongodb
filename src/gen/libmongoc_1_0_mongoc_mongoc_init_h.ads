pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package libmongoc_1_0_mongoc_mongoc_init_h is

   procedure mongoc_init  -- /usr/include/libmongoc-1.0/mongoc/mongoc-init.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_init";

   procedure mongoc_cleanup  -- /usr/include/libmongoc-1.0/mongoc/mongoc-init.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_cleanup";

end libmongoc_1_0_mongoc_mongoc_init_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
