pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libbson_1_0_bson_bson_types_h;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
with Interfaces.C.Extensions;

package libmongoc_1_0_mongoc_mongoc_read_prefs_h is

   MONGOC_NO_MAX_STALENESS : constant := -1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-read-prefs.h:30
   MONGOC_SMALLEST_MAX_STALENESS_SECONDS : constant := 90;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-read-prefs.h:31

   type u_mongoc_read_prefs_t is null record;   -- incomplete struct

   subtype mongoc_read_prefs_t is u_mongoc_read_prefs_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-prefs.h:33

   subtype mongoc_read_mode_t is unsigned;
   mongoc_read_mode_t_MONGOC_READ_PRIMARY : constant mongoc_read_mode_t := 1;
   mongoc_read_mode_t_MONGOC_READ_SECONDARY : constant mongoc_read_mode_t := 2;
   mongoc_read_mode_t_MONGOC_READ_PRIMARY_PREFERRED : constant mongoc_read_mode_t := 5;
   mongoc_read_mode_t_MONGOC_READ_SECONDARY_PREFERRED : constant mongoc_read_mode_t := 6;
   mongoc_read_mode_t_MONGOC_READ_NEAREST : constant mongoc_read_mode_t := 10;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-prefs.h:47

   function mongoc_read_prefs_new (read_mode : mongoc_read_mode_t) return access mongoc_read_prefs_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-prefs.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_prefs_new";

   function mongoc_read_prefs_copy (read_prefs : access constant mongoc_read_prefs_t) return access mongoc_read_prefs_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-prefs.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_prefs_copy";

   procedure mongoc_read_prefs_destroy (read_prefs : access mongoc_read_prefs_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-prefs.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_prefs_destroy";

   function mongoc_read_prefs_get_mode (read_prefs : access constant mongoc_read_prefs_t) return mongoc_read_mode_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-prefs.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_prefs_get_mode";

   procedure mongoc_read_prefs_set_mode (read_prefs : access mongoc_read_prefs_t; mode : mongoc_read_mode_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-prefs.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_prefs_set_mode";

   function mongoc_read_prefs_get_tags (read_prefs : access constant mongoc_read_prefs_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-prefs.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_prefs_get_tags";

   procedure mongoc_read_prefs_set_tags (read_prefs : access mongoc_read_prefs_t; tags : access constant libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-prefs.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_prefs_set_tags";

   procedure mongoc_read_prefs_add_tag (read_prefs : access mongoc_read_prefs_t; tag : access constant libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-prefs.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_prefs_add_tag";

   function mongoc_read_prefs_get_max_staleness_seconds (read_prefs : access constant mongoc_read_prefs_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-prefs.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_prefs_get_max_staleness_seconds";

   procedure mongoc_read_prefs_set_max_staleness_seconds (read_prefs : access mongoc_read_prefs_t; max_staleness_seconds : Interfaces.Integer_64)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-prefs.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_prefs_set_max_staleness_seconds";

   function mongoc_read_prefs_get_hedge (read_prefs : access constant mongoc_read_prefs_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-prefs.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_prefs_get_hedge";

   procedure mongoc_read_prefs_set_hedge (read_prefs : access mongoc_read_prefs_t; hedge : access constant libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-prefs.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_prefs_set_hedge";

   function mongoc_read_prefs_is_valid (read_prefs : access constant mongoc_read_prefs_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-prefs.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_prefs_is_valid";

end libmongoc_1_0_mongoc_mongoc_read_prefs_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
