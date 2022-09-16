pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libmongoc_1_0_mongoc_mongoc_gridfs_file_h;
limited with libmongoc_1_0_mongoc_mongoc_stream_h;

package libmongoc_1_0_mongoc_mongoc_stream_gridfs_h is

   function mongoc_stream_gridfs_new (file : access libmongoc_1_0_mongoc_mongoc_gridfs_file_h.u_mongoc_gridfs_file_t) return access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream-gridfs.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_gridfs_new";

end libmongoc_1_0_mongoc_mongoc_stream_gridfs_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
