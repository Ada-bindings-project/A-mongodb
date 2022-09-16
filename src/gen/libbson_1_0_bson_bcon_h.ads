pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with libbson_1_0_bson_bson_types_h;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
with Interfaces.C.Extensions;

package libbson_1_0_bson_bcon_h is

   BCON_STACK_MAX : constant := 100;  --  /usr/include/libbson-1.0/bson/bcon.h:32
   --  unsupported macro: BCON_ENSURE_DECLARE(fun,type) static BSON_INLINE type bcon_ensure_ ##fun (type _t) { return _t; }
   --  unsupported macro: BCON_ENSURE(fun,val) bcon_ensure_ ##fun (val)
   --  unsupported macro: BCON_ENSURE_STORAGE(fun,val) bcon_ensure_ ##fun (&(val))
   --  arg-macro: procedure BCON_UTF8 (_val)
   --    BCON_MAGIC, BCON_TYPE_UTF8, BCON_ENSURE (const_char_ptr, (_val))
   --  arg-macro: procedure BCON_DOUBLE (_val)
   --    BCON_MAGIC, BCON_TYPE_DOUBLE, BCON_ENSURE (double, (_val))
   --  arg-macro: procedure BCON_DOCUMENT (_val)
   --    BCON_MAGIC, BCON_TYPE_DOCUMENT, BCON_ENSURE (const_bson_ptr, (_val))
   --  arg-macro: procedure BCON_ARRAY (_val)
   --    BCON_MAGIC, BCON_TYPE_ARRAY, BCON_ENSURE (const_bson_ptr, (_val))
   --  arg-macro: procedure BCON_BIN (_subtype, _binary, _length)
   --    BCON_MAGIC, BCON_TYPE_BIN, BCON_ENSURE (subtype, (_subtype)), BCON_ENSURE (const_uint8_ptr, (_binary)), BCON_ENSURE (uint32, (_length))
   --  unsupported macro: BCON_UNDEFINED BCON_MAGIC, BCON_TYPE_UNDEFINED
   --  arg-macro: procedure BCON_OID (_val)
   --    BCON_MAGIC, BCON_TYPE_OID, BCON_ENSURE (const_oid_ptr, (_val))
   --  arg-macro: procedure BCON_BOOL (_val)
   --    BCON_MAGIC, BCON_TYPE_BOOL, BCON_ENSURE (bool, (_val))
   --  arg-macro: procedure BCON_DATE_TIME (_val)
   --    BCON_MAGIC, BCON_TYPE_DATE_TIME, BCON_ENSURE (int64, (_val))
   --  unsupported macro: BCON_NULL BCON_MAGIC, BCON_TYPE_NULL
   --  arg-macro: procedure BCON_REGEX (_regex, _flags)
   --    BCON_MAGIC, BCON_TYPE_REGEX, BCON_ENSURE (const_char_ptr, (_regex)), BCON_ENSURE (const_char_ptr, (_flags))
   --  arg-macro: procedure BCON_DBPOINTER (_collection, _oid)
   --    BCON_MAGIC, BCON_TYPE_DBPOINTER, BCON_ENSURE (const_char_ptr, (_collection)), BCON_ENSURE (const_oid_ptr, (_oid))
   --  arg-macro: procedure BCON_CODE (_val)
   --    BCON_MAGIC, BCON_TYPE_CODE, BCON_ENSURE (const_char_ptr, (_val))
   --  arg-macro: procedure BCON_SYMBOL (_val)
   --    BCON_MAGIC, BCON_TYPE_SYMBOL, BCON_ENSURE (const_char_ptr, (_val))
   --  arg-macro: procedure BCON_CODEWSCOPE (_js, _scope)
   --    BCON_MAGIC, BCON_TYPE_CODEWSCOPE, BCON_ENSURE (const_char_ptr, (_js)), BCON_ENSURE (const_bson_ptr, (_scope))
   --  arg-macro: procedure BCON_INT32 (_val)
   --    BCON_MAGIC, BCON_TYPE_INT32, BCON_ENSURE (int32, (_val))
   --  arg-macro: procedure BCON_TIMESTAMP (_timestamp, _increment)
   --    BCON_MAGIC, BCON_TYPE_TIMESTAMP, BCON_ENSURE (int32, (_timestamp)), BCON_ENSURE (int32, (_increment))
   --  arg-macro: procedure BCON_INT64 (_val)
   --    BCON_MAGIC, BCON_TYPE_INT64, BCON_ENSURE (int64, (_val))
   --  arg-macro: procedure BCON_DECIMAL128 (_val)
   --    BCON_MAGIC, BCON_TYPE_DECIMAL128, BCON_ENSURE (const_decimal128_ptr, (_val))
   --  unsupported macro: BCON_MAXKEY BCON_MAGIC, BCON_TYPE_MAXKEY
   --  unsupported macro: BCON_MINKEY BCON_MAGIC, BCON_TYPE_MINKEY
   --  arg-macro: procedure BCON (_val)
   --    BCON_MAGIC, BCON_TYPE_BCON, BCON_ENSURE (const_bson_ptr, (_val))
   --  arg-macro: procedure BCON_ITER (_val)
   --    BCON_MAGIC, BCON_TYPE_ITER, BCON_ENSURE (const_bson_iter_ptr, (_val))
   --  arg-macro: procedure BCONE_UTF8 (_val)
   --    BCONE_MAGIC, BCON_TYPE_UTF8, BCON_ENSURE_STORAGE (const_char_ptr_ptr, (_val))
   --  arg-macro: procedure BCONE_DOUBLE (_val)
   --    BCONE_MAGIC, BCON_TYPE_DOUBLE, BCON_ENSURE_STORAGE (double_ptr, (_val))
   --  arg-macro: procedure BCONE_DOCUMENT (_val)
   --    BCONE_MAGIC, BCON_TYPE_DOCUMENT, BCON_ENSURE_STORAGE (bson_ptr, (_val))
   --  arg-macro: procedure BCONE_ARRAY (_val)
   --    BCONE_MAGIC, BCON_TYPE_ARRAY, BCON_ENSURE_STORAGE (bson_ptr, (_val))
   --  arg-macro: procedure BCONE_BIN (subtype, binary, length)
   --    BCONE_MAGIC, BCON_TYPE_BIN, BCON_ENSURE_STORAGE (subtype_ptr, (subtype)), BCON_ENSURE_STORAGE (const_uint8_ptr_ptr, (binary)), BCON_ENSURE_STORAGE (uint32_ptr, (length))
   --  unsupported macro: BCONE_UNDEFINED BCONE_MAGIC, BCON_TYPE_UNDEFINED
   --  arg-macro: procedure BCONE_OID (_val)
   --    BCONE_MAGIC, BCON_TYPE_OID, BCON_ENSURE_STORAGE (const_oid_ptr_ptr, (_val))
   --  arg-macro: procedure BCONE_BOOL (_val)
   --    BCONE_MAGIC, BCON_TYPE_BOOL, BCON_ENSURE_STORAGE (bool_ptr, (_val))
   --  arg-macro: procedure BCONE_DATE_TIME (_val)
   --    BCONE_MAGIC, BCON_TYPE_DATE_TIME, BCON_ENSURE_STORAGE (int64_ptr, (_val))
   --  unsupported macro: BCONE_NULL BCONE_MAGIC, BCON_TYPE_NULL
   --  arg-macro: procedure BCONE_REGEX (_regex, _flags)
   --    BCONE_MAGIC, BCON_TYPE_REGEX, BCON_ENSURE_STORAGE (const_char_ptr_ptr, (_regex)), BCON_ENSURE_STORAGE (const_char_ptr_ptr, (_flags))
   --  arg-macro: procedure BCONE_DBPOINTER (_collection, _oid)
   --    BCONE_MAGIC, BCON_TYPE_DBPOINTER, BCON_ENSURE_STORAGE (const_char_ptr_ptr, (_collection)), BCON_ENSURE_STORAGE (const_oid_ptr_ptr, (_oid))
   --  arg-macro: procedure BCONE_CODE (_val)
   --    BCONE_MAGIC, BCON_TYPE_CODE, BCON_ENSURE_STORAGE (const_char_ptr_ptr, (_val))
   --  arg-macro: procedure BCONE_SYMBOL (_val)
   --    BCONE_MAGIC, BCON_TYPE_SYMBOL, BCON_ENSURE_STORAGE (const_char_ptr_ptr, (_val))
   --  arg-macro: procedure BCONE_CODEWSCOPE (_js, _scope)
   --    BCONE_MAGIC, BCON_TYPE_CODEWSCOPE, BCON_ENSURE_STORAGE (const_char_ptr_ptr, (_js)), BCON_ENSURE_STORAGE (bson_ptr, (_scope))
   --  arg-macro: procedure BCONE_INT32 (_val)
   --    BCONE_MAGIC, BCON_TYPE_INT32, BCON_ENSURE_STORAGE (int32_ptr, (_val))
   --  arg-macro: procedure BCONE_TIMESTAMP (_timestamp, _increment)
   --    BCONE_MAGIC, BCON_TYPE_TIMESTAMP, BCON_ENSURE_STORAGE (int32_ptr, (_timestamp)), BCON_ENSURE_STORAGE (int32_ptr, (_increment))
   --  arg-macro: procedure BCONE_INT64 (_val)
   --    BCONE_MAGIC, BCON_TYPE_INT64, BCON_ENSURE_STORAGE (int64_ptr, (_val))
   --  arg-macro: procedure BCONE_DECIMAL128 (_val)
   --    BCONE_MAGIC, BCON_TYPE_DECIMAL128, BCON_ENSURE_STORAGE (const_decimal128_ptr, (_val))
   --  unsupported macro: BCONE_MAXKEY BCONE_MAGIC, BCON_TYPE_MAXKEY
   --  unsupported macro: BCONE_MINKEY BCONE_MAGIC, BCON_TYPE_MINKEY
   --  arg-macro: procedure BCONE_SKIP (_val)
   --    BCONE_MAGIC, BCON_TYPE_SKIP, BCON_ENSURE (bson_type, (_val))
   --  arg-macro: procedure BCONE_ITER (_val)
   --    BCONE_MAGIC, BCON_TYPE_ITER, BCON_ENSURE_STORAGE (bson_iter_ptr, (_val))
   --  unsupported macro: BCON_MAGIC bson_bcon_magic ()
   --  unsupported macro: BCONE_MAGIC bson_bcone_magic ()
   --  unsupported macro: BCON_APPEND(_bson,...) bcon_append ((_bson), __VA_ARGS__, (void *) NULL)
   --  unsupported macro: BCON_APPEND_CTX(_bson,_ctx,...) bcon_append_ctx ((_bson), (_ctx), __VA_ARGS__, (void *) NULL)
   --  unsupported macro: BCON_EXTRACT(_bson,...) bcon_extract ((_bson), __VA_ARGS__, (void *) NULL)
   --  unsupported macro: BCON_EXTRACT_CTX(_bson,_ctx,...) bcon_extract ((_bson), (_ctx), __VA_ARGS__, (void *) NULL)
   --  unsupported macro: BCON_NEW(...) bcon_new (NULL, __VA_ARGS__, (void *) NULL)

   function bcon_ensure_const_char_ptr (u_t : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bcon.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_const_char_ptr";

   function bcon_ensure_const_char_ptr_ptr (u_t : System.Address) return System.Address  -- /usr/include/libbson-1.0/bson/bcon.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_const_char_ptr_ptr";

   function bcon_ensure_double (u_t : double) return double  -- /usr/include/libbson-1.0/bson/bcon.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_double";

   function bcon_ensure_double_ptr (u_t : access double) return access double  -- /usr/include/libbson-1.0/bson/bcon.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_double_ptr";

   function bcon_ensure_const_bson_ptr (u_t : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libbson-1.0/bson/bcon.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_const_bson_ptr";

   function bcon_ensure_bson_ptr (u_t : access libbson_1_0_bson_bson_types_h.u_bson_t) return access libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libbson-1.0/bson/bcon.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_bson_ptr";

   function bcon_ensure_subtype (u_t : libbson_1_0_bson_bson_types_h.bson_subtype_t) return libbson_1_0_bson_bson_types_h.bson_subtype_t  -- /usr/include/libbson-1.0/bson/bcon.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_subtype";

   function bcon_ensure_subtype_ptr (u_t : access libbson_1_0_bson_bson_types_h.bson_subtype_t) return access libbson_1_0_bson_bson_types_h.bson_subtype_t  -- /usr/include/libbson-1.0/bson/bcon.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_subtype_ptr";

   function bcon_ensure_const_uint8_ptr (u_t : access Interfaces.Unsigned_8) return access Interfaces.Unsigned_8  -- /usr/include/libbson-1.0/bson/bcon.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_const_uint8_ptr";

   function bcon_ensure_const_uint8_ptr_ptr (u_t : System.Address) return System.Address  -- /usr/include/libbson-1.0/bson/bcon.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_const_uint8_ptr_ptr";

   function bcon_ensure_uint32 (u_t : Interfaces.Unsigned_32) return Interfaces.Unsigned_32  -- /usr/include/libbson-1.0/bson/bcon.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_uint32";

   function bcon_ensure_uint32_ptr (u_t : access Interfaces.Unsigned_32) return access Interfaces.Unsigned_32  -- /usr/include/libbson-1.0/bson/bcon.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_uint32_ptr";

   function bcon_ensure_const_oid_ptr (u_t : access constant libbson_1_0_bson_bson_types_h.bson_oid_t) return access constant libbson_1_0_bson_bson_types_h.bson_oid_t  -- /usr/include/libbson-1.0/bson/bcon.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_const_oid_ptr";

   function bcon_ensure_const_oid_ptr_ptr (u_t : System.Address) return System.Address  -- /usr/include/libbson-1.0/bson/bcon.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_const_oid_ptr_ptr";

   function bcon_ensure_int32 (u_t : Interfaces.Integer_32) return Interfaces.Integer_32  -- /usr/include/libbson-1.0/bson/bcon.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_int32";

   function bcon_ensure_int32_ptr (u_t : access Interfaces.Integer_32) return access Interfaces.Integer_32  -- /usr/include/libbson-1.0/bson/bcon.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_int32_ptr";

   function bcon_ensure_int64 (u_t : Interfaces.Integer_64) return Interfaces.Integer_64  -- /usr/include/libbson-1.0/bson/bcon.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_int64";

   function bcon_ensure_int64_ptr (u_t : access Interfaces.Integer_64) return access Interfaces.Integer_64  -- /usr/include/libbson-1.0/bson/bcon.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_int64_ptr";

   function bcon_ensure_const_decimal128_ptr (u_t : access constant libbson_1_0_bson_bson_types_h.bson_decimal128_t) return access constant libbson_1_0_bson_bson_types_h.bson_decimal128_t  -- /usr/include/libbson-1.0/bson/bcon.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_const_decimal128_ptr";

   function bcon_ensure_bool (u_t : Extensions.bool) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bcon.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_bool";

   function bcon_ensure_bool_ptr (u_t : access Extensions.bool) return access Extensions.bool  -- /usr/include/libbson-1.0/bson/bcon.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_bool_ptr";

   function bcon_ensure_bson_type (u_t : libbson_1_0_bson_bson_types_h.bson_type_t) return libbson_1_0_bson_bson_types_h.bson_type_t  -- /usr/include/libbson-1.0/bson/bcon.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_bson_type";

   function bcon_ensure_bson_iter_ptr (u_t : access libbson_1_0_bson_bson_types_h.bson_iter_t) return access libbson_1_0_bson_bson_types_h.bson_iter_t  -- /usr/include/libbson-1.0/bson/bcon.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_bson_iter_ptr";

   function bcon_ensure_const_bson_iter_ptr (u_t : access constant libbson_1_0_bson_bson_types_h.bson_iter_t) return access constant libbson_1_0_bson_bson_types_h.bson_iter_t  -- /usr/include/libbson-1.0/bson/bcon.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_ensure_const_bson_iter_ptr";

   type bcon_type_t is 
     (BCON_TYPE_UTF8,
      BCON_TYPE_DOUBLE,
      BCON_TYPE_DOCUMENT,
      BCON_TYPE_ARRAY,
      BCON_TYPE_BIN,
      BCON_TYPE_UNDEFINED,
      BCON_TYPE_OID,
      BCON_TYPE_BOOL,
      BCON_TYPE_DATE_TIME,
      BCON_TYPE_NULL,
      BCON_TYPE_REGEX,
      BCON_TYPE_DBPOINTER,
      BCON_TYPE_CODE,
      BCON_TYPE_SYMBOL,
      BCON_TYPE_CODEWSCOPE,
      BCON_TYPE_INT32,
      BCON_TYPE_TIMESTAMP,
      BCON_TYPE_INT64,
      BCON_TYPE_DECIMAL128,
      BCON_TYPE_MAXKEY,
      BCON_TYPE_MINKEY,
      BCON_TYPE_BCON,
      BCON_TYPE_ARRAY_START,
      BCON_TYPE_ARRAY_END,
      BCON_TYPE_DOC_START,
      BCON_TYPE_DOC_END,
      BCON_TYPE_END,
      BCON_TYPE_RAW,
      BCON_TYPE_SKIP,
      BCON_TYPE_ITER,
      BCON_TYPE_ERROR)
   with Convention => C;  -- /usr/include/libbson-1.0/bson/bcon.h:208

   type bcon_append_ctx_frame is record
      i : aliased int;  -- /usr/include/libbson-1.0/bson/bcon.h:211
      is_array : aliased Extensions.bool;  -- /usr/include/libbson-1.0/bson/bcon.h:212
      bson : aliased libbson_1_0_bson_bson_types_h.bson_t;  -- /usr/include/libbson-1.0/bson/bcon.h:213
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libbson-1.0/bson/bcon.h:210

   subtype bcon_append_ctx_frame_t is bcon_append_ctx_frame;  -- /usr/include/libbson-1.0/bson/bcon.h:214

   type bcon_extract_ctx_frame is record
      i : aliased int;  -- /usr/include/libbson-1.0/bson/bcon.h:217
      is_array : aliased Extensions.bool;  -- /usr/include/libbson-1.0/bson/bcon.h:218
      iter : aliased libbson_1_0_bson_bson_types_h.bson_iter_t;  -- /usr/include/libbson-1.0/bson/bcon.h:219
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libbson-1.0/bson/bcon.h:216

   subtype bcon_extract_ctx_frame_t is bcon_extract_ctx_frame;  -- /usr/include/libbson-1.0/bson/bcon.h:220

   type anon_array2452 is array (0 .. 99) of aliased bcon_append_ctx_frame_t;
   type u_bcon_append_ctx_t is record
      stack : aliased anon_array2452;  -- /usr/include/libbson-1.0/bson/bcon.h:223
      n : aliased int;  -- /usr/include/libbson-1.0/bson/bcon.h:224
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libbson-1.0/bson/bcon.h:222

   subtype bcon_append_ctx_t is u_bcon_append_ctx_t;  -- /usr/include/libbson-1.0/bson/bcon.h:225

   type anon_array2456 is array (0 .. 99) of aliased bcon_extract_ctx_frame_t;
   type u_bcon_extract_ctx_t is record
      stack : aliased anon_array2456;  -- /usr/include/libbson-1.0/bson/bcon.h:228
      n : aliased int;  -- /usr/include/libbson-1.0/bson/bcon.h:229
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libbson-1.0/bson/bcon.h:227

   subtype bcon_extract_ctx_t is u_bcon_extract_ctx_t;  -- /usr/include/libbson-1.0/bson/bcon.h:230

   procedure bcon_append (bson : access libbson_1_0_bson_bson_types_h.u_bson_t  -- , ...
      )  -- /usr/include/libbson-1.0/bson/bcon.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_append";

   procedure bcon_append_ctx (bson : access libbson_1_0_bson_bson_types_h.u_bson_t; ctx : access bcon_append_ctx_t  -- , ...
      )  -- /usr/include/libbson-1.0/bson/bcon.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_append_ctx";

   procedure bcon_append_ctx_va
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      ctx : access bcon_append_ctx_t;
      va : access System.Address)  -- /usr/include/libbson-1.0/bson/bcon.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_append_ctx_va";

   procedure bcon_append_ctx_init (ctx : access bcon_append_ctx_t)  -- /usr/include/libbson-1.0/bson/bcon.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_append_ctx_init";

   procedure bcon_extract_ctx_init (ctx : access bcon_extract_ctx_t)  -- /usr/include/libbson-1.0/bson/bcon.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_extract_ctx_init";

   procedure bcon_extract_ctx (bson : access libbson_1_0_bson_bson_types_h.u_bson_t; ctx : access bcon_extract_ctx_t  -- , ...
      )  -- /usr/include/libbson-1.0/bson/bcon.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_extract_ctx";

   function bcon_extract_ctx_va
     (bson : access libbson_1_0_bson_bson_types_h.u_bson_t;
      ctx : access bcon_extract_ctx_t;
      ap : access System.Address) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bcon.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_extract_ctx_va";

   function bcon_extract (bson : access libbson_1_0_bson_bson_types_h.u_bson_t  -- , ...
      ) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bcon.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_extract";

   function bcon_extract_va (bson : access libbson_1_0_bson_bson_types_h.u_bson_t; ctx : access bcon_extract_ctx_t  -- , ...
      ) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bcon.h:258
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_extract_va";

   function bcon_new (unused : System.Address  -- , ...
      ) return access libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libbson-1.0/bson/bcon.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "bcon_new";

   function bson_bcon_magic return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bcon.h:287
   with Import => True, 
        Convention => C, 
        External_Name => "bson_bcon_magic";

   function bson_bcone_magic return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bcon.h:289
   with Import => True, 
        Convention => C, 
        External_Name => "bson_bcone_magic";

end libbson_1_0_bson_bcon_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
