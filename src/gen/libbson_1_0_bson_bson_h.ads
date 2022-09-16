pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with libbson_1_0_bson_bson_types_h;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;
--  with stdio_h;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;
--  with stddef_h;
with System;
with libbson_1_0_bson_bson_memory_h;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
--  with x86_64_linux_gnu_bits_types_time_t_h;
with System; --  with System; --  with x86_64_linux_gnu_bits_types_struct_timeval_h;

package libbson_1_0_bson_bson_h is

   --  arg-macro: function bson_empty (b)
   --    return ((b).len = 5)  or else  notbson_get_data ((b))(4);
   --  arg-macro: function bson_empty0 (b)
   --    return not(b)  or else  bson_empty (b);
   --  arg-macro: procedure bson_clear (bptr)
   --    do { if (*(bptr)) { bson_destroy (*(bptr)); *(bptr) := NULL; } } while (0)
   --  unsupported macro: BSON_MAX_SIZE ((size_t) ((1U << 31) - 1))
   --  arg-macro: procedure BSON_APPEND_ARRAY (b, key, val)
   --    bson_append_array (b, key, (int) strlen (key), val)
   --  arg-macro: procedure BSON_APPEND_ARRAY_BEGIN (b, key, child)
   --    bson_append_array_begin (b, key, (int) strlen (key), child)
   --  arg-macro: procedure BSON_APPEND_BINARY (b, key, subtype, val, len)
   --    bson_append_binary (b, key, (int) strlen (key), subtype, val, len)
   --  arg-macro: procedure BSON_APPEND_BOOL (b, key, val)
   --    bson_append_bool (b, key, (int) strlen (key), val)
   --  arg-macro: procedure BSON_APPEND_CODE (b, key, val)
   --    bson_append_code (b, key, (int) strlen (key), val)
   --  arg-macro: procedure BSON_APPEND_CODE_WITH_SCOPE (b, key, val, scope)
   --    bson_append_code_with_scope (b, key, (int) strlen (key), val, scope)
   --  arg-macro: procedure BSON_APPEND_DBPOINTER (b, key, coll, oid)
   --    bson_append_dbpointer (b, key, (int) strlen (key), coll, oid)
   --  arg-macro: procedure BSON_APPEND_DOCUMENT_BEGIN (b, key, child)
   --    bson_append_document_begin (b, key, (int) strlen (key), child)
   --  arg-macro: procedure BSON_APPEND_DOUBLE (b, key, val)
   --    bson_append_double (b, key, (int) strlen (key), val)
   --  arg-macro: procedure BSON_APPEND_DOCUMENT (b, key, val)
   --    bson_append_document (b, key, (int) strlen (key), val)
   --  arg-macro: procedure BSON_APPEND_INT32 (b, key, val)
   --    bson_append_int32 (b, key, (int) strlen (key), val)
   --  arg-macro: procedure BSON_APPEND_INT64 (b, key, val)
   --    bson_append_int64 (b, key, (int) strlen (key), val)
   --  arg-macro: procedure BSON_APPEND_MINKEY (b, key)
   --    bson_append_minkey (b, key, (int) strlen (key))
   --  arg-macro: procedure BSON_APPEND_DECIMAL128 (b, key, val)
   --    bson_append_decimal128 (b, key, (int) strlen (key), val)
   --  arg-macro: procedure BSON_APPEND_MAXKEY (b, key)
   --    bson_append_maxkey (b, key, (int) strlen (key))
   --  arg-macro: procedure BSON_APPEND_NULL (b, key)
   --    bson_append_null (b, key, (int) strlen (key))
   --  arg-macro: procedure BSON_APPEND_OID (b, key, val)
   --    bson_append_oid (b, key, (int) strlen (key), val)
   --  arg-macro: procedure BSON_APPEND_REGEX (b, key, val, opt)
   --    bson_append_regex (b, key, (int) strlen (key), val, opt)
   --  arg-macro: procedure BSON_APPEND_UTF8 (b, key, val)
   --    bson_append_utf8 (b, key, (int) strlen (key), val, (int) strlen (val))
   --  arg-macro: procedure BSON_APPEND_SYMBOL (b, key, val)
   --    bson_append_symbol (b, key, (int) strlen (key), val, (int) strlen (val))
   --  arg-macro: procedure BSON_APPEND_TIME_T (b, key, val)
   --    bson_append_time_t (b, key, (int) strlen (key), val)
   --  arg-macro: procedure BSON_APPEND_TIMEVAL (b, key, val)
   --    bson_append_timeval (b, key, (int) strlen (key), val)
   --  arg-macro: procedure BSON_APPEND_DATE_TIME (b, key, val)
   --    bson_append_date_time (b, key, (int) strlen (key), val)
   --  arg-macro: procedure BSON_APPEND_TIMESTAMP (b, key, val, inc)
   --    bson_append_timestamp (b, key, (int) strlen (key), val, inc)
   --  arg-macro: procedure BSON_APPEND_UNDEFINED (b, key)
   --    bson_append_undefined (b, key, (int) strlen (key))
   --  arg-macro: procedure BSON_APPEND_VALUE (b, key, val)
   --    bson_append_value (b, key, (int) strlen (key), (val))
   function bson_new return access libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libbson-1.0/bson/bson.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "bson_new";

   function bson_new_from_json
     (data : access Interfaces.Unsigned_8;
      len : size_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libbson-1.0/bson/bson.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "bson_new_from_json";

   function bson_init_from_json
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      data : Interfaces.C.Strings.chars_ptr;
      len : size_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "bson_init_from_json";

   function bson_init_static
     (b : access libbson_1_0_bson_bson_types_h.u_bson_t;
      data : access Interfaces.Unsigned_8;
      length : size_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "bson_init_static";

   procedure bson_init (b : access libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libbson-1.0/bson/bson.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "bson_init";

   procedure bson_reinit (b : access libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libbson-1.0/bson/bson.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "bson_reinit";

   function bson_new_from_data (data : access Interfaces.Unsigned_8; length : size_t) return access libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libbson-1.0/bson/bson.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "bson_new_from_data";

   function bson_new_from_buffer
     (buf : System.Address;
      buf_len : access size_t;
      realloc_func : libbson_1_0_bson_bson_memory_h.bson_realloc_func;
      realloc_func_ctx : System.Address) return access libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libbson-1.0/bson/bson.h:280
   with Import => True, 
        Convention => C, 
        External_Name => "bson_new_from_buffer";

   function bson_sized_new (size : size_t) return access libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libbson-1.0/bson/bson.h:296
   with Import => True, 
        Convention => C, 
        External_Name => "bson_sized_new";

   function bson_copy (bson : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return access libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libbson-1.0/bson/bson.h:309
   with Import => True, 
        Convention => C, 
        External_Name => "bson_copy";

   procedure bson_copy_to (src : access constant libbson_1_0_bson_bson_types_h.u_bson_t; dst : access libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libbson-1.0/bson/bson.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "bson_copy_to";

   procedure bson_copy_to_excluding
     (src : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      dst : access libbson_1_0_bson_bson_types_h.u_bson_t;
      first_exclude : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /usr/include/libbson-1.0/bson/bson.h:335
   with Import => True, 
        Convention => C, 
        External_Name => "bson_copy_to_excluding";

   procedure bson_copy_to_excluding_noinit
     (src : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      dst : access libbson_1_0_bson_bson_types_h.u_bson_t;
      first_exclude : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /usr/include/libbson-1.0/bson/bson.h:352
   with Import => True, 
        Convention => C, 
        External_Name => "bson_copy_to_excluding_noinit";

   procedure bson_copy_to_excluding_noinit_va
     (src : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      dst : access libbson_1_0_bson_bson_types_h.u_bson_t;
      first_exclude : Interfaces.C.Strings.chars_ptr;
      args : access System.Address)  -- /usr/include/libbson-1.0/bson/bson.h:358
   with Import => True, 
        Convention => C, 
        External_Name => "bson_copy_to_excluding_noinit_va";

   procedure bson_destroy (bson : access libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libbson-1.0/bson/bson.h:370
   with Import => True, 
        Convention => C, 
        External_Name => "bson_destroy";

   function bson_reserve_buffer (bson : access libbson_1_0_bson_bson_types_h.u_bson_t; size : Interfaces.Unsigned_32) return access Interfaces.Unsigned_8  -- /usr/include/libbson-1.0/bson/bson.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "bson_reserve_buffer";

   function bson_steal (dst : access libbson_1_0_bson_bson_types_h.u_bson_t; src : access libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:376
   with Import => True, 
        Convention => C, 
        External_Name => "bson_steal";

   function bson_destroy_with_steal
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      steal : Extensions.bool;
      length : access Interfaces.Unsigned_32) return access Interfaces.Unsigned_8  -- /usr/include/libbson-1.0/bson/bson.h:399
   with Import => True, 
        Convention => C, 
        External_Name => "bson_destroy_with_steal";

   function bson_get_data (bson : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return access Interfaces.Unsigned_8  -- /usr/include/libbson-1.0/bson/bson.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "bson_get_data";

   function bson_count_keys (bson : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return Interfaces.Unsigned_32  -- /usr/include/libbson-1.0/bson/bson.h:421
   with Import => True, 
        Convention => C, 
        External_Name => "bson_count_keys";

   function bson_has_field (bson : access constant libbson_1_0_bson_bson_types_h.u_bson_t; key : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:436
   with Import => True, 
        Convention => C, 
        External_Name => "bson_has_field";

   function bson_compare (bson : access constant libbson_1_0_bson_bson_types_h.u_bson_t; other : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return int  -- /usr/include/libbson-1.0/bson/bson.h:450
   with Import => True, 
        Convention => C, 
        External_Name => "bson_compare";

   function bson_equal (bson : access constant libbson_1_0_bson_bson_types_h.u_bson_t; other : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:462
   with Import => True, 
        Convention => C, 
        External_Name => "bson_equal";

   function bson_validate
     (bson : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      flags : libbson_1_0_bson_bson_types_h.bson_validate_flags_t;
      offset : access size_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:476
   with Import => True, 
        Convention => C, 
        External_Name => "bson_validate";

   function bson_validate_with_error
     (bson : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      flags : libbson_1_0_bson_bson_types_h.bson_validate_flags_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:490
   with Import => True, 
        Convention => C, 
        External_Name => "bson_validate_with_error";

   function bson_as_json_with_opts
     (bson : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      length : access size_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_json_opts_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson.h:515
   with Import => True, 
        Convention => C, 
        External_Name => "bson_as_json_with_opts";

   function bson_as_canonical_extended_json (bson : access constant libbson_1_0_bson_bson_types_h.u_bson_t; length : access size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson.h:539
   with Import => True, 
        Convention => C, 
        External_Name => "bson_as_canonical_extended_json";

   function bson_as_json (bson : access constant libbson_1_0_bson_bson_types_h.u_bson_t; length : access size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson.h:556
   with Import => True, 
        Convention => C, 
        External_Name => "bson_as_json";

   function bson_as_relaxed_extended_json (bson : access constant libbson_1_0_bson_bson_types_h.u_bson_t; length : access size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson.h:578
   with Import => True, 
        Convention => C, 
        External_Name => "bson_as_relaxed_extended_json";

   function bson_array_as_json (bson : access constant libbson_1_0_bson_bson_types_h.u_bson_t; length : access size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson.h:583
   with Import => True, 
        Convention => C, 
        External_Name => "bson_array_as_json";

   function bson_append_value
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      value : access constant libbson_1_0_bson_bson_types_h.u_bson_value_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:587
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_value";

   function bson_append_array
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      c_array : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:606
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_array";

   function bson_append_binary
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      c_subtype : libbson_1_0_bson_bson_types_h.bson_subtype_t;
      binary : access Interfaces.Unsigned_8;
      length : Interfaces.Unsigned_32) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:625
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_binary";

   function bson_append_bool
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      value : Extensions.bool) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:644
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_bool";

   function bson_append_code
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      javascript : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:659
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_code";

   function bson_append_code_with_scope
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      javascript : Interfaces.C.Strings.chars_ptr;
      scope : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:678
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_code_with_scope";

   function bson_append_dbpointer
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      collection : Interfaces.C.Strings.chars_ptr;
      oid : access constant libbson_1_0_bson_bson_types_h.bson_oid_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:698
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_dbpointer";

   function bson_append_double
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      value : double) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:715
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_double";

   function bson_append_document
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      value : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:733
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_document";

   function bson_append_document_begin
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      child : access libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:757
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_document_begin";

   function bson_append_document_end (bson : access libbson_1_0_bson_bson_types_h.u_bson_t; child : access libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:774
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_document_end";

   function bson_append_array_begin
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      child : access libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:798
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_array_begin";

   function bson_append_array_end (bson : access libbson_1_0_bson_bson_types_h.u_bson_t; child : access libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:815
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_array_end";

   function bson_append_int32
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      value : Interfaces.Integer_32) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:829
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_int32";

   function bson_append_int64
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      value : Interfaces.Integer_64) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:846
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_int64";

   function bson_append_decimal128
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      value : access constant libbson_1_0_bson_bson_types_h.bson_decimal128_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:863
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_decimal128";

   function bson_append_iter
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      iter : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:882
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_iter";

   function bson_append_minkey
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:901
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_minkey";

   function bson_append_maxkey
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:917
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_maxkey";

   function bson_append_null
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:930
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_null";

   function bson_append_oid
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      oid : access constant libbson_1_0_bson_bson_types_h.bson_oid_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:945
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_oid";

   function bson_append_regex
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      regex : Interfaces.C.Strings.chars_ptr;
      options : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:975
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_regex";

   function bson_append_regex_w_len
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      regex : Interfaces.C.Strings.chars_ptr;
      regex_length : int;
      options : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:1008
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_regex_w_len";

   function bson_append_utf8
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      value : Interfaces.C.Strings.chars_ptr;
      length : int) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:1032
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_utf8";

   function bson_append_symbol
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      value : Interfaces.C.Strings.chars_ptr;
      length : int) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:1054
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_symbol";

   function bson_append_time_t
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      value : Long_Long_Integer) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:1073
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_time_t";

   function bson_append_timeval
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      value : System.Address) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:1091
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_timeval";

   function bson_append_date_time
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      value : Interfaces.Integer_64) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:1109
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_date_time";

   function bson_append_now_utc
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:1127
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_now_utc";

   function bson_append_timestamp
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int;
      timestamp : Interfaces.Unsigned_32;
      increment : Interfaces.Unsigned_32) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:1146
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_timestamp";

   function bson_append_undefined
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      key : Interfaces.C.Strings.chars_ptr;
      key_length : int) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:1165
   with Import => True, 
        Convention => C, 
        External_Name => "bson_append_undefined";

   function bson_concat (dst : access libbson_1_0_bson_bson_types_h.u_bson_t; src : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson.h:1169
   with Import => True, 
        Convention => C, 
        External_Name => "bson_concat";

end libbson_1_0_bson_bson_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
