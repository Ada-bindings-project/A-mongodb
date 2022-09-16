pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;
with System;
with Interfaces.C.Strings;
--  with stddef_h;

package libbson_1_0_bson_bson_keys_h is

   function bson_uint32_to_string
     (value : Interfaces.Unsigned_32;
      strptr : System.Address;
      str : Interfaces.C.Strings.chars_ptr;
      size : size_t) return size_t  -- /usr/include/libbson-1.0/bson/bson-keys.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "bson_uint32_to_string";

end libbson_1_0_bson_bson_keys_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
