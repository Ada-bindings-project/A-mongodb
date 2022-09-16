pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
with System;

package libbson_1_0_bson_bson_atomic_h is

   type bson_memory_order is 
     (bson_memory_order_seq_cst,
      bson_memory_order_acquire,
      bson_memory_order_release,
      bson_memory_order_relaxed,
      bson_memory_order_acq_rel,
      bson_memory_order_consume)
   with Convention => C;  -- /usr/include/libbson-1.0/bson/bson-atomic.h:35

   function bson_atomic_int8_fetch_add
     (a : access Interfaces.Integer_8;
      addend : Interfaces.Integer_8;
      ord : bson_memory_order) return Interfaces.Integer_8  -- /usr/include/libbson-1.0/bson/bson-atomic.h:372
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int8_fetch_add";

   function bson_atomic_int8_fetch_sub
     (a : access Interfaces.Integer_8;
      subtrahend : Interfaces.Integer_8;
      ord : bson_memory_order) return Interfaces.Integer_8  -- /usr/include/libbson-1.0/bson/bson-atomic.h:372
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int8_fetch_sub";

   function bson_atomic_int8_fetch (a : access Interfaces.Integer_8; order : bson_memory_order) return Interfaces.Integer_8  -- /usr/include/libbson-1.0/bson/bson-atomic.h:372
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int8_fetch";

   function bson_atomic_int8_exchange
     (a : access Interfaces.Integer_8;
      value : Interfaces.Integer_8;
      ord : bson_memory_order) return Interfaces.Integer_8  -- /usr/include/libbson-1.0/bson/bson-atomic.h:372
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int8_exchange";

   function bson_atomic_int8_compare_exchange_strong
     (a : access Interfaces.Integer_8;
      expect : Interfaces.Integer_8;
      new_value : Interfaces.Integer_8;
      ord : bson_memory_order) return Interfaces.Integer_8  -- /usr/include/libbson-1.0/bson/bson-atomic.h:372
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int8_compare_exchange_strong";

   function bson_atomic_int8_compare_exchange_weak
     (a : access Interfaces.Integer_8;
      expect : Interfaces.Integer_8;
      new_value : Interfaces.Integer_8;
      ord : bson_memory_order) return Interfaces.Integer_8  -- /usr/include/libbson-1.0/bson/bson-atomic.h:372
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int8_compare_exchange_weak";

   function bson_atomic_int16_fetch_add
     (a : access Interfaces.Integer_16;
      addend : Interfaces.Integer_16;
      ord : bson_memory_order) return Interfaces.Integer_16  -- /usr/include/libbson-1.0/bson/bson-atomic.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int16_fetch_add";

   function bson_atomic_int16_fetch_sub
     (a : access Interfaces.Integer_16;
      subtrahend : Interfaces.Integer_16;
      ord : bson_memory_order) return Interfaces.Integer_16  -- /usr/include/libbson-1.0/bson/bson-atomic.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int16_fetch_sub";

   function bson_atomic_int16_fetch (a : access Interfaces.Integer_16; order : bson_memory_order) return Interfaces.Integer_16  -- /usr/include/libbson-1.0/bson/bson-atomic.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int16_fetch";

   function bson_atomic_int16_exchange
     (a : access Interfaces.Integer_16;
      value : Interfaces.Integer_16;
      ord : bson_memory_order) return Interfaces.Integer_16  -- /usr/include/libbson-1.0/bson/bson-atomic.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int16_exchange";

   function bson_atomic_int16_compare_exchange_strong
     (a : access Interfaces.Integer_16;
      expect : Interfaces.Integer_16;
      new_value : Interfaces.Integer_16;
      ord : bson_memory_order) return Interfaces.Integer_16  -- /usr/include/libbson-1.0/bson/bson-atomic.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int16_compare_exchange_strong";

   function bson_atomic_int16_compare_exchange_weak
     (a : access Interfaces.Integer_16;
      expect : Interfaces.Integer_16;
      new_value : Interfaces.Integer_16;
      ord : bson_memory_order) return Interfaces.Integer_16  -- /usr/include/libbson-1.0/bson/bson-atomic.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int16_compare_exchange_weak";

   function bson_atomic_int32_fetch_add
     (a : access Interfaces.Integer_32;
      addend : Interfaces.Integer_32;
      ord : bson_memory_order) return Interfaces.Integer_32  -- /usr/include/libbson-1.0/bson/bson-atomic.h:375
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int32_fetch_add";

   function bson_atomic_int32_fetch_sub
     (a : access Interfaces.Integer_32;
      subtrahend : Interfaces.Integer_32;
      ord : bson_memory_order) return Interfaces.Integer_32  -- /usr/include/libbson-1.0/bson/bson-atomic.h:375
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int32_fetch_sub";

   function bson_atomic_int32_fetch (a : access Interfaces.Integer_32; order : bson_memory_order) return Interfaces.Integer_32  -- /usr/include/libbson-1.0/bson/bson-atomic.h:375
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int32_fetch";

   function bson_atomic_int32_exchange
     (a : access Interfaces.Integer_32;
      value : Interfaces.Integer_32;
      ord : bson_memory_order) return Interfaces.Integer_32  -- /usr/include/libbson-1.0/bson/bson-atomic.h:375
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int32_exchange";

   function bson_atomic_int32_compare_exchange_strong
     (a : access Interfaces.Integer_32;
      expect : Interfaces.Integer_32;
      new_value : Interfaces.Integer_32;
      ord : bson_memory_order) return Interfaces.Integer_32  -- /usr/include/libbson-1.0/bson/bson-atomic.h:375
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int32_compare_exchange_strong";

   function bson_atomic_int32_compare_exchange_weak
     (a : access Interfaces.Integer_32;
      expect : Interfaces.Integer_32;
      new_value : Interfaces.Integer_32;
      ord : bson_memory_order) return Interfaces.Integer_32  -- /usr/include/libbson-1.0/bson/bson-atomic.h:375
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int32_compare_exchange_weak";

   function bson_atomic_int_fetch_add
     (a : access int;
      addend : int;
      ord : bson_memory_order) return int  -- /usr/include/libbson-1.0/bson/bson-atomic.h:378
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int_fetch_add";

   function bson_atomic_int_fetch_sub
     (a : access int;
      subtrahend : int;
      ord : bson_memory_order) return int  -- /usr/include/libbson-1.0/bson/bson-atomic.h:378
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int_fetch_sub";

   function bson_atomic_int_fetch (a : access int; order : bson_memory_order) return int  -- /usr/include/libbson-1.0/bson/bson-atomic.h:378
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int_fetch";

   function bson_atomic_int_exchange
     (a : access int;
      value : int;
      ord : bson_memory_order) return int  -- /usr/include/libbson-1.0/bson/bson-atomic.h:378
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int_exchange";

   function bson_atomic_int_compare_exchange_strong
     (a : access int;
      expect : int;
      new_value : int;
      ord : bson_memory_order) return int  -- /usr/include/libbson-1.0/bson/bson-atomic.h:378
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int_compare_exchange_strong";

   function bson_atomic_int_compare_exchange_weak
     (a : access int;
      expect : int;
      new_value : int;
      ord : bson_memory_order) return int  -- /usr/include/libbson-1.0/bson/bson-atomic.h:378
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int_compare_exchange_weak";

   --  skipped func _bson_emul_atomic_int64_fetch_add

   --  skipped func _bson_emul_atomic_int64_exchange

   --  skipped func _bson_emul_atomic_int64_compare_exchange_strong

   --  skipped func _bson_emul_atomic_int64_compare_exchange_weak

   --  skipped func _bson_emul_atomic_int32_fetch_add

   --  skipped func _bson_emul_atomic_int32_exchange

   --  skipped func _bson_emul_atomic_int32_compare_exchange_strong

   --  skipped func _bson_emul_atomic_int32_compare_exchange_weak

   --  skipped func _bson_emul_atomic_int_fetch_add

   --  skipped func _bson_emul_atomic_int_exchange

   --  skipped func _bson_emul_atomic_int_compare_exchange_strong

   --  skipped func _bson_emul_atomic_int_compare_exchange_weak

   --  skipped func _bson_emul_atomic_ptr_exchange

   procedure bson_thrd_yield  -- /usr/include/libbson-1.0/bson/bson-atomic.h:448
   with Import => True, 
        Convention => C, 
        External_Name => "bson_thrd_yield";

   function bson_atomic_int64_fetch_add
     (a : access Interfaces.Integer_64;
      addend : Interfaces.Integer_64;
      ord : bson_memory_order) return Interfaces.Integer_64  -- /usr/include/libbson-1.0/bson/bson-atomic.h:455
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int64_fetch_add";

   function bson_atomic_int64_fetch_sub
     (a : access Interfaces.Integer_64;
      subtrahend : Interfaces.Integer_64;
      ord : bson_memory_order) return Interfaces.Integer_64  -- /usr/include/libbson-1.0/bson/bson-atomic.h:455
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int64_fetch_sub";

   function bson_atomic_int64_fetch (a : access Interfaces.Integer_64; order : bson_memory_order) return Interfaces.Integer_64  -- /usr/include/libbson-1.0/bson/bson-atomic.h:455
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int64_fetch";

   function bson_atomic_int64_exchange
     (a : access Interfaces.Integer_64;
      value : Interfaces.Integer_64;
      ord : bson_memory_order) return Interfaces.Integer_64  -- /usr/include/libbson-1.0/bson/bson-atomic.h:455
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int64_exchange";

   function bson_atomic_int64_compare_exchange_strong
     (a : access Interfaces.Integer_64;
      expect : Interfaces.Integer_64;
      new_value : Interfaces.Integer_64;
      ord : bson_memory_order) return Interfaces.Integer_64  -- /usr/include/libbson-1.0/bson/bson-atomic.h:455
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int64_compare_exchange_strong";

   function bson_atomic_int64_compare_exchange_weak
     (a : access Interfaces.Integer_64;
      expect : Interfaces.Integer_64;
      new_value : Interfaces.Integer_64;
      ord : bson_memory_order) return Interfaces.Integer_64  -- /usr/include/libbson-1.0/bson/bson-atomic.h:455
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int64_compare_exchange_weak";

   function bson_atomic_ptr_exchange
     (ptr : System.Address;
      new_value : System.Address;
      ord : bson_memory_order) return System.Address  -- /usr/include/libbson-1.0/bson/bson-atomic.h:618
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_ptr_exchange";

   function bson_atomic_ptr_compare_exchange_strong
     (ptr : System.Address;
      expect : System.Address;
      new_value : System.Address;
      ord : bson_memory_order) return System.Address  -- /usr/include/libbson-1.0/bson/bson-atomic.h:640
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_ptr_compare_exchange_strong";

   function bson_atomic_ptr_compare_exchange_weak
     (ptr : System.Address;
      expect : System.Address;
      new_value : System.Address;
      ord : bson_memory_order) return System.Address  -- /usr/include/libbson-1.0/bson/bson-atomic.h:683
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_ptr_compare_exchange_weak";

   function bson_atomic_ptr_fetch (ptr : System.Address; ord : bson_memory_order) return System.Address  -- /usr/include/libbson-1.0/bson/bson-atomic.h:726
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_ptr_fetch";

   procedure bson_atomic_thread_fence  -- /usr/include/libbson-1.0/bson/bson-atomic.h:743
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_thread_fence";

   procedure bson_memory_barrier  -- /usr/include/libbson-1.0/bson/bson-atomic.h:758
   with Import => True, 
        Convention => C, 
        External_Name => "bson_memory_barrier";

   function bson_atomic_int_add (p : access Interfaces.Integer_32; n : Interfaces.Integer_32) return Interfaces.Integer_32  -- /usr/include/libbson-1.0/bson/bson-atomic.h:761
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int_add";

   function bson_atomic_int64_add (p : access Interfaces.Integer_64; n : Interfaces.Integer_64) return Interfaces.Integer_64  -- /usr/include/libbson-1.0/bson/bson-atomic.h:764
   with Import => True, 
        Convention => C, 
        External_Name => "bson_atomic_int64_add";

end libbson_1_0_bson_bson_atomic_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
