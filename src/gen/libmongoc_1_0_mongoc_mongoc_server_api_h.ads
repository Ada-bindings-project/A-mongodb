pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;
limited with libmongoc_1_0_mongoc_mongoc_optional_h;

package libmongoc_1_0_mongoc_mongoc_server_api_h is

   type mongoc_server_api_version_t is 
     (MONGOC_SERVER_API_V1)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-api.h:29

   type u_mongoc_server_api_t is null record;   -- incomplete struct

   subtype mongoc_server_api_t is u_mongoc_server_api_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-api.h:31

   function mongoc_server_api_version_to_string (version : mongoc_server_api_version_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-api.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_api_version_to_string";

   function mongoc_server_api_version_from_string (version : Interfaces.C.Strings.chars_ptr; c_out : access mongoc_server_api_version_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-api.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_api_version_from_string";

   function mongoc_server_api_new (version : mongoc_server_api_version_t) return access mongoc_server_api_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-api.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_api_new";

   function mongoc_server_api_copy (api : access constant mongoc_server_api_t) return access mongoc_server_api_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-api.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_api_copy";

   procedure mongoc_server_api_destroy (api : access mongoc_server_api_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-api.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_api_destroy";

   procedure mongoc_server_api_strict (api : access mongoc_server_api_t; strict : Extensions.bool)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-api.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_api_strict";

   procedure mongoc_server_api_deprecation_errors (api : access mongoc_server_api_t; deprecation_errors : Extensions.bool)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-api.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_api_deprecation_errors";

   function mongoc_server_api_get_deprecation_errors (api : access constant mongoc_server_api_t) return access constant libmongoc_1_0_mongoc_mongoc_optional_h.mongoc_optional_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-api.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_api_get_deprecation_errors";

   function mongoc_server_api_get_strict (api : access constant mongoc_server_api_t) return access constant libmongoc_1_0_mongoc_mongoc_optional_h.mongoc_optional_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-api.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_api_get_strict";

   function mongoc_server_api_get_version (api : access constant mongoc_server_api_t) return mongoc_server_api_version_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-server-api.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_server_api_get_version";

end libmongoc_1_0_mongoc_mongoc_server_api_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
