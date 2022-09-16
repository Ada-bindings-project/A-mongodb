pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libbson_1_0_bson_bson_types_h;
with Interfaces.C.Extensions;
with Interfaces.C.Strings;
--  with stddef_h;
--  with x86_64_linux_gnu_bits_types_time_t_h;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;

package libbson_1_0_bson_bson_oid_h is

   function bson_oid_compare (oid1 : access constant libbson_1_0_bson_bson_types_h.bson_oid_t; oid2 : access constant libbson_1_0_bson_bson_types_h.bson_oid_t) return int  -- /usr/include/libbson-1.0/bson/bson-oid.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "bson_oid_compare";

   procedure bson_oid_copy (src : access constant libbson_1_0_bson_bson_types_h.bson_oid_t; dst : access libbson_1_0_bson_bson_types_h.bson_oid_t)  -- /usr/include/libbson-1.0/bson/bson-oid.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "bson_oid_copy";

   function bson_oid_equal (oid1 : access constant libbson_1_0_bson_bson_types_h.bson_oid_t; oid2 : access constant libbson_1_0_bson_bson_types_h.bson_oid_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-oid.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "bson_oid_equal";

   function bson_oid_is_valid (str : Interfaces.C.Strings.chars_ptr; length : size_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-oid.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "bson_oid_is_valid";

   function bson_oid_get_time_t (oid : access constant libbson_1_0_bson_bson_types_h.bson_oid_t) return Long_Long_Integer  -- /usr/include/libbson-1.0/bson/bson-oid.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "bson_oid_get_time_t";

   function bson_oid_hash (oid : access constant libbson_1_0_bson_bson_types_h.bson_oid_t) return Interfaces.Unsigned_32  -- /usr/include/libbson-1.0/bson/bson-oid.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "bson_oid_hash";

   procedure bson_oid_init (oid : access libbson_1_0_bson_bson_types_h.bson_oid_t; context : access libbson_1_0_bson_bson_types_h.u_bson_context_t)  -- /usr/include/libbson-1.0/bson/bson-oid.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "bson_oid_init";

   procedure bson_oid_init_from_data (oid : access libbson_1_0_bson_bson_types_h.bson_oid_t; data : access Interfaces.Unsigned_8)  -- /usr/include/libbson-1.0/bson/bson-oid.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "bson_oid_init_from_data";

   procedure bson_oid_init_from_string (oid : access libbson_1_0_bson_bson_types_h.bson_oid_t; str : Interfaces.C.Strings.chars_ptr)  -- /usr/include/libbson-1.0/bson/bson-oid.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "bson_oid_init_from_string";

   procedure bson_oid_init_sequence (oid : access libbson_1_0_bson_bson_types_h.bson_oid_t; context : access libbson_1_0_bson_bson_types_h.u_bson_context_t)  -- /usr/include/libbson-1.0/bson/bson-oid.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "bson_oid_init_sequence";

   procedure bson_oid_to_string (oid : access constant libbson_1_0_bson_bson_types_h.bson_oid_t; str : Interfaces.C.Strings.chars_ptr)  -- /usr/include/libbson-1.0/bson/bson-oid.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "bson_oid_to_string";

   function bson_oid_compare_unsafe (oid1 : access constant libbson_1_0_bson_bson_types_h.bson_oid_t; oid2 : access constant libbson_1_0_bson_bson_types_h.bson_oid_t) return int  -- /usr/include/libbson-1.0/bson/bson-oid.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "bson_oid_compare_unsafe";

   function bson_oid_equal_unsafe (oid1 : access constant libbson_1_0_bson_bson_types_h.bson_oid_t; oid2 : access constant libbson_1_0_bson_bson_types_h.bson_oid_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-oid.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "bson_oid_equal_unsafe";

   function bson_oid_hash_unsafe (oid : access constant libbson_1_0_bson_bson_types_h.bson_oid_t) return Interfaces.Unsigned_32  -- /usr/include/libbson-1.0/bson/bson-oid.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "bson_oid_hash_unsafe";

   procedure bson_oid_copy_unsafe (src : access constant libbson_1_0_bson_bson_types_h.bson_oid_t; dst : access libbson_1_0_bson_bson_types_h.bson_oid_t)  -- /usr/include/libbson-1.0/bson/bson-oid.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "bson_oid_copy_unsafe";

   function bson_oid_parse_hex_char (hex : char) return Interfaces.Unsigned_8  -- /usr/include/libbson-1.0/bson/bson-oid.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "bson_oid_parse_hex_char";

   procedure bson_oid_init_from_string_unsafe (oid : access libbson_1_0_bson_bson_types_h.bson_oid_t; str : Interfaces.C.Strings.chars_ptr)  -- /usr/include/libbson-1.0/bson/bson-oid.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "bson_oid_init_from_string_unsafe";

   function bson_oid_get_time_t_unsafe (oid : access constant libbson_1_0_bson_bson_types_h.bson_oid_t) return Long_Long_Integer  -- /usr/include/libbson-1.0/bson/bson-oid.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "bson_oid_get_time_t_unsafe";

end libbson_1_0_bson_bson_oid_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
