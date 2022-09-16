pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;
with Interfaces.C.Strings;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
with Interfaces.C.Extensions;
with System;
--  with stddef_h;

package libbson_1_0_bson_bson_types_h is

   --  unsupported macro: BSON_INITIALIZER { 3, 5, { 5 } }
   BSON_ERROR_BUFFER_SIZE : constant := 504;  --  /usr/include/libbson-1.0/bson/bson-types.h:514

   subtype bson_unichar_t is Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:50

   subtype bson_context_flags_t is unsigned;
   bson_context_flags_t_BSON_CONTEXT_NONE : constant bson_context_flags_t := 0;
   bson_context_flags_t_BSON_CONTEXT_THREAD_SAFE : constant bson_context_flags_t := 1;
   bson_context_flags_t_BSON_CONTEXT_DISABLE_HOST_CACHE : constant bson_context_flags_t := 2;
   bson_context_flags_t_BSON_CONTEXT_DISABLE_PID_CACHE : constant bson_context_flags_t := 4;
   bson_context_flags_t_BSON_CONTEXT_USE_TASK_ID : constant bson_context_flags_t := 8;  -- /usr/include/libbson-1.0/bson/bson-types.h:69

   type u_bson_context_t is null record;   -- incomplete struct

   subtype bson_context_t is u_bson_context_t;  -- /usr/include/libbson-1.0/bson/bson-types.h:95

   type u_bson_json_opts_t is null record;   -- incomplete struct

   subtype bson_json_opts_t is u_bson_json_opts_t;  -- /usr/include/libbson-1.0/bson/bson-types.h:106

   type anon_array1943 is array (0 .. 119) of aliased Interfaces.Unsigned_8;
   type u_bson_t is record
      flags : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:135
      len : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:136
      padding : aliased anon_array1943;  -- /usr/include/libbson-1.0/bson/bson-types.h:137
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libbson-1.0/bson/bson-types.h:134

   subtype bson_t is u_bson_t;  -- /usr/include/libbson-1.0/bson/bson-types.h:138

   subtype static_assert_test_167bson_t is Interfaces.C.char_array (0 .. 0);  -- /usr/include/libbson-1.0/bson/bson-types.h:167

   type anon_array1949 is array (0 .. 11) of aliased Interfaces.Unsigned_8;
   type bson_oid_t is record
      bytes : aliased anon_array1949;  -- /usr/include/libbson-1.0/bson/bson-types.h:178
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libbson-1.0/bson/bson-types.h:179

   subtype static_assert_test_181oid_t is Interfaces.C.char_array (0 .. 0);  -- /usr/include/libbson-1.0/bson/bson-types.h:181

   type bson_decimal128_t is record
      low : aliased Interfaces.Unsigned_64;  -- /usr/include/libbson-1.0/bson/bson-types.h:197
      high : aliased Interfaces.Unsigned_64;  -- /usr/include/libbson-1.0/bson/bson-types.h:198
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libbson-1.0/bson/bson-types.h:203

   subtype bson_validate_flags_t is unsigned;
   bson_validate_flags_t_BSON_VALIDATE_NONE : constant bson_validate_flags_t := 0;
   bson_validate_flags_t_BSON_VALIDATE_UTF8 : constant bson_validate_flags_t := 1;
   bson_validate_flags_t_BSON_VALIDATE_DOLLAR_KEYS : constant bson_validate_flags_t := 2;
   bson_validate_flags_t_BSON_VALIDATE_DOT_KEYS : constant bson_validate_flags_t := 4;
   bson_validate_flags_t_BSON_VALIDATE_UTF8_ALLOW_NULL : constant bson_validate_flags_t := 8;
   bson_validate_flags_t_BSON_VALIDATE_EMPTY_KEYS : constant bson_validate_flags_t := 16;  -- /usr/include/libbson-1.0/bson/bson-types.h:226

   subtype bson_type_t is unsigned;
   bson_type_t_BSON_TYPE_EOD : constant bson_type_t := 0;
   bson_type_t_BSON_TYPE_DOUBLE : constant bson_type_t := 1;
   bson_type_t_BSON_TYPE_UTF8 : constant bson_type_t := 2;
   bson_type_t_BSON_TYPE_DOCUMENT : constant bson_type_t := 3;
   bson_type_t_BSON_TYPE_ARRAY : constant bson_type_t := 4;
   bson_type_t_BSON_TYPE_BINARY : constant bson_type_t := 5;
   bson_type_t_BSON_TYPE_UNDEFINED : constant bson_type_t := 6;
   bson_type_t_BSON_TYPE_OID : constant bson_type_t := 7;
   bson_type_t_BSON_TYPE_BOOL : constant bson_type_t := 8;
   bson_type_t_BSON_TYPE_DATE_TIME : constant bson_type_t := 9;
   bson_type_t_BSON_TYPE_NULL : constant bson_type_t := 10;
   bson_type_t_BSON_TYPE_REGEX : constant bson_type_t := 11;
   bson_type_t_BSON_TYPE_DBPOINTER : constant bson_type_t := 12;
   bson_type_t_BSON_TYPE_CODE : constant bson_type_t := 13;
   bson_type_t_BSON_TYPE_SYMBOL : constant bson_type_t := 14;
   bson_type_t_BSON_TYPE_CODEWSCOPE : constant bson_type_t := 15;
   bson_type_t_BSON_TYPE_INT32 : constant bson_type_t := 16;
   bson_type_t_BSON_TYPE_TIMESTAMP : constant bson_type_t := 17;
   bson_type_t_BSON_TYPE_INT64 : constant bson_type_t := 18;
   bson_type_t_BSON_TYPE_DECIMAL128 : constant bson_type_t := 19;
   bson_type_t_BSON_TYPE_MAXKEY : constant bson_type_t := 127;
   bson_type_t_BSON_TYPE_MINKEY : constant bson_type_t := 255;  -- /usr/include/libbson-1.0/bson/bson-types.h:258

   subtype bson_subtype_t is unsigned;
   bson_subtype_t_BSON_SUBTYPE_BINARY : constant bson_subtype_t := 0;
   bson_subtype_t_BSON_SUBTYPE_FUNCTION : constant bson_subtype_t := 1;
   bson_subtype_t_BSON_SUBTYPE_BINARY_DEPRECATED : constant bson_subtype_t := 2;
   bson_subtype_t_BSON_SUBTYPE_UUID_DEPRECATED : constant bson_subtype_t := 3;
   bson_subtype_t_BSON_SUBTYPE_UUID : constant bson_subtype_t := 4;
   bson_subtype_t_BSON_SUBTYPE_MD5 : constant bson_subtype_t := 5;
   bson_subtype_t_BSON_SUBTYPE_ENCRYPTED : constant bson_subtype_t := 6;
   bson_subtype_t_BSON_SUBTYPE_COLUMN : constant bson_subtype_t := 7;
   bson_subtype_t_BSON_SUBTYPE_USER : constant bson_subtype_t := 128;  -- /usr/include/libbson-1.0/bson/bson-types.h:277

   type anon_struct1963 is record
      timestamp : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:307
      increment : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:308
   end record
   with Convention => C_Pass_By_Copy;
   type anon_struct1964 is record
      str : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libbson-1.0/bson/bson-types.h:311
      len : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:312
   end record
   with Convention => C_Pass_By_Copy;
   type anon_struct1965 is record
      data : access Interfaces.Unsigned_8;  -- /usr/include/libbson-1.0/bson/bson-types.h:315
      data_len : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:316
   end record
   with Convention => C_Pass_By_Copy;
   type anon_struct1968 is record
      data : access Interfaces.Unsigned_8;  -- /usr/include/libbson-1.0/bson/bson-types.h:319
      data_len : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:320
      c_subtype : aliased bson_subtype_t;  -- /usr/include/libbson-1.0/bson/bson-types.h:321
   end record
   with Convention => C_Pass_By_Copy;
   type anon_struct1969 is record
      regex : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libbson-1.0/bson/bson-types.h:324
      options : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libbson-1.0/bson/bson-types.h:325
   end record
   with Convention => C_Pass_By_Copy;
   type anon_struct1970 is record
      collection : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libbson-1.0/bson/bson-types.h:328
      collection_len : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:329
      oid : aliased bson_oid_t;  -- /usr/include/libbson-1.0/bson/bson-types.h:330
   end record
   with Convention => C_Pass_By_Copy;
   type anon_struct1971 is record
      code : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libbson-1.0/bson/bson-types.h:333
      code_len : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:334
   end record
   with Convention => C_Pass_By_Copy;
   type anon_struct1972 is record
      code : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libbson-1.0/bson/bson-types.h:337
      scope_data : access Interfaces.Unsigned_8;  -- /usr/include/libbson-1.0/bson/bson-types.h:338
      code_len : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:339
      scope_len : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:340
   end record
   with Convention => C_Pass_By_Copy;
   type anon_struct1973 is record
      symbol : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libbson-1.0/bson/bson-types.h:343
      len : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:344
   end record
   with Convention => C_Pass_By_Copy;
   type anon_union1962 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            v_oid : aliased bson_oid_t;  -- /usr/include/libbson-1.0/bson/bson-types.h:299
         when 1 =>
            v_int64 : aliased Interfaces.Integer_64;  -- /usr/include/libbson-1.0/bson/bson-types.h:300
         when 2 =>
            v_int32 : aliased Interfaces.Integer_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:301
         when 3 =>
            v_int8 : aliased Interfaces.Integer_8;  -- /usr/include/libbson-1.0/bson/bson-types.h:302
         when 4 =>
            v_double : aliased double;  -- /usr/include/libbson-1.0/bson/bson-types.h:303
         when 5 =>
            v_bool : aliased Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:304
         when 6 =>
            v_datetime : aliased Interfaces.Integer_64;  -- /usr/include/libbson-1.0/bson/bson-types.h:305
         when 7 =>
            v_timestamp : aliased anon_struct1963;  -- /usr/include/libbson-1.0/bson/bson-types.h:309
         when 8 =>
            v_utf8 : aliased anon_struct1964;  -- /usr/include/libbson-1.0/bson/bson-types.h:313
         when 9 =>
            v_doc : aliased anon_struct1965;  -- /usr/include/libbson-1.0/bson/bson-types.h:317
         when 10 =>
            v_binary : aliased anon_struct1968;  -- /usr/include/libbson-1.0/bson/bson-types.h:322
         when 11 =>
            v_regex : aliased anon_struct1969;  -- /usr/include/libbson-1.0/bson/bson-types.h:326
         when 12 =>
            v_dbpointer : aliased anon_struct1970;  -- /usr/include/libbson-1.0/bson/bson-types.h:331
         when 13 =>
            v_code : aliased anon_struct1971;  -- /usr/include/libbson-1.0/bson/bson-types.h:335
         when 14 =>
            v_codewscope : aliased anon_struct1972;  -- /usr/include/libbson-1.0/bson/bson-types.h:341
         when 15 =>
            v_symbol : aliased anon_struct1973;  -- /usr/include/libbson-1.0/bson/bson-types.h:345
         when others =>
            v_decimal128 : aliased bson_decimal128_t;  -- /usr/include/libbson-1.0/bson/bson-types.h:346
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type u_bson_value_t is record
      value_type : aliased bson_type_t;  -- /usr/include/libbson-1.0/bson/bson-types.h:296
      padding : aliased Interfaces.Integer_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:297
      value : aliased anon_union1962;  -- /usr/include/libbson-1.0/bson/bson-types.h:347
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libbson-1.0/bson/bson-types.h:295

   subtype bson_value_t is u_bson_value_t;  -- /usr/include/libbson-1.0/bson/bson-types.h:348

   type bson_iter_t is record
      raw : access Interfaces.Unsigned_8;  -- /usr/include/libbson-1.0/bson/bson-types.h:364
      len : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:365
      off : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:366
      c_type : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:367
      key : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:368
      d1 : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:369
      d2 : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:370
      d3 : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:371
      d4 : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:372
      next_off : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:373
      err_off : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:374
      value : aliased bson_value_t;  -- /usr/include/libbson-1.0/bson/bson-types.h:375
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libbson-1.0/bson/bson-types.h:376

   type bson_reader_t is record
      c_type : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:390
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libbson-1.0/bson/bson-types.h:392

   type anon_array2064 is array (0 .. 6) of System.Address;
   type bson_visitor_t is record
      visit_before : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:413
      visit_after : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:414
      visit_corrupt : access procedure (arg1 : access constant bson_iter_t; arg2 : System.Address);  -- /usr/include/libbson-1.0/bson/bson-types.h:416
      visit_double : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : double;
            arg4 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:418
      visit_utf8 : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : size_t;
            arg4 : Interfaces.C.Strings.chars_ptr;
            arg5 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:422
      visit_document : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : access constant bson_t;
            arg4 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:427
      visit_array : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : access constant bson_t;
            arg4 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:431
      visit_binary : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : bson_subtype_t;
            arg4 : size_t;
            arg5 : access Interfaces.Unsigned_8;
            arg6 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:435
      visit_undefined : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:442
      visit_oid : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : access constant bson_oid_t;
            arg4 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:445
      visit_bool : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : Extensions.bool;
            arg4 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:449
      visit_date_time : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : Interfaces.Integer_64;
            arg4 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:453
      visit_null : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:457
      visit_regex : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : Interfaces.C.Strings.chars_ptr;
            arg4 : Interfaces.C.Strings.chars_ptr;
            arg5 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:458
      visit_dbpointer : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : size_t;
            arg4 : Interfaces.C.Strings.chars_ptr;
            arg5 : access constant bson_oid_t;
            arg6 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:463
      visit_code : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : size_t;
            arg4 : Interfaces.C.Strings.chars_ptr;
            arg5 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:469
      visit_symbol : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : size_t;
            arg4 : Interfaces.C.Strings.chars_ptr;
            arg5 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:474
      visit_codewscope : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : size_t;
            arg4 : Interfaces.C.Strings.chars_ptr;
            arg5 : access constant bson_t;
            arg6 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:479
      visit_int32 : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : Interfaces.Integer_32;
            arg4 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:485
      visit_timestamp : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : Interfaces.Unsigned_32;
            arg4 : Interfaces.Unsigned_32;
            arg5 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:489
      visit_int64 : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : Interfaces.Integer_64;
            arg4 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:494
      visit_maxkey : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:498
      visit_minkey : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:499
      visit_unsupported_type : access procedure
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : Interfaces.Unsigned_32;
            arg4 : System.Address);  -- /usr/include/libbson-1.0/bson/bson-types.h:502
      visit_decimal128 : access function
           (arg1 : access constant bson_iter_t;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : access constant bson_decimal128_t;
            arg4 : System.Address) return Extensions.bool;  -- /usr/include/libbson-1.0/bson/bson-types.h:506
      padding : anon_array2064;  -- /usr/include/libbson-1.0/bson/bson-types.h:511
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libbson-1.0/bson/bson-types.h:512

   subtype anon_array2068 is Interfaces.C.char_array (0 .. 503);
   type u_bson_error_t is record
      domain : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:518
      code : aliased Interfaces.Unsigned_32;  -- /usr/include/libbson-1.0/bson/bson-types.h:519
      message : aliased anon_array2068;  -- /usr/include/libbson-1.0/bson/bson-types.h:520
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libbson-1.0/bson/bson-types.h:517

   subtype bson_error_t is u_bson_error_t;  -- /usr/include/libbson-1.0/bson/bson-types.h:521

   subtype static_assert_test_524error_t is Interfaces.C.char_array (0 .. 0);  -- /usr/include/libbson-1.0/bson/bson-types.h:524

   function bson_next_power_of_two (v : size_t) return size_t  -- /usr/include/libbson-1.0/bson/bson-types.h:539
   with Import => True, 
        Convention => C, 
        External_Name => "bson_next_power_of_two";

   function bson_is_power_of_two (v : Interfaces.Unsigned_32) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-types.h:557
   with Import => True, 
        Convention => C, 
        External_Name => "bson_is_power_of_two";

end libbson_1_0_bson_bson_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
