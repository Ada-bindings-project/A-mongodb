pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
--  with stddef_h;
with Interfaces.C.Extensions;
--  with stdio_h;
with libbson_1_0_bson_bson_types_h;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;

package libbson_1_0_bson_bson_utf8_h is

   function bson_utf8_validate
     (utf8 : Interfaces.C.Strings.chars_ptr;
      utf8_len : size_t;
      allow_null : Extensions.bool) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-utf8.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "bson_utf8_validate";

   function bson_utf8_escape_for_json (utf8 : Interfaces.C.Strings.chars_ptr; utf8_len : size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson-utf8.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "bson_utf8_escape_for_json";

   function bson_utf8_get_char (utf8 : Interfaces.C.Strings.chars_ptr) return libbson_1_0_bson_bson_types_h.bson_unichar_t  -- /usr/include/libbson-1.0/bson/bson-utf8.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "bson_utf8_get_char";

   function bson_utf8_next_char (utf8 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson-utf8.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "bson_utf8_next_char";

   procedure bson_utf8_from_unichar
     (unichar : libbson_1_0_bson_bson_types_h.bson_unichar_t;
      utf8 : Interfaces.C.Strings.chars_ptr;
      len : access Interfaces.Unsigned_32)  -- /usr/include/libbson-1.0/bson/bson-utf8.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "bson_utf8_from_unichar";

end libbson_1_0_bson_bson_utf8_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
