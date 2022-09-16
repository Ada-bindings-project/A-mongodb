pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package libbson_1_0_bson_bson_endian_h is

   BSON_BIG_ENDIAN : constant := 4321;  --  /usr/include/libbson-1.0/bson/bson-endian.h:36
   BSON_LITTLE_ENDIAN : constant := 1234;  --  /usr/include/libbson-1.0/bson/bson-endian.h:37
   --  arg-macro: procedure BSON_UINT32_SWAP_LE_BE (v)
   --    __builtin_bswap32 ((uint32_t) v)
   --  arg-macro: procedure BSON_UINT64_SWAP_LE_BE (v)
   --    __builtin_bswap64 ((uint64_t) v)
   --  arg-macro: procedure BSON_UINT16_SWAP_LE_BE (v)
   --    __builtin_bswap16 ((uint32_t) v)
   --  arg-macro: function BSON_UINT16_FROM_LE (v)
   --    return (uint16_t) v;
   --  arg-macro: function BSON_UINT16_TO_LE (v)
   --    return (uint16_t) v;
   --  arg-macro: procedure BSON_UINT16_FROM_BE (v)
   --    BSON_UINT16_SWAP_LE_BE (v)
   --  arg-macro: procedure BSON_UINT16_TO_BE (v)
   --    BSON_UINT16_SWAP_LE_BE (v)
   --  arg-macro: function BSON_UINT32_FROM_LE (v)
   --    return (uint32_t) v;
   --  arg-macro: function BSON_UINT32_TO_LE (v)
   --    return (uint32_t) v;
   --  arg-macro: procedure BSON_UINT32_FROM_BE (v)
   --    BSON_UINT32_SWAP_LE_BE (v)
   --  arg-macro: procedure BSON_UINT32_TO_BE (v)
   --    BSON_UINT32_SWAP_LE_BE (v)
   --  arg-macro: function BSON_UINT64_FROM_LE (v)
   --    return (uint64_t) v;
   --  arg-macro: function BSON_UINT64_TO_LE (v)
   --    return (uint64_t) v;
   --  arg-macro: procedure BSON_UINT64_FROM_BE (v)
   --    BSON_UINT64_SWAP_LE_BE (v)
   --  arg-macro: procedure BSON_UINT64_TO_BE (v)
   --    BSON_UINT64_SWAP_LE_BE (v)
   --  arg-macro: function BSON_DOUBLE_FROM_LE (v)
   --    return (double) v;
   --  arg-macro: function BSON_DOUBLE_TO_LE (v)
   --    return (double) v;

   --  skipped func __bson_uint16_swap_slow

   --  skipped func __bson_uint32_swap_slow

   --  skipped func __bson_uint64_swap_slow

   subtype static_assert_test_210sizeof_uint64_t is Interfaces.C.char_array (0 .. 0);  -- /usr/include/libbson-1.0/bson/bson-endian.h:210

   --  skipped func __bson_double_swap_slow

end libbson_1_0_bson_bson_endian_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
