pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with libbson_1_0_bson_bson_types_h;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;
with System;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;
--  with stddef_h;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
--  with x86_64_linux_gnu_bits_types_time_t_h;
with System; --  with System; --  with x86_64_linux_gnu_bits_types_struct_timeval_h;

package libbson_1_0_bson_bson_iter_h is

   --  arg-macro: function BSON_ITER_HOLDS_DOUBLE (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_DOUBLE;
   --  arg-macro: function BSON_ITER_HOLDS_UTF8 (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_UTF8;
   --  arg-macro: function BSON_ITER_HOLDS_DOCUMENT (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_DOCUMENT;
   --  arg-macro: function BSON_ITER_HOLDS_ARRAY (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_ARRAY;
   --  arg-macro: function BSON_ITER_HOLDS_BINARY (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_BINARY;
   --  arg-macro: function BSON_ITER_HOLDS_UNDEFINED (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_UNDEFINED;
   --  arg-macro: function BSON_ITER_HOLDS_OID (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_OID;
   --  arg-macro: function BSON_ITER_HOLDS_BOOL (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_BOOL;
   --  arg-macro: function BSON_ITER_HOLDS_DATE_TIME (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_DATE_TIME;
   --  arg-macro: function BSON_ITER_HOLDS_NULL (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_NULL;
   --  arg-macro: function BSON_ITER_HOLDS_REGEX (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_REGEX;
   --  arg-macro: function BSON_ITER_HOLDS_DBPOINTER (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_DBPOINTER;
   --  arg-macro: function BSON_ITER_HOLDS_CODE (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_CODE;
   --  arg-macro: function BSON_ITER_HOLDS_SYMBOL (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_SYMBOL;
   --  arg-macro: function BSON_ITER_HOLDS_CODEWSCOPE (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_CODEWSCOPE;
   --  arg-macro: function BSON_ITER_HOLDS_INT32 (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_INT32;
   --  arg-macro: function BSON_ITER_HOLDS_TIMESTAMP (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_TIMESTAMP;
   --  arg-macro: function BSON_ITER_HOLDS_INT64 (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_INT64;
   --  arg-macro: function BSON_ITER_HOLDS_DECIMAL128 (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_DECIMAL128;
   --  arg-macro: function BSON_ITER_HOLDS_MAXKEY (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_MAXKEY;
   --  arg-macro: function BSON_ITER_HOLDS_MINKEY (iter)
   --    return bson_iter_type ((iter)) = BSON_TYPE_MINKEY;
   --  arg-macro: function BSON_ITER_HOLDS_INT (iter)
   --    return BSON_ITER_HOLDS_INT32 (iter)  or else  BSON_ITER_HOLDS_INT64 (iter);
   --  arg-macro: function BSON_ITER_HOLDS_NUMBER (iter)
   --    return BSON_ITER_HOLDS_INT (iter)  or else  BSON_ITER_HOLDS_DOUBLE (iter);
   --  arg-macro: function BSON_ITER_IS_KEY (iter, key)
   --    return 0 = strcmp ((key), bson_iter_key ((iter)));
   function bson_iter_value (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_value_t  -- /usr/include/libbson-1.0/bson/bson-iter.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_value";

   function bson_iter_utf8_len_unsafe (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return Interfaces.Unsigned_32  -- /usr/include/libbson-1.0/bson/bson-iter.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_utf8_len_unsafe";

   procedure bson_iter_array
     (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t;
      array_len : access Interfaces.Unsigned_32;
      c_array : System.Address)  -- /usr/include/libbson-1.0/bson/bson-iter.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_array";

   procedure bson_iter_binary
     (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t;
      c_subtype : access libbson_1_0_bson_bson_types_h.bson_subtype_t;
      binary_len : access Interfaces.Unsigned_32;
      binary : System.Address)  -- /usr/include/libbson-1.0/bson/bson-iter.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_binary";

   function bson_iter_code (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t; length : access Interfaces.Unsigned_32) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson-iter.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_code";

   function bson_iter_code_unsafe (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t; length : access Interfaces.Unsigned_32) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson-iter.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_code_unsafe";

   function bson_iter_codewscope
     (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t;
      length : access Interfaces.Unsigned_32;
      scope_len : access Interfaces.Unsigned_32;
      scope : System.Address) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson-iter.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_codewscope";

   procedure bson_iter_dbpointer
     (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t;
      collection_len : access Interfaces.Unsigned_32;
      collection : System.Address;
      oid : System.Address)  -- /usr/include/libbson-1.0/bson/bson-iter.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_dbpointer";

   procedure bson_iter_document
     (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t;
      document_len : access Interfaces.Unsigned_32;
      document : System.Address)  -- /usr/include/libbson-1.0/bson/bson-iter.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_document";

   function bson_iter_double (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return double  -- /usr/include/libbson-1.0/bson/bson-iter.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_double";

   function bson_iter_as_double (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return double  -- /usr/include/libbson-1.0/bson/bson-iter.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_as_double";

   function bson_iter_double_unsafe (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return double  -- /usr/include/libbson-1.0/bson/bson-iter.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_double_unsafe";

   function bson_iter_init (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t; bson : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-iter.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_init";

   function bson_iter_init_from_data
     (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t;
      data : access Interfaces.Unsigned_8;
      length : size_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-iter.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_init_from_data";

   function bson_iter_init_find
     (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t;
      bson : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-iter.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_init_find";

   function bson_iter_init_find_w_len
     (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t;
      bson : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      keylen : int) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-iter.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_init_find_w_len";

   function bson_iter_init_find_case
     (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t;
      bson : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-iter.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_init_find_case";

   function bson_iter_init_from_data_at_offset
     (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t;
      data : access Interfaces.Unsigned_8;
      length : size_t;
      offset : Interfaces.Unsigned_32;
      keylen : Interfaces.Unsigned_32) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-iter.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_init_from_data_at_offset";

   function bson_iter_int32 (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return Interfaces.Integer_32  -- /usr/include/libbson-1.0/bson/bson-iter.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_int32";

   function bson_iter_int32_unsafe (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return Interfaces.Integer_32  -- /usr/include/libbson-1.0/bson/bson-iter.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_int32_unsafe";

   function bson_iter_int64 (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return Interfaces.Integer_64  -- /usr/include/libbson-1.0/bson/bson-iter.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_int64";

   function bson_iter_as_int64 (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return Interfaces.Integer_64  -- /usr/include/libbson-1.0/bson/bson-iter.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_as_int64";

   function bson_iter_int64_unsafe (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return Interfaces.Integer_64  -- /usr/include/libbson-1.0/bson/bson-iter.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_int64_unsafe";

   function bson_iter_find (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t; key : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-iter.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_find";

   function bson_iter_find_w_len
     (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t;
      key : Interfaces.C.Strings.chars_ptr;
      keylen : int) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-iter.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_find_w_len";

   function bson_iter_find_case (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t; key : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-iter.h:287
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_find_case";

   function bson_iter_find_descendant
     (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t;
      dotkey : Interfaces.C.Strings.chars_ptr;
      descendant : access libbson_1_0_bson_bson_types_h.bson_iter_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-iter.h:291
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_find_descendant";

   function bson_iter_next (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-iter.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_next";

   function bson_iter_oid (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return access constant libbson_1_0_bson_bson_types_h.bson_oid_t  -- /usr/include/libbson-1.0/bson/bson-iter.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_oid";

   function bson_iter_oid_unsafe (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return access constant libbson_1_0_bson_bson_types_h.bson_oid_t  -- /usr/include/libbson-1.0/bson/bson-iter.h:313
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_oid_unsafe";

   function bson_iter_decimal128 (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t; dec : access libbson_1_0_bson_bson_types_h.bson_decimal128_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-iter.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_decimal128";

   procedure bson_iter_decimal128_unsafe (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t; dec : access libbson_1_0_bson_bson_types_h.bson_decimal128_t)  -- /usr/include/libbson-1.0/bson/bson-iter.h:332
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_decimal128_unsafe";

   function bson_iter_key (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson-iter.h:346
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_key";

   function bson_iter_key_len (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return Interfaces.Unsigned_32  -- /usr/include/libbson-1.0/bson/bson-iter.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_key_len";

   function bson_iter_key_unsafe (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson-iter.h:361
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_key_unsafe";

   function bson_iter_utf8 (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t; length : access Interfaces.Unsigned_32) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson-iter.h:368
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_utf8";

   function bson_iter_utf8_unsafe (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t; length : access size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson-iter.h:379
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_utf8_unsafe";

   function bson_iter_dup_utf8 (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t; length : access Interfaces.Unsigned_32) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson-iter.h:387
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_dup_utf8";

   function bson_iter_date_time (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return Interfaces.Integer_64  -- /usr/include/libbson-1.0/bson/bson-iter.h:391
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_date_time";

   function bson_iter_time_t (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return Long_Long_Integer  -- /usr/include/libbson-1.0/bson/bson-iter.h:395
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_time_t";

   function bson_iter_time_t_unsafe (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return Long_Long_Integer  -- /usr/include/libbson-1.0/bson/bson-iter.h:408
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_time_t_unsafe";

   procedure bson_iter_timeval (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t; tv : System.Address)  -- /usr/include/libbson-1.0/bson/bson-iter.h:415
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_timeval";

   procedure bson_iter_timeval_unsafe (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t; tv : System.Address)  -- /usr/include/libbson-1.0/bson/bson-iter.h:426
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_timeval_unsafe";

   procedure bson_iter_timestamp
     (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t;
      timestamp : access Interfaces.Unsigned_32;
      increment : access Interfaces.Unsigned_32)  -- /usr/include/libbson-1.0/bson/bson-iter.h:439
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_timestamp";

   function bson_iter_bool (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-iter.h:445
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_bool";

   function bson_iter_bool_unsafe (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-iter.h:457
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_bool_unsafe";

   function bson_iter_as_bool (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-iter.h:467
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_as_bool";

   function bson_iter_regex (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t; options : System.Address) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson-iter.h:471
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_regex";

   function bson_iter_symbol (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t; length : access Interfaces.Unsigned_32) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson-iter.h:475
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_symbol";

   function bson_iter_type (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return libbson_1_0_bson_bson_types_h.bson_type_t  -- /usr/include/libbson-1.0/bson/bson-iter.h:479
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_type";

   function bson_iter_type_unsafe (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return libbson_1_0_bson_bson_types_h.bson_type_t  -- /usr/include/libbson-1.0/bson/bson-iter.h:491
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_type_unsafe";

   function bson_iter_recurse (iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t; child : access libbson_1_0_bson_bson_types_h.bson_iter_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-iter.h:498
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_recurse";

   procedure bson_iter_overwrite_int32 (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t; value : Interfaces.Integer_32)  -- /usr/include/libbson-1.0/bson/bson-iter.h:502
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_overwrite_int32";

   procedure bson_iter_overwrite_int64 (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t; value : Interfaces.Integer_64)  -- /usr/include/libbson-1.0/bson/bson-iter.h:506
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_overwrite_int64";

   procedure bson_iter_overwrite_double (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t; value : double)  -- /usr/include/libbson-1.0/bson/bson-iter.h:510
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_overwrite_double";

   procedure bson_iter_overwrite_decimal128 (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t; value : access constant libbson_1_0_bson_bson_types_h.bson_decimal128_t)  -- /usr/include/libbson-1.0/bson/bson-iter.h:514
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_overwrite_decimal128";

   procedure bson_iter_overwrite_bool (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t; value : Extensions.bool)  -- /usr/include/libbson-1.0/bson/bson-iter.h:518
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_overwrite_bool";

   procedure bson_iter_overwrite_oid (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t; value : access constant libbson_1_0_bson_bson_types_h.bson_oid_t)  -- /usr/include/libbson-1.0/bson/bson-iter.h:522
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_overwrite_oid";

   procedure bson_iter_overwrite_timestamp
     (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t;
      timestamp : Interfaces.Unsigned_32;
      increment : Interfaces.Unsigned_32)  -- /usr/include/libbson-1.0/bson/bson-iter.h:526
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_overwrite_timestamp";

   procedure bson_iter_overwrite_date_time (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t; value : Interfaces.Integer_64)  -- /usr/include/libbson-1.0/bson/bson-iter.h:532
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_overwrite_date_time";

   function bson_iter_visit_all
     (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t;
      visitor : access constant libbson_1_0_bson_bson_types_h.bson_visitor_t;
      data : System.Address) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-iter.h:536
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_visit_all";

   function bson_iter_offset (iter : access libbson_1_0_bson_bson_types_h.bson_iter_t) return Interfaces.Unsigned_32  -- /usr/include/libbson-1.0/bson/bson-iter.h:541
   with Import => True, 
        Convention => C, 
        External_Name => "bson_iter_offset";

end libbson_1_0_bson_bson_iter_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
