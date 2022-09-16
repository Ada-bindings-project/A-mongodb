pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package libmongoc_1_0_mongoc_mongoc_optional_h is

   type mongoc_optional_t is record
      value : aliased Extensions.bool;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-optional.h:29
      is_set : aliased Extensions.bool;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-optional.h:30
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-optional.h:31

   procedure mongoc_optional_init (opt : access mongoc_optional_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-optional.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_optional_init";

   function mongoc_optional_is_set (opt : access constant mongoc_optional_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-optional.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_optional_is_set";

   function mongoc_optional_value (opt : access constant mongoc_optional_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-optional.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_optional_value";

   procedure mongoc_optional_set_value (opt : access mongoc_optional_t; val : Extensions.bool)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-optional.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_optional_set_value";

   procedure mongoc_optional_copy (source : access constant mongoc_optional_t; copy : access mongoc_optional_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-optional.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_optional_copy";

end libmongoc_1_0_mongoc_mongoc_optional_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
