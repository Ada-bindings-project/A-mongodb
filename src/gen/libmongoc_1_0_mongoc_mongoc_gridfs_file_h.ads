pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
limited with libbson_1_0_bson_bson_types_h;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
with System; --  limited with x86_64_linux_gnu_bits_types_struct_iovec_h;
--  with stddef_h;
--  with stdio_h;
with Interfaces.C.Extensions;

package libmongoc_1_0_mongoc_mongoc_gridfs_file_h is

   --  unsupported macro: MONGOC_GRIDFS_FILE_STR_HEADER(name) MONGOC_EXPORT (const char *) mongoc_gridfs_file_get_ ##name (mongoc_gridfs_file_t *file); MONGOC_EXPORT (void) mongoc_gridfs_file_set_ ##name (mongoc_gridfs_file_t *file, const char *str);
   --  unsupported macro: MONGOC_GRIDFS_FILE_BSON_HEADER(name) MONGOC_EXPORT (const bson_t *) mongoc_gridfs_file_get_ ##name (mongoc_gridfs_file_t *file); MONGOC_EXPORT (void) mongoc_gridfs_file_set_ ##name (mongoc_gridfs_file_t *file, const bson_t *bson);
   type u_mongoc_gridfs_file_t is null record;   -- incomplete struct

   subtype mongoc_gridfs_file_t is u_mongoc_gridfs_file_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:45

   type u_mongoc_gridfs_file_opt_t;
   subtype mongoc_gridfs_file_opt_t is u_mongoc_gridfs_file_opt_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:46

   type u_mongoc_gridfs_file_opt_t is record
      md5 : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:50
      filename : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:51
      content_type : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:52
      aliases : access constant libbson_1_0_bson_bson_types_h.u_bson_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:53
      metadata : access constant libbson_1_0_bson_bson_types_h.u_bson_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:54
      chunk_size : aliased Interfaces.Unsigned_32;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:55
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:49

   function mongoc_gridfs_file_get_md5 (file : access mongoc_gridfs_file_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_get_md5";

   procedure mongoc_gridfs_file_set_md5 (file : access mongoc_gridfs_file_t; str : Interfaces.C.Strings.chars_ptr)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_set_md5";

   function mongoc_gridfs_file_get_filename (file : access mongoc_gridfs_file_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_get_filename";

   procedure mongoc_gridfs_file_set_filename (file : access mongoc_gridfs_file_t; str : Interfaces.C.Strings.chars_ptr)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_set_filename";

   function mongoc_gridfs_file_get_content_type (file : access mongoc_gridfs_file_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_get_content_type";

   procedure mongoc_gridfs_file_set_content_type (file : access mongoc_gridfs_file_t; str : Interfaces.C.Strings.chars_ptr)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_set_content_type";

   function mongoc_gridfs_file_get_aliases (file : access mongoc_gridfs_file_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_get_aliases";

   procedure mongoc_gridfs_file_set_aliases (file : access mongoc_gridfs_file_t; bson : access constant libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_set_aliases";

   function mongoc_gridfs_file_get_metadata (file : access mongoc_gridfs_file_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_get_metadata";

   procedure mongoc_gridfs_file_set_metadata (file : access mongoc_gridfs_file_t; bson : access constant libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_set_metadata";

   function mongoc_gridfs_file_get_id (file : access mongoc_gridfs_file_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_value_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_get_id";

   function mongoc_gridfs_file_get_length (file : access mongoc_gridfs_file_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_get_length";

   function mongoc_gridfs_file_get_chunk_size (file : access mongoc_gridfs_file_t) return Interfaces.Integer_32  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_get_chunk_size";

   function mongoc_gridfs_file_get_upload_date (file : access mongoc_gridfs_file_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_get_upload_date";

   function mongoc_gridfs_file_writev
     (file : access mongoc_gridfs_file_t;
      iov : System.Address;
      iovcnt : size_t;
      timeout_msec : Interfaces.Unsigned_32) return size_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_writev";

   function mongoc_gridfs_file_readv
     (file : access mongoc_gridfs_file_t;
      iov : System.Address;
      iovcnt : size_t;
      min_bytes : size_t;
      timeout_msec : Interfaces.Unsigned_32) return size_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_readv";

   function mongoc_gridfs_file_seek
     (file : access mongoc_gridfs_file_t;
      c_delta : Interfaces.Integer_64;
      whence : int) return int  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_seek";

   function mongoc_gridfs_file_tell (file : access mongoc_gridfs_file_t) return Interfaces.Unsigned_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_tell";

   function mongoc_gridfs_file_set_id
     (file : access mongoc_gridfs_file_t;
      id : access constant libbson_1_0_bson_bson_types_h.u_bson_value_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_set_id";

   function mongoc_gridfs_file_save (file : access mongoc_gridfs_file_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_save";

   procedure mongoc_gridfs_file_destroy (file : access mongoc_gridfs_file_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_destroy";

   function mongoc_gridfs_file_error (file : access mongoc_gridfs_file_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_error";

   function mongoc_gridfs_file_remove (file : access mongoc_gridfs_file_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-gridfs-file.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_gridfs_file_remove";

end libmongoc_1_0_mongoc_mongoc_gridfs_file_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
