pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;
with Interfaces.C.Extensions;
with libbson_1_0_bson_bson_types_h;
with System;
--  with stddef_h;
--  with x86_64_linux_gnu_bits_stdint_intn_h;

package libbson_1_0_bson_bson_string_h is

   type bson_string_t is record
      str : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libbson-1.0/bson/bson-string.h:34
      len : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-string.h:35
      alloc : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-string.h:36
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libbson-1.0/bson/bson-string.h:37

   function bson_string_new (str : Interfaces.C.Strings.chars_ptr) return access bson_string_t  -- /usr/include/libbson-1.0/bson/bson-string.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "bson_string_new";

   function bson_string_free (string : access bson_string_t; free_segment : Extensions.bool) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson-string.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "bson_string_free";

   procedure bson_string_append (string : access bson_string_t; str : Interfaces.C.Strings.chars_ptr)  -- /usr/include/libbson-1.0/bson/bson-string.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "bson_string_append";

   procedure bson_string_append_c (string : access bson_string_t; str : char)  -- /usr/include/libbson-1.0/bson/bson-string.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "bson_string_append_c";

   procedure bson_string_append_unichar (string : access bson_string_t; unichar : libbson_1_0_bson_bson_types_h.bson_unichar_t)  -- /usr/include/libbson-1.0/bson/bson-string.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "bson_string_append_unichar";

   procedure bson_string_append_printf (string : access bson_string_t; format : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /usr/include/libbson-1.0/bson/bson-string.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "bson_string_append_printf";

   procedure bson_string_truncate (string : access bson_string_t; len : Interfaces.Unsigned_32)  -- /usr/include/libbson-1.0/bson/bson-string.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "bson_string_truncate";

   function bson_strdup (str : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson-string.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "bson_strdup";

   function bson_strdup_printf (format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson-string.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "bson_strdup_printf";

   function bson_strdupv_printf (format : Interfaces.C.Strings.chars_ptr; args : access System.Address) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson-string.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "bson_strdupv_printf";

   function bson_strndup (str : Interfaces.C.Strings.chars_ptr; n_bytes : size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson-string.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "bson_strndup";

   procedure bson_strncpy
     (dst : Interfaces.C.Strings.chars_ptr;
      src : Interfaces.C.Strings.chars_ptr;
      size : size_t)  -- /usr/include/libbson-1.0/bson/bson-string.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "bson_strncpy";

   function bson_vsnprintf
     (str : Interfaces.C.Strings.chars_ptr;
      size : size_t;
      format : Interfaces.C.Strings.chars_ptr;
      ap : access System.Address) return int  -- /usr/include/libbson-1.0/bson/bson-string.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "bson_vsnprintf";

   function bson_snprintf
     (str : Interfaces.C.Strings.chars_ptr;
      size : size_t;
      format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/libbson-1.0/bson/bson-string.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "bson_snprintf";

   procedure bson_strfreev (strv : System.Address)  -- /usr/include/libbson-1.0/bson/bson-string.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "bson_strfreev";

   function bson_strnlen (s : Interfaces.C.Strings.chars_ptr; maxlen : size_t) return size_t  -- /usr/include/libbson-1.0/bson/bson-string.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "bson_strnlen";

   function bson_ascii_strtoll
     (str : Interfaces.C.Strings.chars_ptr;
      endptr : System.Address;
      base : int) return Interfaces.Integer_64  -- /usr/include/libbson-1.0/bson/bson-string.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "bson_ascii_strtoll";

   function bson_strcasecmp (s1 : Interfaces.C.Strings.chars_ptr; s2 : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/libbson-1.0/bson/bson-string.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "bson_strcasecmp";

   function bson_isspace (c : int) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-string.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "bson_isspace";

end libbson_1_0_bson_bson_string_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
