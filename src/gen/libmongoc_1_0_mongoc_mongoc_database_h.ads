pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
limited with libbson_1_0_bson_bson_types_h;
with Interfaces.C.Extensions;
limited with libmongoc_1_0_mongoc_mongoc_read_prefs_h;
limited with libmongoc_1_0_mongoc_mongoc_cursor_h;
with libmongoc_1_0_mongoc_mongoc_flags_h;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;
limited with libmongoc_1_0_mongoc_mongoc_collection_h;
limited with libmongoc_1_0_mongoc_mongoc_write_concern_h;
limited with libmongoc_1_0_mongoc_mongoc_read_concern_h;
with System;
limited with libmongoc_1_0_mongoc_mongoc_change_stream_h;

package libmongoc_1_0_mongoc_mongoc_database_h is

   type u_mongoc_database_t is null record;   -- incomplete struct

   subtype mongoc_database_t is u_mongoc_database_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:34

   function mongoc_database_get_name (database : access mongoc_database_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_get_name";

   function mongoc_database_remove_user
     (database : access mongoc_database_t;
      username : Interfaces.C.Strings.chars_ptr;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_remove_user";

   function mongoc_database_remove_all_users (database : access mongoc_database_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_remove_all_users";

   function mongoc_database_add_user
     (database : access mongoc_database_t;
      username : Interfaces.C.Strings.chars_ptr;
      password : Interfaces.C.Strings.chars_ptr;
      roles : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      custom_data : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_add_user";

   procedure mongoc_database_destroy (database : access mongoc_database_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_destroy";

   function mongoc_database_aggregate
     (db : access mongoc_database_t;
      pipeline : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t) return access libmongoc_1_0_mongoc_mongoc_cursor_h.u_mongoc_cursor_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_aggregate";

   function mongoc_database_copy (database : access mongoc_database_t) return access mongoc_database_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_copy";

   function mongoc_database_command
     (database : access mongoc_database_t;
      flags : libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_query_flags_t;
      skip : Interfaces.Unsigned_32;
      limit : Interfaces.Unsigned_32;
      batch_size : Interfaces.Unsigned_32;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      fields : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t) return access libmongoc_1_0_mongoc_mongoc_cursor_h.u_mongoc_cursor_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_command";

   function mongoc_database_read_command_with_opts
     (database : access mongoc_database_t;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_read_command_with_opts";

   function mongoc_database_write_command_with_opts
     (database : access mongoc_database_t;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_write_command_with_opts";

   function mongoc_database_read_write_command_with_opts
     (database : access mongoc_database_t;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_read_write_command_with_opts";

   function mongoc_database_command_with_opts
     (database : access mongoc_database_t;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_command_with_opts";

   function mongoc_database_command_simple
     (database : access mongoc_database_t;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_command_simple";

   function mongoc_database_drop (database : access mongoc_database_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_drop";

   function mongoc_database_drop_with_opts
     (database : access mongoc_database_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_drop_with_opts";

   function mongoc_database_has_collection
     (database : access mongoc_database_t;
      name : Interfaces.C.Strings.chars_ptr;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_has_collection";

   function mongoc_database_create_collection
     (database : access mongoc_database_t;
      name : Interfaces.C.Strings.chars_ptr;
      options : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libmongoc_1_0_mongoc_mongoc_collection_h.u_mongoc_collection_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_create_collection";

   function mongoc_database_get_read_prefs (database : access constant mongoc_database_t) return access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_get_read_prefs";

   procedure mongoc_database_set_read_prefs (database : access mongoc_database_t; read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_set_read_prefs";

   function mongoc_database_get_write_concern (database : access constant mongoc_database_t) return access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_get_write_concern";

   procedure mongoc_database_set_write_concern (database : access mongoc_database_t; write_concern : access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_set_write_concern";

   function mongoc_database_get_read_concern (database : access constant mongoc_database_t) return access constant libmongoc_1_0_mongoc_mongoc_read_concern_h.u_mongoc_read_concern_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_get_read_concern";

   procedure mongoc_database_set_read_concern (database : access mongoc_database_t; read_concern : access constant libmongoc_1_0_mongoc_mongoc_read_concern_h.u_mongoc_read_concern_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_set_read_concern";

   function mongoc_database_find_collections
     (database : access mongoc_database_t;
      filter : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libmongoc_1_0_mongoc_mongoc_cursor_h.u_mongoc_cursor_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_find_collections";

   function mongoc_database_find_collections_with_opts (database : access mongoc_database_t; opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return access libmongoc_1_0_mongoc_mongoc_cursor_h.u_mongoc_cursor_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_find_collections_with_opts";

   function mongoc_database_get_collection_names (database : access mongoc_database_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return System.Address  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_get_collection_names";

   function mongoc_database_get_collection_names_with_opts
     (database : access mongoc_database_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return System.Address  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_get_collection_names_with_opts";

   function mongoc_database_get_collection (database : access mongoc_database_t; name : Interfaces.C.Strings.chars_ptr) return access libmongoc_1_0_mongoc_mongoc_collection_h.u_mongoc_collection_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_get_collection";

   function mongoc_database_watch
     (db : access constant mongoc_database_t;
      pipeline : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return access libmongoc_1_0_mongoc_mongoc_change_stream_h.u_mongoc_change_stream_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-database.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_database_watch";

end libmongoc_1_0_mongoc_mongoc_database_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
