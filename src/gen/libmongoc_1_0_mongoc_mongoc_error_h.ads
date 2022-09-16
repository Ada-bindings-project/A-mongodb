pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libbson_1_0_bson_bson_types_h;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;

package libmongoc_1_0_mongoc_mongoc_error_h is

   MONGOC_ERROR_API_VERSION_LEGACY : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-error.h:26
   MONGOC_ERROR_API_VERSION_2 : constant := 2;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-error.h:27

   subtype mongoc_error_domain_t is unsigned;
   mongoc_error_domain_t_MONGOC_ERROR_CLIENT : constant mongoc_error_domain_t := 1;
   mongoc_error_domain_t_MONGOC_ERROR_STREAM : constant mongoc_error_domain_t := 2;
   mongoc_error_domain_t_MONGOC_ERROR_PROTOCOL : constant mongoc_error_domain_t := 3;
   mongoc_error_domain_t_MONGOC_ERROR_CURSOR : constant mongoc_error_domain_t := 4;
   mongoc_error_domain_t_MONGOC_ERROR_QUERY : constant mongoc_error_domain_t := 5;
   mongoc_error_domain_t_MONGOC_ERROR_INSERT : constant mongoc_error_domain_t := 6;
   mongoc_error_domain_t_MONGOC_ERROR_SASL : constant mongoc_error_domain_t := 7;
   mongoc_error_domain_t_MONGOC_ERROR_BSON : constant mongoc_error_domain_t := 8;
   mongoc_error_domain_t_MONGOC_ERROR_MATCHER : constant mongoc_error_domain_t := 9;
   mongoc_error_domain_t_MONGOC_ERROR_NAMESPACE : constant mongoc_error_domain_t := 10;
   mongoc_error_domain_t_MONGOC_ERROR_COMMAND : constant mongoc_error_domain_t := 11;
   mongoc_error_domain_t_MONGOC_ERROR_COLLECTION : constant mongoc_error_domain_t := 12;
   mongoc_error_domain_t_MONGOC_ERROR_GRIDFS : constant mongoc_error_domain_t := 13;
   mongoc_error_domain_t_MONGOC_ERROR_SCRAM : constant mongoc_error_domain_t := 14;
   mongoc_error_domain_t_MONGOC_ERROR_SERVER_SELECTION : constant mongoc_error_domain_t := 15;
   mongoc_error_domain_t_MONGOC_ERROR_WRITE_CONCERN : constant mongoc_error_domain_t := 16;
   mongoc_error_domain_t_MONGOC_ERROR_SERVER : constant mongoc_error_domain_t := 17;
   mongoc_error_domain_t_MONGOC_ERROR_TRANSACTION : constant mongoc_error_domain_t := 18;
   mongoc_error_domain_t_MONGOC_ERROR_CLIENT_SIDE_ENCRYPTION : constant mongoc_error_domain_t := 19;
   mongoc_error_domain_t_MONGOC_ERROR_POOL : constant mongoc_error_domain_t := 20;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-error.h:53

   subtype mongoc_error_code_t is unsigned;
   mongoc_error_code_t_MONGOC_ERROR_STREAM_INVALID_TYPE : constant mongoc_error_code_t := 1;
   mongoc_error_code_t_MONGOC_ERROR_STREAM_INVALID_STATE : constant mongoc_error_code_t := 2;
   mongoc_error_code_t_MONGOC_ERROR_STREAM_NAME_RESOLUTION : constant mongoc_error_code_t := 3;
   mongoc_error_code_t_MONGOC_ERROR_STREAM_SOCKET : constant mongoc_error_code_t := 4;
   mongoc_error_code_t_MONGOC_ERROR_STREAM_CONNECT : constant mongoc_error_code_t := 5;
   mongoc_error_code_t_MONGOC_ERROR_STREAM_NOT_ESTABLISHED : constant mongoc_error_code_t := 6;
   mongoc_error_code_t_MONGOC_ERROR_CLIENT_NOT_READY : constant mongoc_error_code_t := 7;
   mongoc_error_code_t_MONGOC_ERROR_CLIENT_TOO_BIG : constant mongoc_error_code_t := 8;
   mongoc_error_code_t_MONGOC_ERROR_CLIENT_TOO_SMALL : constant mongoc_error_code_t := 9;
   mongoc_error_code_t_MONGOC_ERROR_CLIENT_GETNONCE : constant mongoc_error_code_t := 10;
   mongoc_error_code_t_MONGOC_ERROR_CLIENT_AUTHENTICATE : constant mongoc_error_code_t := 11;
   mongoc_error_code_t_MONGOC_ERROR_CLIENT_NO_ACCEPTABLE_PEER : constant mongoc_error_code_t := 12;
   mongoc_error_code_t_MONGOC_ERROR_CLIENT_IN_EXHAUST : constant mongoc_error_code_t := 13;
   mongoc_error_code_t_MONGOC_ERROR_PROTOCOL_INVALID_REPLY : constant mongoc_error_code_t := 14;
   mongoc_error_code_t_MONGOC_ERROR_PROTOCOL_BAD_WIRE_VERSION : constant mongoc_error_code_t := 15;
   mongoc_error_code_t_MONGOC_ERROR_CURSOR_INVALID_CURSOR : constant mongoc_error_code_t := 16;
   mongoc_error_code_t_MONGOC_ERROR_QUERY_FAILURE : constant mongoc_error_code_t := 17;
   mongoc_error_code_t_MONGOC_ERROR_BSON_INVALID : constant mongoc_error_code_t := 18;
   mongoc_error_code_t_MONGOC_ERROR_MATCHER_INVALID : constant mongoc_error_code_t := 19;
   mongoc_error_code_t_MONGOC_ERROR_NAMESPACE_INVALID : constant mongoc_error_code_t := 20;
   mongoc_error_code_t_MONGOC_ERROR_NAMESPACE_INVALID_FILTER_TYPE : constant mongoc_error_code_t := 21;
   mongoc_error_code_t_MONGOC_ERROR_COMMAND_INVALID_ARG : constant mongoc_error_code_t := 22;
   mongoc_error_code_t_MONGOC_ERROR_COLLECTION_INSERT_FAILED : constant mongoc_error_code_t := 23;
   mongoc_error_code_t_MONGOC_ERROR_COLLECTION_UPDATE_FAILED : constant mongoc_error_code_t := 24;
   mongoc_error_code_t_MONGOC_ERROR_COLLECTION_DELETE_FAILED : constant mongoc_error_code_t := 25;
   mongoc_error_code_t_MONGOC_ERROR_COLLECTION_DOES_NOT_EXIST : constant mongoc_error_code_t := 26;
   mongoc_error_code_t_MONGOC_ERROR_GRIDFS_INVALID_FILENAME : constant mongoc_error_code_t := 27;
   mongoc_error_code_t_MONGOC_ERROR_SCRAM_NOT_DONE : constant mongoc_error_code_t := 28;
   mongoc_error_code_t_MONGOC_ERROR_SCRAM_PROTOCOL_ERROR : constant mongoc_error_code_t := 29;
   mongoc_error_code_t_MONGOC_ERROR_QUERY_COMMAND_NOT_FOUND : constant mongoc_error_code_t := 59;
   mongoc_error_code_t_MONGOC_ERROR_QUERY_NOT_TAILABLE : constant mongoc_error_code_t := 13051;
   mongoc_error_code_t_MONGOC_ERROR_SERVER_SELECTION_BAD_WIRE_VERSION : constant mongoc_error_code_t := 13052;
   mongoc_error_code_t_MONGOC_ERROR_SERVER_SELECTION_FAILURE : constant mongoc_error_code_t := 13053;
   mongoc_error_code_t_MONGOC_ERROR_SERVER_SELECTION_INVALID_ID : constant mongoc_error_code_t := 13054;
   mongoc_error_code_t_MONGOC_ERROR_GRIDFS_CHUNK_MISSING : constant mongoc_error_code_t := 13055;
   mongoc_error_code_t_MONGOC_ERROR_GRIDFS_PROTOCOL_ERROR : constant mongoc_error_code_t := 13056;
   mongoc_error_code_t_MONGOC_ERROR_PROTOCOL_ERROR : constant mongoc_error_code_t := 17;
   mongoc_error_code_t_MONGOC_ERROR_WRITE_CONCERN_ERROR : constant mongoc_error_code_t := 64;
   mongoc_error_code_t_MONGOC_ERROR_DUPLICATE_KEY : constant mongoc_error_code_t := 11000;
   mongoc_error_code_t_MONGOC_ERROR_MAX_TIME_MS_EXPIRED : constant mongoc_error_code_t := 50;
   mongoc_error_code_t_MONGOC_ERROR_CHANGE_STREAM_NO_RESUME_TOKEN : constant mongoc_error_code_t := 51;
   mongoc_error_code_t_MONGOC_ERROR_CLIENT_SESSION_FAILURE : constant mongoc_error_code_t := 52;
   mongoc_error_code_t_MONGOC_ERROR_TRANSACTION_INVALID_STATE : constant mongoc_error_code_t := 53;
   mongoc_error_code_t_MONGOC_ERROR_GRIDFS_CORRUPT : constant mongoc_error_code_t := 54;
   mongoc_error_code_t_MONGOC_ERROR_GRIDFS_BUCKET_FILE_NOT_FOUND : constant mongoc_error_code_t := 55;
   mongoc_error_code_t_MONGOC_ERROR_GRIDFS_BUCKET_STREAM : constant mongoc_error_code_t := 56;
   mongoc_error_code_t_MONGOC_ERROR_CLIENT_INVALID_ENCRYPTION_STATE : constant mongoc_error_code_t := 57;
   mongoc_error_code_t_MONGOC_ERROR_CLIENT_INVALID_ENCRYPTION_ARG : constant mongoc_error_code_t := 58;
   mongoc_error_code_t_MONGOC_ERROR_CLIENT_API_ALREADY_SET : constant mongoc_error_code_t := 59;
   mongoc_error_code_t_MONGOC_ERROR_CLIENT_API_FROM_POOL : constant mongoc_error_code_t := 60;
   mongoc_error_code_t_MONGOC_ERROR_POOL_API_ALREADY_SET : constant mongoc_error_code_t := 61;
   mongoc_error_code_t_MONGOC_ERROR_POOL_API_TOO_LATE : constant mongoc_error_code_t := 62;
   mongoc_error_code_t_MONGOC_ERROR_CLIENT_INVALID_LOAD_BALANCER : constant mongoc_error_code_t := 63;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-error.h:137

   function mongoc_error_has_label (reply : access constant libbson_1_0_bson_bson_types_h.u_bson_t; label : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-error.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_error_has_label";

end libmongoc_1_0_mongoc_mongoc_error_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
