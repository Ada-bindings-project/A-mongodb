pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package libmongoc_1_0_mongoc_mongoc_gridfs_file_page_h is

   type u_mongoc_gridfs_file_page_t is null record;   -- incomplete struct

   subtype mongoc_gridfs_file_page_t is u_mongoc_gridfs_file_page_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file-page.h:32

end libmongoc_1_0_mongoc_mongoc_gridfs_file_page_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
