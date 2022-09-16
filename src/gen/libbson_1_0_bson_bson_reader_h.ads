pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
--  with stddef_h;
--  with stdio_h;
limited with libbson_1_0_bson_bson_types_h;
with Interfaces.C.Extensions;
with Interfaces.C.Strings;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;

package libbson_1_0_bson_bson_reader_h is

   BSON_ERROR_READER_BADFD : constant := 1;  --  /usr/include/libbson-1.0/bson/bson-reader.h:32

   type bson_reader_read_func_t is access function
        (arg1 : System.Address;
         arg2 : System.Address;
         arg3 : size_t) return size_t
   with Convention => C;  -- /usr/include/libbson-1.0/bson/bson-reader.h:62

   type bson_reader_destroy_func_t is access procedure (arg1 : System.Address)
   with Convention => C;  -- /usr/include/libbson-1.0/bson/bson-reader.h:87

   function bson_reader_new_from_handle
     (handle : System.Address;
      rf : bson_reader_read_func_t;
      df : bson_reader_destroy_func_t) return access libbson_1_0_bson_bson_types_h.bson_reader_t  -- /usr/include/libbson-1.0/bson/bson-reader.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "bson_reader_new_from_handle";

   function bson_reader_new_from_fd (fd : int; close_on_destroy : Extensions.bool) return access libbson_1_0_bson_bson_types_h.bson_reader_t  -- /usr/include/libbson-1.0/bson/bson-reader.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "bson_reader_new_from_fd";

   function bson_reader_new_from_file (path : Interfaces.C.Strings.chars_ptr; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libbson_1_0_bson_bson_types_h.bson_reader_t  -- /usr/include/libbson-1.0/bson/bson-reader.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "bson_reader_new_from_file";

   function bson_reader_new_from_data (data : access Interfaces.Unsigned_8; length : size_t) return access libbson_1_0_bson_bson_types_h.bson_reader_t  -- /usr/include/libbson-1.0/bson/bson-reader.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "bson_reader_new_from_data";

   procedure bson_reader_destroy (reader : access libbson_1_0_bson_bson_types_h.bson_reader_t)  -- /usr/include/libbson-1.0/bson/bson-reader.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "bson_reader_destroy";

   procedure bson_reader_set_read_func (reader : access libbson_1_0_bson_bson_types_h.bson_reader_t; func : bson_reader_read_func_t)  -- /usr/include/libbson-1.0/bson/bson-reader.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "bson_reader_set_read_func";

   procedure bson_reader_set_destroy_func (reader : access libbson_1_0_bson_bson_types_h.bson_reader_t; func : bson_reader_destroy_func_t)  -- /usr/include/libbson-1.0/bson/bson-reader.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "bson_reader_set_destroy_func";

   function bson_reader_read (reader : access libbson_1_0_bson_bson_types_h.bson_reader_t; reached_eof : access Extensions.bool) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libbson-1.0/bson/bson-reader.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "bson_reader_read";

   function bson_reader_tell (reader : access libbson_1_0_bson_bson_types_h.bson_reader_t) return int  -- /usr/include/libbson-1.0/bson/bson-reader.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "bson_reader_tell";

   procedure bson_reader_reset (reader : access libbson_1_0_bson_bson_types_h.bson_reader_t)  -- /usr/include/libbson-1.0/bson/bson-reader.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "bson_reader_reset";

end libbson_1_0_bson_bson_reader_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
