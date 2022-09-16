pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
--  with stddef_h;
with libbson_1_0_bson_bson_memory_h;
with Interfaces.C.Extensions;

package libbson_1_0_bson_bson_writer_h is

   type u_bson_writer_t is null record;   -- incomplete struct

   subtype bson_writer_t is u_bson_writer_t;  -- /usr/include/libbson-1.0/bson/bson-writer.h:41

   function bson_writer_new
     (buf : System.Address;
      buflen : access size_t;
      offset : size_t;
      realloc_func : libbson_1_0_bson_bson_memory_h.bson_realloc_func;
      realloc_func_ctx : System.Address) return access bson_writer_t  -- /usr/include/libbson-1.0/bson/bson-writer.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "bson_writer_new";

   procedure bson_writer_destroy (writer : access bson_writer_t)  -- /usr/include/libbson-1.0/bson/bson-writer.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "bson_writer_destroy";

   function bson_writer_get_length (writer : access bson_writer_t) return size_t  -- /usr/include/libbson-1.0/bson/bson-writer.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "bson_writer_get_length";

   function bson_writer_begin (writer : access bson_writer_t; bson : System.Address) return Extensions.bool  -- /usr/include/libbson-1.0/bson/bson-writer.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "bson_writer_begin";

   procedure bson_writer_end (writer : access bson_writer_t)  -- /usr/include/libbson-1.0/bson/bson-writer.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "bson_writer_end";

   procedure bson_writer_rollback (writer : access bson_writer_t)  -- /usr/include/libbson-1.0/bson/bson-writer.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "bson_writer_rollback";

end libbson_1_0_bson_bson_writer_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
