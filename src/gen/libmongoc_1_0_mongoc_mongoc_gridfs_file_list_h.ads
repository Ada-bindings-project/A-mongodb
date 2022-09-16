pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libmongoc_1_0_mongoc_mongoc_gridfs_file_h;
limited with libbson_1_0_bson_bson_types_h;
with Interfaces.C.Extensions;

package libmongoc_1_0_mongoc_mongoc_gridfs_file_list_h is

   type u_mongoc_gridfs_file_list_t is null record;   -- incomplete struct

   subtype mongoc_gridfs_file_list_t is u_mongoc_gridfs_file_list_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file-list.h:31

   function mongoc_gridfs_file_list_next (list : access mongoc_gridfs_file_list_t) return access libmongoc_1_0_mongoc_mongoc_gridfs_file_h.u_mongoc_gridfs_file_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file-list.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_list_next";

   procedure mongoc_gridfs_file_list_destroy (list : access mongoc_gridfs_file_list_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file-list.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_list_destroy";

   function mongoc_gridfs_file_list_error (list : access mongoc_gridfs_file_list_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file-list.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_list_error";

end libmongoc_1_0_mongoc_mongoc_gridfs_file_list_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
