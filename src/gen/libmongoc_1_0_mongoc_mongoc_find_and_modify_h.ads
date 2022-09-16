pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libbson_1_0_bson_bson_types_h;
with Interfaces.C.Extensions;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;

package libmongoc_1_0_mongoc_mongoc_find_and_modify_h is

   subtype mongoc_find_and_modify_flags_t is unsigned;
   mongoc_find_and_modify_flags_t_MONGOC_FIND_AND_MODIFY_NONE : constant mongoc_find_and_modify_flags_t := 0;
   mongoc_find_and_modify_flags_t_MONGOC_FIND_AND_MODIFY_REMOVE : constant mongoc_find_and_modify_flags_t := 1;
   mongoc_find_and_modify_flags_t_MONGOC_FIND_AND_MODIFY_UPSERT : constant mongoc_find_and_modify_flags_t := 2;
   mongoc_find_and_modify_flags_t_MONGOC_FIND_AND_MODIFY_RETURN_NEW : constant mongoc_find_and_modify_flags_t := 4;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-find-and-modify.h:33

   type u_mongoc_find_and_modify_opts_t is null record;   -- incomplete struct

   subtype mongoc_find_and_modify_opts_t is u_mongoc_find_and_modify_opts_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-find-and-modify.h:35

   function mongoc_find_and_modify_opts_new return access mongoc_find_and_modify_opts_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-find-and-modify.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_find_and_modify_opts_new";

   function mongoc_find_and_modify_opts_set_sort (opts : access mongoc_find_and_modify_opts_t; sort : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-find-and-modify.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_find_and_modify_opts_set_sort";

   procedure mongoc_find_and_modify_opts_get_sort (opts : access constant mongoc_find_and_modify_opts_t; sort : access libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-find-and-modify.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_find_and_modify_opts_get_sort";

   function mongoc_find_and_modify_opts_set_update (opts : access mongoc_find_and_modify_opts_t; update : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-find-and-modify.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_find_and_modify_opts_set_update";

   procedure mongoc_find_and_modify_opts_get_update (opts : access constant mongoc_find_and_modify_opts_t; update : access libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-find-and-modify.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_find_and_modify_opts_get_update";

   function mongoc_find_and_modify_opts_set_fields (opts : access mongoc_find_and_modify_opts_t; fields : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-find-and-modify.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_find_and_modify_opts_set_fields";

   procedure mongoc_find_and_modify_opts_get_fields (opts : access constant mongoc_find_and_modify_opts_t; fields : access libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-find-and-modify.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_find_and_modify_opts_get_fields";

   function mongoc_find_and_modify_opts_set_flags (opts : access mongoc_find_and_modify_opts_t; flags : mongoc_find_and_modify_flags_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-find-and-modify.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_find_and_modify_opts_set_flags";

   function mongoc_find_and_modify_opts_get_flags (opts : access constant mongoc_find_and_modify_opts_t) return mongoc_find_and_modify_flags_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-find-and-modify.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_find_and_modify_opts_get_flags";

   function mongoc_find_and_modify_opts_set_bypass_document_validation (opts : access mongoc_find_and_modify_opts_t; bypass : Extensions.bool) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-find-and-modify.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_find_and_modify_opts_set_bypass_document_validation";

   function mongoc_find_and_modify_opts_get_bypass_document_validation (opts : access constant mongoc_find_and_modify_opts_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-find-and-modify.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_find_and_modify_opts_get_bypass_document_validation";

   function mongoc_find_and_modify_opts_set_max_time_ms (opts : access mongoc_find_and_modify_opts_t; max_time_ms : Interfaces.Unsigned_32) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-find-and-modify.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_find_and_modify_opts_set_max_time_ms";

   function mongoc_find_and_modify_opts_get_max_time_ms (opts : access constant mongoc_find_and_modify_opts_t) return Interfaces.Unsigned_32  -- /usr/include/libmongoc-1.0/mongoc/mongoc-find-and-modify.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_find_and_modify_opts_get_max_time_ms";

   function mongoc_find_and_modify_opts_append (opts : access mongoc_find_and_modify_opts_t; extra : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-find-and-modify.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_find_and_modify_opts_append";

   procedure mongoc_find_and_modify_opts_get_extra (opts : access constant mongoc_find_and_modify_opts_t; extra : access libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-find-and-modify.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_find_and_modify_opts_get_extra";

   procedure mongoc_find_and_modify_opts_destroy (opts : access mongoc_find_and_modify_opts_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-find-and-modify.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_find_and_modify_opts_destroy";

end libmongoc_1_0_mongoc_mongoc_find_and_modify_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
