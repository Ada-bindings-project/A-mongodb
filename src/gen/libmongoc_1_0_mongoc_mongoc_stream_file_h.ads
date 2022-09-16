pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libmongoc_1_0_mongoc_mongoc_stream_h;
with Interfaces.C.Strings;

package libmongoc_1_0_mongoc_mongoc_stream_file_h is

   type u_mongoc_stream_file_t is null record;   -- incomplete struct

   subtype mongoc_stream_file_t is u_mongoc_stream_file_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream-file.h:29

   function mongoc_stream_file_new (fd : int) return access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream-file.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_file_new";

   function mongoc_stream_file_new_for_path
     (path : Interfaces.C.Strings.chars_ptr;
      flags : int;
      mode : int) return access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream-file.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_file_new_for_path";

   function mongoc_stream_file_get_fd (stream : access mongoc_stream_file_t) return int  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream-file.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_file_get_fd";

end libmongoc_1_0_mongoc_mongoc_stream_file_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
