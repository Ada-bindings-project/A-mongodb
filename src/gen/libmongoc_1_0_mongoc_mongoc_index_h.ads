pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;
with System;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
limited with libbson_1_0_bson_bson_types_h;

package libmongoc_1_0_mongoc_mongoc_index_h is

   type anon_array3189 is array (0 .. 31) of access Interfaces.Unsigned_8;
   type mongoc_index_opt_geo_t is record
      twod_sphere_version : aliased Interfaces.Unsigned_8;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:30
      twod_bits_precision : aliased Interfaces.Unsigned_8;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:31
      twod_location_min : aliased double;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:32
      twod_location_max : aliased double;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:33
      haystack_bucket_size : aliased double;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:34
      padding : anon_array3189;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:35
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:36

   type mongoc_index_opt_storage_t is record
      c_type : aliased int;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:39
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:40

   type mongoc_index_storage_opt_type_t is 
     (MONGOC_INDEX_STORAGE_OPT_MMAPV1,
      MONGOC_INDEX_STORAGE_OPT_WIREDTIGER)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:45

   type anon_array3197 is array (0 .. 7) of System.Address;
   type mongoc_index_opt_wt_t is record
      base : aliased mongoc_index_opt_storage_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:48
      config_str : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:49
      padding : anon_array3197;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:50
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:51

   type anon_array2275 is array (0 .. 3) of System.Address;
   type mongoc_index_opt_t is record
      is_initialized : aliased Extensions.bool;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:54
      background : aliased Extensions.bool;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:55
      unique : aliased Extensions.bool;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:56
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:57
      drop_dups : aliased Extensions.bool;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:58
      sparse : aliased Extensions.bool;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:59
      expire_after_seconds : aliased Interfaces.Integer_32;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:60
      v : aliased Interfaces.Integer_32;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:61
      weights : access constant libbson_1_0_bson_bson_types_h.u_bson_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:62
      default_language : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:63
      language_override : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:64
      geo_options : access mongoc_index_opt_geo_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:65
      storage_options : access mongoc_index_opt_storage_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:66
      partial_filter_expression : access constant libbson_1_0_bson_bson_types_h.u_bson_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:67
      collation : access constant libbson_1_0_bson_bson_types_h.u_bson_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:68
      padding : anon_array2275;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:69
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:70

   function mongoc_index_opt_get_default return access constant mongoc_index_opt_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_index_opt_get_default";

   function mongoc_index_opt_geo_get_default return access constant mongoc_index_opt_geo_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_index_opt_geo_get_default";

   function mongoc_index_opt_wt_get_default return access constant mongoc_index_opt_wt_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_index_opt_wt_get_default";

   procedure mongoc_index_opt_init (opt : access mongoc_index_opt_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_index_opt_init";

   procedure mongoc_index_opt_geo_init (opt : access mongoc_index_opt_geo_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_index_opt_geo_init";

   procedure mongoc_index_opt_wt_init (opt : access mongoc_index_opt_wt_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-index.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_index_opt_wt_init";

end libmongoc_1_0_mongoc_mongoc_index_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
