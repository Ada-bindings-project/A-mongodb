pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;
limited with libmongoc_1_0_mongoc_mongoc_host_list_h;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
with Interfaces.C.Strings;
limited with libbson_1_0_bson_bson_types_h;

package libmongoc_1_0_mongoc_mongoc_server_description_h is

   type u_mongoc_server_description_t is null record;   -- incomplete struct

   subtype mongoc_server_description_t is u_mongoc_server_description_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-description.h:30

   procedure mongoc_server_description_destroy (description : access mongoc_server_description_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-description.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_description_destroy";

   function mongoc_server_description_new_copy (description : access constant mongoc_server_description_t) return access mongoc_server_description_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-description.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_description_new_copy";

   function mongoc_server_description_id (description : access constant mongoc_server_description_t) return Interfaces.Unsigned_32  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-description.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_description_id";

   function mongoc_server_description_host (description : access constant mongoc_server_description_t) return access libmongoc_1_0_mongoc_mongoc_host_list_h.u_mongoc_host_list_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-description.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_description_host";

   function mongoc_server_description_last_update_time (description : access constant mongoc_server_description_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-description.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_description_last_update_time";

   function mongoc_server_description_round_trip_time (description : access constant mongoc_server_description_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-description.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_description_round_trip_time";

   function mongoc_server_description_type (description : access constant mongoc_server_description_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-description.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_description_type";

   function mongoc_server_description_hello_response (description : access constant mongoc_server_description_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-description.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_description_hello_response";

   function mongoc_server_description_ismaster (description : access constant mongoc_server_description_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-description.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_description_ismaster";

   function mongoc_server_description_compressor_id (description : access constant mongoc_server_description_t) return Interfaces.Integer_32  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-description.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_description_compressor_id";

end libmongoc_1_0_mongoc_mongoc_server_description_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
