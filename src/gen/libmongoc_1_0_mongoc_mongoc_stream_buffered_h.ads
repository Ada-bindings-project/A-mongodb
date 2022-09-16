pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libmongoc_1_0_mongoc_mongoc_stream_h;
--  with stddef_h;

package libmongoc_1_0_mongoc_mongoc_stream_buffered_h is

   function mongoc_stream_buffered_new (base_stream : access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t; buffer_size : size_t) return access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream-buffered.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_buffered_new";

end libmongoc_1_0_mongoc_mongoc_stream_buffered_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
