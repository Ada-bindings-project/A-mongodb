pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libmongoc_1_0_mongoc_mongoc_database_h;
limited with libbson_1_0_bson_bson_types_h;
limited with libmongoc_1_0_mongoc_mongoc_read_prefs_h;
with Interfaces.C.Strings;
limited with libmongoc_1_0_mongoc_mongoc_stream_h;
with Interfaces.C.Extensions;
limited with libmongoc_1_0_mongoc_mongoc_cursor_h;

package libmongoc_1_0_mongoc_mongoc_gridfs_bucket_h is

   type u_mongoc_gridfs_bucket_t is null record;   -- incomplete struct

   subtype mongoc_gridfs_bucket_t is u_mongoc_gridfs_bucket_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-bucket.h:29

   function mongoc_gridfs_bucket_new
     (db : access libmongoc_1_0_mongoc_mongoc_database_h.u_mongoc_database_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access mongoc_gridfs_bucket_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-bucket.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_bucket_new";

   function mongoc_gridfs_bucket_open_upload_stream
     (bucket : access mongoc_gridfs_bucket_t;
      filename : Interfaces.C.Strings.chars_ptr;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      file_id : access libbson_1_0_bson_bson_types_h.u_bson_value_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-bucket.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_bucket_open_upload_stream";

   function mongoc_gridfs_bucket_open_upload_stream_with_id
     (bucket : access mongoc_gridfs_bucket_t;
      file_id : access constant libbson_1_0_bson_bson_types_h.u_bson_value_t;
      filename : Interfaces.C.Strings.chars_ptr;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-bucket.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_bucket_open_upload_stream_with_id";

   function mongoc_gridfs_bucket_upload_from_stream
     (bucket : access mongoc_gridfs_bucket_t;
      filename : Interfaces.C.Strings.chars_ptr;
      source : access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      file_id : access libbson_1_0_bson_bson_types_h.u_bson_value_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-bucket.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_bucket_upload_from_stream";

   function mongoc_gridfs_bucket_upload_from_stream_with_id
     (bucket : access mongoc_gridfs_bucket_t;
      file_id : access constant libbson_1_0_bson_bson_types_h.u_bson_value_t;
      filename : Interfaces.C.Strings.chars_ptr;
      source : access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-bucket.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_bucket_upload_from_stream_with_id";

   function mongoc_gridfs_bucket_open_download_stream
     (bucket : access mongoc_gridfs_bucket_t;
      file_id : access constant libbson_1_0_bson_bson_types_h.u_bson_value_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-bucket.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_bucket_open_download_stream";

   function mongoc_gridfs_bucket_download_to_stream
     (bucket : access mongoc_gridfs_bucket_t;
      file_id : access constant libbson_1_0_bson_bson_types_h.u_bson_value_t;
      destination : access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-bucket.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_bucket_download_to_stream";

   function mongoc_gridfs_bucket_delete_by_id
     (bucket : access mongoc_gridfs_bucket_t;
      file_id : access constant libbson_1_0_bson_bson_types_h.u_bson_value_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-bucket.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_bucket_delete_by_id";

   function mongoc_gridfs_bucket_find
     (bucket : access mongoc_gridfs_bucket_t;
      filter : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return access libmongoc_1_0_mongoc_mongoc_cursor_h.u_mongoc_cursor_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-bucket.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_bucket_find";

   function mongoc_gridfs_bucket_stream_error (stream : access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-bucket.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_bucket_stream_error";

   procedure mongoc_gridfs_bucket_destroy (bucket : access mongoc_gridfs_bucket_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-bucket.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_bucket_destroy";

   function mongoc_gridfs_bucket_abort_upload (stream : access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-bucket.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_bucket_abort_upload";

end libmongoc_1_0_mongoc_mongoc_gridfs_bucket_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
