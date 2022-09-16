pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libbson_1_0_bson_bson_types_h;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;

package libbson_1_0_bson_bson_decimal128_h is

   BSON_DECIMAL128_STRING : constant := 43;  --  /usr/include/libbson-1.0/bson/bson-decimal128.h:41
   BSON_DECIMAL128_INF : aliased constant String := "Infinity" & ASCII.NUL;  --  /usr/include/libbson-1.0/bson/bson-decimal128.h:42
   BSON_DECIMAL128_NAN : aliased constant String := "NaN" & ASCII.NUL;  --  /usr/include/libbson-1.0/bson/bson-decimal128.h:43

   procedure bson_decimal128_to_string (dec : access constant libbson_1_0_bson_bson_types_h.bson_decimal128_t; str : Interfaces.C.Strings.chars_ptr)  -- /usr/include/libbson-1.0/bson/bson-decimal128.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "bson_decimal128_to_string";

   function bson_decimal128_from_string (string : Interfaces.C.Strings.chars_ptr; dec : access libbson_1_0_bson_bson_types_h.bson_decimal128_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-decimal128.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "bson_decimal128_from_string";

   function bson_decimal128_from_string_w_len
     (string : Interfaces.C.Strings.chars_ptr;
      len : int;
      dec : access libbson_1_0_bson_bson_types_h.bson_decimal128_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-decimal128.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "bson_decimal128_from_string_w_len";

end libbson_1_0_bson_bson_decimal128_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
