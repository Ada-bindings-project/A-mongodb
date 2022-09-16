pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;

package libmongoc_1_0_mongoc_mongoc_version_functions_h is

   function mongoc_get_major_version return int  -- /usr/include/libmongoc-1.0/mongoc/mongoc-version-functions.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_get_major_version";

   function mongoc_get_minor_version return int  -- /usr/include/libmongoc-1.0/mongoc/mongoc-version-functions.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_get_minor_version";

   function mongoc_get_micro_version return int  -- /usr/include/libmongoc-1.0/mongoc/mongoc-version-functions.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_get_micro_version";

   function mongoc_get_version return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-version-functions.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_get_version";

   function mongoc_check_version
     (required_major : int;
      required_minor : int;
      required_micro : int) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-version-functions.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_check_version";

end libmongoc_1_0_mongoc_mongoc_version_functions_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
