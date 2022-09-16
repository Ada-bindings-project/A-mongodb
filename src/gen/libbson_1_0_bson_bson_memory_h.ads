pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
--  with stddef_h;

package libbson_1_0_bson_bson_memory_h is

   type bson_realloc_func is access function
        (arg1 : System.Address;
         arg2 : size_t;
         arg3 : System.Address) return System.Address
   with Convention => C;  -- /usr/include/libbson-1.0/bson/bson-memory.h:31

   type anon_array2275 is array (0 .. 3) of System.Address;
   type u_bson_mem_vtable_t is record
      malloc : access function (arg1 : size_t) return System.Address;  -- /usr/include/libbson-1.0/bson/bson-memory.h:35
      calloc : access function (arg1 : size_t; arg2 : size_t) return System.Address;  -- /usr/include/libbson-1.0/bson/bson-memory.h:36
      realloc : access function (arg1 : System.Address; arg2 : size_t) return System.Address;  -- /usr/include/libbson-1.0/bson/bson-memory.h:37
      free : access procedure (arg1 : System.Address);  -- /usr/include/libbson-1.0/bson/bson-memory.h:38
      padding : anon_array2275;  -- /usr/include/libbson-1.0/bson/bson-memory.h:39
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libbson-1.0/bson/bson-memory.h:34

   subtype bson_mem_vtable_t is u_bson_mem_vtable_t;  -- /usr/include/libbson-1.0/bson/bson-memory.h:40

   procedure bson_mem_set_vtable (vtable : access constant bson_mem_vtable_t)  -- /usr/include/libbson-1.0/bson/bson-memory.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "bson_mem_set_vtable";

   procedure bson_mem_restore_vtable  -- /usr/include/libbson-1.0/bson/bson-memory.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "bson_mem_restore_vtable";

   function bson_malloc (num_bytes : size_t) return System.Address  -- /usr/include/libbson-1.0/bson/bson-memory.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "bson_malloc";

   function bson_malloc0 (num_bytes : size_t) return System.Address  -- /usr/include/libbson-1.0/bson/bson-memory.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "bson_malloc0";

   function bson_realloc (mem : System.Address; num_bytes : size_t) return System.Address  -- /usr/include/libbson-1.0/bson/bson-memory.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "bson_realloc";

   function bson_realloc_ctx
     (mem : System.Address;
      num_bytes : size_t;
      ctx : System.Address) return System.Address  -- /usr/include/libbson-1.0/bson/bson-memory.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "bson_realloc_ctx";

   procedure bson_free (mem : System.Address)  -- /usr/include/libbson-1.0/bson/bson-memory.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "bson_free";

   procedure bson_zero_free (mem : System.Address; size : size_t)  -- /usr/include/libbson-1.0/bson/bson-memory.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "bson_zero_free";

end libbson_1_0_bson_bson_memory_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
