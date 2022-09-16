pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with libmongoc_1_0_mongoc_mongoc_flags_h;
limited with libbson_1_0_bson_bson_types_h;
limited with libmongoc_1_0_mongoc_mongoc_read_prefs_h;
limited with libmongoc_1_0_mongoc_mongoc_cursor_h;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;
with Interfaces.C.Extensions;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
with Interfaces.C.Strings;
limited with libmongoc_1_0_mongoc_mongoc_index_h;
limited with libmongoc_1_0_mongoc_mongoc_write_concern_h;
with System;
--  with stddef_h;
limited with libmongoc_1_0_mongoc_mongoc_find_and_modify_h;
limited with libmongoc_1_0_mongoc_mongoc_bulk_operation_h;
limited with libmongoc_1_0_mongoc_mongoc_read_concern_h;
limited with libmongoc_1_0_mongoc_mongoc_change_stream_h;

package libmongoc_1_0_mongoc_mongoc_collection_h is

   type u_mongoc_collection_t is null record;   -- incomplete struct

   subtype mongoc_collection_t is u_mongoc_collection_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:38

   function mongoc_collection_aggregate
     (collection : access mongoc_collection_t;
      flags : libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_query_flags_t;
      pipeline : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t) return access libmongoc_1_0_mongoc_mongoc_cursor_h.u_mongoc_cursor_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_aggregate";

   procedure mongoc_collection_destroy (collection : access mongoc_collection_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_destroy";

   function mongoc_collection_copy (collection : access mongoc_collection_t) return access mongoc_collection_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_copy";

   function mongoc_collection_command
     (collection : access mongoc_collection_t;
      flags : libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_query_flags_t;
      skip : Interfaces.Unsigned_32;
      limit : Interfaces.Unsigned_32;
      batch_size : Interfaces.Unsigned_32;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      fields : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t) return access libmongoc_1_0_mongoc_mongoc_cursor_h.u_mongoc_cursor_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_command";

   function mongoc_collection_read_command_with_opts
     (collection : access mongoc_collection_t;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_read_command_with_opts";

   function mongoc_collection_write_command_with_opts
     (collection : access mongoc_collection_t;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_write_command_with_opts";

   function mongoc_collection_read_write_command_with_opts
     (collection : access mongoc_collection_t;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_read_write_command_with_opts";

   function mongoc_collection_command_with_opts
     (collection : access mongoc_collection_t;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_command_with_opts";

   function mongoc_collection_command_simple
     (collection : access mongoc_collection_t;
      command : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_command_simple";

   function mongoc_collection_count
     (collection : access mongoc_collection_t;
      flags : libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_query_flags_t;
      query : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      skip : Interfaces.Integer_64;
      limit : Interfaces.Integer_64;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_count";

   function mongoc_collection_count_with_opts
     (collection : access mongoc_collection_t;
      flags : libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_query_flags_t;
      query : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      skip : Interfaces.Integer_64;
      limit : Interfaces.Integer_64;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_count_with_opts";

   function mongoc_collection_drop (collection : access mongoc_collection_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_drop";

   function mongoc_collection_drop_with_opts
     (collection : access mongoc_collection_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_drop_with_opts";

   function mongoc_collection_drop_index
     (collection : access mongoc_collection_t;
      index_name : Interfaces.C.Strings.chars_ptr;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_drop_index";

   function mongoc_collection_drop_index_with_opts
     (collection : access mongoc_collection_t;
      index_name : Interfaces.C.Strings.chars_ptr;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_drop_index_with_opts";

   function mongoc_collection_create_index
     (collection : access mongoc_collection_t;
      keys : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opt : access constant libmongoc_1_0_mongoc_mongoc_index_h.mongoc_index_opt_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_create_index";

   function mongoc_collection_create_index_with_opts
     (collection : access mongoc_collection_t;
      keys : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opt : access constant libmongoc_1_0_mongoc_mongoc_index_h.mongoc_index_opt_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_create_index_with_opts";

   function mongoc_collection_ensure_index
     (collection : access mongoc_collection_t;
      keys : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opt : access constant libmongoc_1_0_mongoc_mongoc_index_h.mongoc_index_opt_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_ensure_index";

   function mongoc_collection_find_indexes (collection : access mongoc_collection_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libmongoc_1_0_mongoc_mongoc_cursor_h.u_mongoc_cursor_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_find_indexes";

   function mongoc_collection_find_indexes_with_opts (collection : access mongoc_collection_t; opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return access libmongoc_1_0_mongoc_mongoc_cursor_h.u_mongoc_cursor_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_find_indexes_with_opts";

   function mongoc_collection_find
     (collection : access mongoc_collection_t;
      flags : libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_query_flags_t;
      skip : Interfaces.Unsigned_32;
      limit : Interfaces.Unsigned_32;
      batch_size : Interfaces.Unsigned_32;
      query : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      fields : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t) return access libmongoc_1_0_mongoc_mongoc_cursor_h.u_mongoc_cursor_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_find";

   function mongoc_collection_find_with_opts
     (collection : access mongoc_collection_t;
      filter : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t) return access libmongoc_1_0_mongoc_mongoc_cursor_h.u_mongoc_cursor_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_find_with_opts";

   function mongoc_collection_insert
     (collection : access mongoc_collection_t;
      flags : libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_insert_flags_t;
      document : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      write_concern : access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_insert";

   function mongoc_collection_insert_one
     (collection : access mongoc_collection_t;
      document : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_insert_one";

   function mongoc_collection_insert_many
     (collection : access mongoc_collection_t;
      documents : System.Address;
      n_documents : size_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_insert_many";

   function mongoc_collection_insert_bulk
     (collection : access mongoc_collection_t;
      flags : libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_insert_flags_t;
      documents : System.Address;
      n_documents : Interfaces.Unsigned_32;
      write_concern : access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_insert_bulk";

   function mongoc_collection_update
     (collection : access mongoc_collection_t;
      flags : libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_update_flags_t;
      selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      update : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      write_concern : access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:204
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_update";

   function mongoc_collection_update_one
     (collection : access mongoc_collection_t;
      selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      update : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:211
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_update_one";

   function mongoc_collection_update_many
     (collection : access mongoc_collection_t;
      selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      update : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_update_many";

   function mongoc_collection_replace_one
     (collection : access mongoc_collection_t;
      selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      replacement : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_replace_one";

   function mongoc_collection_delete
     (collection : access mongoc_collection_t;
      flags : libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_delete_flags_t;
      selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      write_concern : access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_delete";

   function mongoc_collection_save
     (collection : access mongoc_collection_t;
      document : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      write_concern : access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_save";

   function mongoc_collection_remove
     (collection : access mongoc_collection_t;
      flags : libmongoc_1_0_mongoc_mongoc_flags_h.mongoc_remove_flags_t;
      selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      write_concern : access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_remove";

   function mongoc_collection_delete_one
     (collection : access mongoc_collection_t;
      selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_delete_one";

   function mongoc_collection_delete_many
     (collection : access mongoc_collection_t;
      selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_delete_many";

   function mongoc_collection_rename
     (collection : access mongoc_collection_t;
      new_db : Interfaces.C.Strings.chars_ptr;
      new_name : Interfaces.C.Strings.chars_ptr;
      drop_target_before_rename : Extensions.bool;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_rename";

   function mongoc_collection_rename_with_opts
     (collection : access mongoc_collection_t;
      new_db : Interfaces.C.Strings.chars_ptr;
      new_name : Interfaces.C.Strings.chars_ptr;
      drop_target_before_rename : Extensions.bool;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_rename_with_opts";

   function mongoc_collection_find_and_modify_with_opts
     (collection : access mongoc_collection_t;
      query : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libmongoc_1_0_mongoc_mongoc_find_and_modify_h.u_mongoc_find_and_modify_opts_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:278
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_find_and_modify_with_opts";

   function mongoc_collection_find_and_modify
     (collection : access mongoc_collection_t;
      query : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      sort : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      update : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      fields : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      u_remove : Extensions.bool;
      upsert : Extensions.bool;
      u_new : Extensions.bool;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:285
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_find_and_modify";

   function mongoc_collection_stats
     (collection : access mongoc_collection_t;
      options : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:296
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_stats";

   function mongoc_collection_create_bulk_operation
     (collection : access mongoc_collection_t;
      ordered : Extensions.bool;
      write_concern : access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t) return access libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_bulk_operation_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_create_bulk_operation";

   function mongoc_collection_create_bulk_operation_with_opts (collection : access mongoc_collection_t; opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return access libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_bulk_operation_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:307
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_create_bulk_operation_with_opts";

   function mongoc_collection_get_read_prefs (collection : access constant mongoc_collection_t) return access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:311
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_get_read_prefs";

   procedure mongoc_collection_set_read_prefs (collection : access mongoc_collection_t; read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:313
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_set_read_prefs";

   function mongoc_collection_get_read_concern (collection : access constant mongoc_collection_t) return access constant libmongoc_1_0_mongoc_mongoc_read_concern_h.u_mongoc_read_concern_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:316
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_get_read_concern";

   procedure mongoc_collection_set_read_concern (collection : access mongoc_collection_t; read_concern : access constant libmongoc_1_0_mongoc_mongoc_read_concern_h.u_mongoc_read_concern_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:318
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_set_read_concern";

   function mongoc_collection_get_write_concern (collection : access constant mongoc_collection_t) return access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:321
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_get_write_concern";

   procedure mongoc_collection_set_write_concern (collection : access mongoc_collection_t; write_concern : access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_set_write_concern";

   function mongoc_collection_get_name (collection : access mongoc_collection_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:327
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_get_name";

   function mongoc_collection_get_last_error (collection : access constant mongoc_collection_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_get_last_error";

   function mongoc_collection_keys_to_index_string (keys : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:332
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_keys_to_index_string";

   function mongoc_collection_validate
     (collection : access mongoc_collection_t;
      options : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:335
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_validate";

   function mongoc_collection_watch
     (coll : access constant mongoc_collection_t;
      pipeline : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return access libmongoc_1_0_mongoc_mongoc_change_stream_h.u_mongoc_change_stream_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:340
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_watch";

   function mongoc_collection_count_documents
     (coll : access mongoc_collection_t;
      filter : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:344
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_count_documents";

   function mongoc_collection_estimated_document_count
     (coll : access mongoc_collection_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-collection.h:351
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_collection_estimated_document_count";

end libmongoc_1_0_mongoc_mongoc_collection_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
