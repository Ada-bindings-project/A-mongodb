pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
limited with libbson_1_0_bson_bson_types_h;
with System;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;
--  with stddef_h;
--  with stdio_h;
with Interfaces.C.Extensions;
with Interfaces.C.Strings;

package libbson_1_0_bson_bson_json_h is

   BSON_MAX_LEN_UNLIMITED : constant := -1;  --  /usr/include/libbson-1.0/bson/bson-json.h:45

   type u_bson_json_reader_t is null record;   -- incomplete struct

   subtype bson_json_reader_t is u_bson_json_reader_t;  -- /usr/include/libbson-1.0/bson/bson-json.h:30

   subtype bson_json_error_code_t is unsigned;
   bson_json_error_code_t_BSON_JSON_ERROR_READ_CORRUPT_JS : constant bson_json_error_code_t := 1;
   bson_json_error_code_t_BSON_JSON_ERROR_READ_INVALID_PARAM : constant bson_json_error_code_t := 2;
   bson_json_error_code_t_BSON_JSON_ERROR_READ_CB_FAILURE : constant bson_json_error_code_t := 3;  -- /usr/include/libbson-1.0/bson/bson-json.h:37

   type bson_json_mode_t is 
     (BSON_JSON_MODE_LEGACY,
      BSON_JSON_MODE_CANONICAL,
      BSON_JSON_MODE_RELAXED)
   with Convention => C;  -- /usr/include/libbson-1.0/bson/bson-json.h:57

   function bson_json_opts_new (mode : bson_json_mode_t; max_len : Interfaces.Integer_32) return access libbson_1_0_bson_bson_types_h.u_bson_json_opts_t  -- /usr/include/libbson-1.0/bson/bson-json.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "bson_json_opts_new";

   procedure bson_json_opts_destroy (opts : access libbson_1_0_bson_bson_types_h.u_bson_json_opts_t)  -- /usr/include/libbson-1.0/bson/bson-json.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "bson_json_opts_destroy";

   type bson_json_reader_cb is access function
        (arg1 : System.Address;
         arg2 : access Interfaces.Unsigned_8;
         arg3 : size_t) return size_t
   with Convention => C;  -- /usr/include/libbson-1.0/bson/bson-json.h:66

   type bson_json_destroy_cb is access procedure (arg1 : System.Address)
   with Convention => C;  -- /usr/include/libbson-1.0/bson/bson-json.h:69

   function bson_json_reader_new
     (data : System.Address;
      cb : bson_json_reader_cb;
      dcb : bson_json_destroy_cb;
      allow_multiple : Extensions.bool;
      buf_size : size_t) return access bson_json_reader_t  -- /usr/include/libbson-1.0/bson/bson-json.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "bson_json_reader_new";

   function bson_json_reader_new_from_fd (fd : int; close_on_destroy : Extensions.bool) return access bson_json_reader_t  -- /usr/include/libbson-1.0/bson/bson-json.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "bson_json_reader_new_from_fd";

   function bson_json_reader_new_from_file (filename : Interfaces.C.Strings.chars_ptr; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access bson_json_reader_t  -- /usr/include/libbson-1.0/bson/bson-json.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "bson_json_reader_new_from_file";

   procedure bson_json_reader_destroy (reader : access bson_json_reader_t)  -- /usr/include/libbson-1.0/bson/bson-json.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "bson_json_reader_destroy";

   function bson_json_reader_read
     (reader : access bson_json_reader_t;
      bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return int  -- /usr/include/libbson-1.0/bson/bson-json.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "bson_json_reader_read";

   function bson_json_data_reader_new (allow_multiple : Extensions.bool; size : size_t) return access bson_json_reader_t  -- /usr/include/libbson-1.0/bson/bson-json.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "bson_json_data_reader_new";

   procedure bson_json_data_reader_ingest
     (reader : access bson_json_reader_t;
      data : access Interfaces.Unsigned_8;
      len : size_t)  -- /usr/include/libbson-1.0/bson/bson-json.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "bson_json_data_reader_ingest";

end libbson_1_0_bson_bson_json_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
