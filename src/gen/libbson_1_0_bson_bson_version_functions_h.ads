pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;

package libbson_1_0_bson_bson_version_functions_h is

   function bson_get_major_version return int  -- /usr/include/libbson-1.0/bson/bson-version-functions.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "bson_get_major_version";

   function bson_get_minor_version return int  -- /usr/include/libbson-1.0/bson/bson-version-functions.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "bson_get_minor_version";

   function bson_get_micro_version return int  -- /usr/include/libbson-1.0/bson/bson-version-functions.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "bson_get_micro_version";

   function bson_get_version return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson-version-functions.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "bson_get_version";

   function bson_check_version
     (required_major : int;
      required_minor : int;
      required_micro : int) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-version-functions.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "bson_check_version";

end libbson_1_0_bson_bson_version_functions_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
