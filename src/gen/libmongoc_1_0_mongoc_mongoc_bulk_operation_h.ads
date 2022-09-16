pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libbson_1_0_bson_bson_types_h;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;
with Interfaces.C.Extensions;
limited with libmongoc_1_0_mongoc_mongoc_write_concern_h;
with Interfaces.C.Strings;
with System;

package libmongoc_1_0_mongoc_mongoc_bulk_operation_h is

   --  unsupported macro: MONGOC_BULK_WRITE_FLAGS_INIT { true, false, 0 }
   type u_mongoc_client_session_t is null record;   -- incomplete struct

   type u_mongoc_bulk_operation_t is null record;   -- incomplete struct

   subtype mongoc_bulk_operation_t is u_mongoc_bulk_operation_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:40

   type u_mongoc_bulk_write_flags_t is null record;   -- incomplete struct

   subtype mongoc_bulk_write_flags_t is u_mongoc_bulk_write_flags_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:41

   procedure mongoc_bulk_operation_destroy (bulk : access mongoc_bulk_operation_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_destroy";

   function mongoc_bulk_operation_execute
     (bulk : access mongoc_bulk_operation_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Interfaces.Unsigned_32  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_execute";

   procedure mongoc_bulk_operation_delete (bulk : access mongoc_bulk_operation_t; selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_delete";

   procedure mongoc_bulk_operation_delete_one (bulk : access mongoc_bulk_operation_t; selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_delete_one";

   procedure mongoc_bulk_operation_insert (bulk : access mongoc_bulk_operation_t; document : access constant libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_insert";

   function mongoc_bulk_operation_insert_with_opts
     (bulk : access mongoc_bulk_operation_t;
      document : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_insert_with_opts";

   procedure mongoc_bulk_operation_remove (bulk : access mongoc_bulk_operation_t; selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_remove";

   function mongoc_bulk_operation_remove_many_with_opts
     (bulk : access mongoc_bulk_operation_t;
      selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_remove_many_with_opts";

   procedure mongoc_bulk_operation_remove_one (bulk : access mongoc_bulk_operation_t; selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_remove_one";

   function mongoc_bulk_operation_remove_one_with_opts
     (bulk : access mongoc_bulk_operation_t;
      selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_remove_one_with_opts";

   procedure mongoc_bulk_operation_replace_one
     (bulk : access mongoc_bulk_operation_t;
      selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      document : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      upsert : Extensions.bool)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_replace_one";

   function mongoc_bulk_operation_replace_one_with_opts
     (bulk : access mongoc_bulk_operation_t;
      selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      document : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_replace_one_with_opts";

   procedure mongoc_bulk_operation_update
     (bulk : access mongoc_bulk_operation_t;
      selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      document : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      upsert : Extensions.bool)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_update";

   function mongoc_bulk_operation_update_many_with_opts
     (bulk : access mongoc_bulk_operation_t;
      selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      document : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_update_many_with_opts";

   procedure mongoc_bulk_operation_update_one
     (bulk : access mongoc_bulk_operation_t;
      selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      document : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      upsert : Extensions.bool)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_update_one";

   function mongoc_bulk_operation_update_one_with_opts
     (bulk : access mongoc_bulk_operation_t;
      selector : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      document : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_update_one_with_opts";

   procedure mongoc_bulk_operation_set_bypass_document_validation (bulk : access mongoc_bulk_operation_t; bypass : Extensions.bool)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_set_bypass_document_validation";

   function mongoc_bulk_operation_new (ordered : Extensions.bool) return access mongoc_bulk_operation_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_new";

   procedure mongoc_bulk_operation_set_write_concern (bulk : access mongoc_bulk_operation_t; write_concern : access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_set_write_concern";

   procedure mongoc_bulk_operation_set_database (bulk : access mongoc_bulk_operation_t; database : Interfaces.C.Strings.chars_ptr)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_set_database";

   procedure mongoc_bulk_operation_set_collection (bulk : access mongoc_bulk_operation_t; collection : Interfaces.C.Strings.chars_ptr)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_set_collection";

   procedure mongoc_bulk_operation_set_client (bulk : access mongoc_bulk_operation_t; client : System.Address)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_set_client";

   procedure mongoc_bulk_operation_set_client_session (bulk : access mongoc_bulk_operation_t; client_session : access u_mongoc_client_session_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_set_client_session";

   procedure mongoc_bulk_operation_set_hint (bulk : access mongoc_bulk_operation_t; server_id : Interfaces.Unsigned_32)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_set_hint";

   function mongoc_bulk_operation_get_hint (bulk : access constant mongoc_bulk_operation_t) return Interfaces.Unsigned_32  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_get_hint";

   function mongoc_bulk_operation_get_write_concern (bulk : access constant mongoc_bulk_operation_t) return access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-bulk-operation.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_bulk_operation_get_write_concern";

end libmongoc_1_0_mongoc_mongoc_bulk_operation_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
