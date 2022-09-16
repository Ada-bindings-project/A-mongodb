pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libmongoc_1_0_mongoc_mongoc_stream_h;
limited with libmongoc_1_0_mongoc_mongoc_gridfs_file_h;
limited with libbson_1_0_bson_bson_types_h;
limited with libmongoc_1_0_mongoc_mongoc_gridfs_file_list_h;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;
limited with libmongoc_1_0_mongoc_mongoc_collection_h;

package libmongoc_1_0_mongoc_mongoc_gridfs_h is

   type u_mongoc_gridfs_t is null record;   -- incomplete struct

   subtype mongoc_gridfs_t is u_mongoc_gridfs_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs.h:34

   function mongoc_gridfs_create_file_from_stream
     (gridfs : access mongoc_gridfs_t;
      stream : access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t;
      opt : access libmongoc_1_0_mongoc_mongoc_gridfs_file_h.u_mongoc_gridfs_file_opt_t) return access libmongoc_1_0_mongoc_mongoc_gridfs_file_h.u_mongoc_gridfs_file_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_create_file_from_stream";

   function mongoc_gridfs_create_file (gridfs : access mongoc_gridfs_t; opt : access libmongoc_1_0_mongoc_mongoc_gridfs_file_h.u_mongoc_gridfs_file_opt_t) return access libmongoc_1_0_mongoc_mongoc_gridfs_file_h.u_mongoc_gridfs_file_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_create_file";

   function mongoc_gridfs_find (gridfs : access mongoc_gridfs_t; query : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return access libmongoc_1_0_mongoc_mongoc_gridfs_file_list_h.u_mongoc_gridfs_file_list_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_find";

   function mongoc_gridfs_find_one
     (gridfs : access mongoc_gridfs_t;
      query : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libmongoc_1_0_mongoc_mongoc_gridfs_file_h.u_mongoc_gridfs_file_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_find_one";

   function mongoc_gridfs_find_with_opts
     (gridfs : access mongoc_gridfs_t;
      filter : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return access libmongoc_1_0_mongoc_mongoc_gridfs_file_list_h.u_mongoc_gridfs_file_list_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_find_with_opts";

   function mongoc_gridfs_find_one_with_opts
     (gridfs : access mongoc_gridfs_t;
      filter : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libmongoc_1_0_mongoc_mongoc_gridfs_file_h.u_mongoc_gridfs_file_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_find_one_with_opts";

   function mongoc_gridfs_find_one_by_filename
     (gridfs : access mongoc_gridfs_t;
      filename : Interfaces.C.Strings.chars_ptr;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access libmongoc_1_0_mongoc_mongoc_gridfs_file_h.u_mongoc_gridfs_file_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_find_one_by_filename";

   function mongoc_gridfs_drop (gridfs : access mongoc_gridfs_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_drop";

   procedure mongoc_gridfs_destroy (gridfs : access mongoc_gridfs_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_destroy";

   function mongoc_gridfs_get_files (gridfs : access mongoc_gridfs_t) return access libmongoc_1_0_mongoc_mongoc_collection_h.u_mongoc_collection_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_get_files";

   function mongoc_gridfs_get_chunks (gridfs : access mongoc_gridfs_t) return access libmongoc_1_0_mongoc_mongoc_collection_h.u_mongoc_collection_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_get_chunks";

   function mongoc_gridfs_remove_by_filename
     (gridfs : access mongoc_gridfs_t;
      filename : Interfaces.C.Strings.chars_ptr;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_remove_by_filename";

end libmongoc_1_0_mongoc_mongoc_gridfs_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
