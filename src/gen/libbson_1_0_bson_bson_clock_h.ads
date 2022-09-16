pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
with System; --  with System; --  with x86_64_linux_gnu_bits_types_struct_timeval_h;

package libbson_1_0_bson_bson_clock_h is

   function bson_get_monotonic_time return Interfaces.Integer_64  -- /usr/include/libbson-1.0/bson/bson-clock.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "bson_get_monotonic_time";

   function bson_gettimeofday (tv : System.Address) return int  -- /usr/include/libbson-1.0/bson/bson-clock.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "bson_gettimeofday";

end libbson_1_0_bson_bson_clock_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
