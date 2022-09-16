pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libmongoc_1_0_mongoc_mongoc_socket_h;
limited with libmongoc_1_0_mongoc_mongoc_stream_h;

package libmongoc_1_0_mongoc_mongoc_stream_socket_h is

   type u_mongoc_stream_socket_t is null record;   -- incomplete struct

   subtype mongoc_stream_socket_t is u_mongoc_stream_socket_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream-socket.h:30

   function mongoc_stream_socket_new (socket : access libmongoc_1_0_mongoc_mongoc_socket_h.u_mongoc_socket_t) return access libmongoc_1_0_mongoc_mongoc_stream_h.u_mongoc_stream_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream-socket.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_socket_new";

   function mongoc_stream_socket_get_socket (stream : access mongoc_stream_socket_t) return access libmongoc_1_0_mongoc_mongoc_socket_h.u_mongoc_socket_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-stream-socket.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_stream_socket_get_socket";

end libmongoc_1_0_mongoc_mongoc_stream_socket_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
