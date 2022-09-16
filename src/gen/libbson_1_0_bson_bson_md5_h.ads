pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;

package libbson_1_0_bson_bson_md5_h is

   type anon_array2245 is array (0 .. 1) of aliased Interfaces.Unsigned_32;
   type anon_array2246 is array (0 .. 3) of aliased Interfaces.Unsigned_32;
   type anon_array2249 is array (0 .. 63) of aliased Interfaces.Unsigned_8;
   type bson_md5_t is record
      count : aliased anon_array2245;  -- /usr/include/libbson-1.0/bson/bson-md5.h:70
      abcd : aliased anon_array2246;  -- /usr/include/libbson-1.0/bson/bson-md5.h:71
      buf : aliased anon_array2249;  -- /usr/include/libbson-1.0/bson/bson-md5.h:72
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libbson-1.0/bson/bson-md5.h:73

   procedure bson_md5_init (pms : access bson_md5_t)  -- /usr/include/libbson-1.0/bson/bson-md5.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "bson_md5_init";

   procedure bson_md5_append
     (pms : access bson_md5_t;
      data : access Interfaces.Unsigned_8;
      nbytes : Interfaces.Unsigned_32)  -- /usr/include/libbson-1.0/bson/bson-md5.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "bson_md5_append";

   procedure bson_md5_finish (pms : access bson_md5_t; digest : access Interfaces.Unsigned_8)  -- /usr/include/libbson-1.0/bson/bson-md5.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "bson_md5_finish";

end libbson_1_0_bson_bson_md5_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
