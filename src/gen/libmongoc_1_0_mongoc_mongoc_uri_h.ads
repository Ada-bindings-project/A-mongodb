pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
limited with libbson_1_0_bson_bson_types_h;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;
limited with libmongoc_1_0_mongoc_mongoc_host_list_h;
with Interfaces.C.Extensions;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
limited with libmongoc_1_0_mongoc_mongoc_read_prefs_h;
limited with libmongoc_1_0_mongoc_mongoc_write_concern_h;
limited with libmongoc_1_0_mongoc_mongoc_read_concern_h;

package libmongoc_1_0_mongoc_mongoc_uri_h is

   MONGOC_DEFAULT_PORT : constant := 27017;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:33

   MONGOC_URI_APPNAME : aliased constant String := "appname" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:36
   MONGOC_URI_AUTHMECHANISM : aliased constant String := "authmechanism" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:37
   MONGOC_URI_AUTHMECHANISMPROPERTIES : aliased constant String := "authmechanismproperties" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:38
   MONGOC_URI_AUTHSOURCE : aliased constant String := "authsource" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:39
   MONGOC_URI_CANONICALIZEHOSTNAME : aliased constant String := "canonicalizehostname" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:40
   MONGOC_URI_CONNECTTIMEOUTMS : aliased constant String := "connecttimeoutms" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:41
   MONGOC_URI_COMPRESSORS : aliased constant String := "compressors" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:42
   MONGOC_URI_DIRECTCONNECTION : aliased constant String := "directconnection" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:43
   MONGOC_URI_GSSAPISERVICENAME : aliased constant String := "gssapiservicename" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:44
   MONGOC_URI_HEARTBEATFREQUENCYMS : aliased constant String := "heartbeatfrequencyms" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:45
   MONGOC_URI_JOURNAL : aliased constant String := "journal" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:46
   MONGOC_URI_LOADBALANCED : aliased constant String := "loadbalanced" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:47
   MONGOC_URI_LOCALTHRESHOLDMS : aliased constant String := "localthresholdms" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:48
   MONGOC_URI_MAXIDLETIMEMS : aliased constant String := "maxidletimems" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:49
   MONGOC_URI_MAXPOOLSIZE : aliased constant String := "maxpoolsize" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:50
   MONGOC_URI_MAXSTALENESSSECONDS : aliased constant String := "maxstalenessseconds" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:51
   MONGOC_URI_MINPOOLSIZE : aliased constant String := "minpoolsize" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:52
   MONGOC_URI_READCONCERNLEVEL : aliased constant String := "readconcernlevel" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:53
   MONGOC_URI_READPREFERENCE : aliased constant String := "readpreference" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:54
   MONGOC_URI_READPREFERENCETAGS : aliased constant String := "readpreferencetags" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:55
   MONGOC_URI_REPLICASET : aliased constant String := "replicaset" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:56
   MONGOC_URI_RETRYREADS : aliased constant String := "retryreads" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:57
   MONGOC_URI_RETRYWRITES : aliased constant String := "retrywrites" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:58
   MONGOC_URI_SAFE : aliased constant String := "safe" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:59
   MONGOC_URI_SERVERSELECTIONTIMEOUTMS : aliased constant String := "serverselectiontimeoutms" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:60
   MONGOC_URI_SERVERSELECTIONTRYONCE : aliased constant String := "serverselectiontryonce" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:61
   MONGOC_URI_SLAVEOK : aliased constant String := "slaveok" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:62
   MONGOC_URI_SOCKETCHECKINTERVALMS : aliased constant String := "socketcheckintervalms" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:63
   MONGOC_URI_SOCKETTIMEOUTMS : aliased constant String := "sockettimeoutms" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:64
   MONGOC_URI_SRVSERVICENAME : aliased constant String := "srvservicename" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:65
   MONGOC_URI_SRVMAXHOSTS : aliased constant String := "srvmaxhosts" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:66
   MONGOC_URI_TLS : aliased constant String := "tls" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:67
   MONGOC_URI_TLSCERTIFICATEKEYFILE : aliased constant String := "tlscertificatekeyfile" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:68
   MONGOC_URI_TLSCERTIFICATEKEYFILEPASSWORD : aliased constant String := "tlscertificatekeyfilepassword" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:69
   MONGOC_URI_TLSCAFILE : aliased constant String := "tlscafile" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:70
   MONGOC_URI_TLSALLOWINVALIDCERTIFICATES : aliased constant String := "tlsallowinvalidcertificates" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:71
   MONGOC_URI_TLSALLOWINVALIDHOSTNAMES : aliased constant String := "tlsallowinvalidhostnames" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:72
   MONGOC_URI_TLSINSECURE : aliased constant String := "tlsinsecure" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:73
   MONGOC_URI_TLSDISABLECERTIFICATEREVOCATIONCHECK : aliased constant String := "tlsdisablecertificaterevocationcheck" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:74

   MONGOC_URI_TLSDISABLEOCSPENDPOINTCHECK : aliased constant String := "tlsdisableocspendpointcheck" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:76
   MONGOC_URI_W : aliased constant String := "w" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:77
   MONGOC_URI_WAITQUEUEMULTIPLE : aliased constant String := "waitqueuemultiple" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:78
   MONGOC_URI_WAITQUEUETIMEOUTMS : aliased constant String := "waitqueuetimeoutms" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:79
   MONGOC_URI_WTIMEOUTMS : aliased constant String := "wtimeoutms" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:80
   MONGOC_URI_ZLIBCOMPRESSIONLEVEL : aliased constant String := "zlibcompressionlevel" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:81

   MONGOC_URI_SSL : aliased constant String := "ssl" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:84
   MONGOC_URI_SSLCLIENTCERTIFICATEKEYFILE : aliased constant String := "sslclientcertificatekeyfile" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:85
   MONGOC_URI_SSLCLIENTCERTIFICATEKEYPASSWORD : aliased constant String := "sslclientcertificatekeypassword" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:86

   MONGOC_URI_SSLCERTIFICATEAUTHORITYFILE : aliased constant String := "sslcertificateauthorityfile" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:88
   MONGOC_URI_SSLALLOWINVALIDCERTIFICATES : aliased constant String := "sslallowinvalidcertificates" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:89
   MONGOC_URI_SSLALLOWINVALIDHOSTNAMES : aliased constant String := "sslallowinvalidhostnames" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:90

   type u_mongoc_uri_t is null record;   -- incomplete struct

   subtype mongoc_uri_t is u_mongoc_uri_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:95

   function mongoc_uri_copy (uri : access constant mongoc_uri_t) return access mongoc_uri_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_copy";

   procedure mongoc_uri_destroy (uri : access mongoc_uri_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_destroy";

   function mongoc_uri_new (uri_string : Interfaces.C.Strings.chars_ptr) return access mongoc_uri_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_new";

   function mongoc_uri_new_with_error (uri_string : Interfaces.C.Strings.chars_ptr; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access mongoc_uri_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_new_with_error";

   function mongoc_uri_new_for_host_port (hostname : Interfaces.C.Strings.chars_ptr; port : Interfaces.Unsigned_16) return access mongoc_uri_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_new_for_host_port";

   function mongoc_uri_get_hosts (uri : access constant mongoc_uri_t) return access constant libmongoc_1_0_mongoc_mongoc_host_list_h.u_mongoc_host_list_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_hosts";

   function mongoc_uri_get_service (uri : access constant mongoc_uri_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_service";

   function mongoc_uri_get_srv_hostname (uri : access constant mongoc_uri_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_srv_hostname";

   function mongoc_uri_get_srv_service_name (uri : access constant mongoc_uri_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_srv_service_name";

   function mongoc_uri_get_database (uri : access constant mongoc_uri_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_database";

   function mongoc_uri_set_database (uri : access mongoc_uri_t; database : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_set_database";

   function mongoc_uri_get_compressors (uri : access constant mongoc_uri_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_compressors";

   function mongoc_uri_get_options (uri : access constant mongoc_uri_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_options";

   function mongoc_uri_get_password (uri : access constant mongoc_uri_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_password";

   function mongoc_uri_set_password (uri : access mongoc_uri_t; password : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_set_password";

   function mongoc_uri_has_option (uri : access constant mongoc_uri_t; key : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_has_option";

   function mongoc_uri_option_is_int32 (key : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_option_is_int32";

   function mongoc_uri_option_is_int64 (key : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_option_is_int64";

   function mongoc_uri_option_is_bool (key : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_option_is_bool";

   function mongoc_uri_option_is_utf8 (key : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_option_is_utf8";

   function mongoc_uri_get_option_as_int32
     (uri : access constant mongoc_uri_t;
      option : Interfaces.C.Strings.chars_ptr;
      fallback : Interfaces.Integer_32) return Interfaces.Integer_32  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_option_as_int32";

   function mongoc_uri_get_option_as_int64
     (uri : access constant mongoc_uri_t;
      option : Interfaces.C.Strings.chars_ptr;
      fallback : Interfaces.Integer_64) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_option_as_int64";

   function mongoc_uri_get_option_as_bool
     (uri : access constant mongoc_uri_t;
      option : Interfaces.C.Strings.chars_ptr;
      fallback : Extensions.bool) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_option_as_bool";

   function mongoc_uri_get_option_as_utf8
     (uri : access constant mongoc_uri_t;
      option : Interfaces.C.Strings.chars_ptr;
      fallback : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_option_as_utf8";

   function mongoc_uri_set_option_as_int32
     (uri : access mongoc_uri_t;
      option : Interfaces.C.Strings.chars_ptr;
      value : Interfaces.Integer_32) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_set_option_as_int32";

   function mongoc_uri_set_option_as_int64
     (uri : access mongoc_uri_t;
      option : Interfaces.C.Strings.chars_ptr;
      value : Interfaces.Integer_64) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_set_option_as_int64";

   function mongoc_uri_set_option_as_bool
     (uri : access mongoc_uri_t;
      option : Interfaces.C.Strings.chars_ptr;
      value : Extensions.bool) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_set_option_as_bool";

   function mongoc_uri_set_option_as_utf8
     (uri : access mongoc_uri_t;
      option : Interfaces.C.Strings.chars_ptr;
      value : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_set_option_as_utf8";

   function mongoc_uri_get_read_prefs (uri : access constant mongoc_uri_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_read_prefs";

   function mongoc_uri_get_replica_set (uri : access constant mongoc_uri_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_replica_set";

   function mongoc_uri_get_string (uri : access constant mongoc_uri_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_string";

   function mongoc_uri_get_username (uri : access constant mongoc_uri_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_username";

   function mongoc_uri_set_username (uri : access mongoc_uri_t; username : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_set_username";

   function mongoc_uri_get_credentials (uri : access constant mongoc_uri_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_credentials";

   function mongoc_uri_get_auth_source (uri : access constant mongoc_uri_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_auth_source";

   function mongoc_uri_set_auth_source (uri : access mongoc_uri_t; value : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_set_auth_source";

   function mongoc_uri_get_appname (uri : access constant mongoc_uri_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_appname";

   function mongoc_uri_set_appname (uri : access mongoc_uri_t; value : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:193
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_set_appname";

   function mongoc_uri_set_compressors (uri : access mongoc_uri_t; value : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_set_compressors";

   function mongoc_uri_get_auth_mechanism (uri : access constant mongoc_uri_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_auth_mechanism";

   function mongoc_uri_set_auth_mechanism (uri : access mongoc_uri_t; value : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_set_auth_mechanism";

   function mongoc_uri_get_mechanism_properties (uri : access constant mongoc_uri_t; properties : access libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_mechanism_properties";

   function mongoc_uri_set_mechanism_properties (uri : access mongoc_uri_t; properties : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:204
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_set_mechanism_properties";

   function mongoc_uri_get_ssl (uri : access constant mongoc_uri_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_ssl";

   function mongoc_uri_get_tls (uri : access constant mongoc_uri_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_tls";

   function mongoc_uri_unescape (escaped_string : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_unescape";

   function mongoc_uri_get_read_prefs_t (uri : access constant mongoc_uri_t) return access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_read_prefs_t";

   procedure mongoc_uri_set_read_prefs_t (uri : access mongoc_uri_t; prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_set_read_prefs_t";

   function mongoc_uri_get_write_concern (uri : access constant mongoc_uri_t) return access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_write_concern";

   procedure mongoc_uri_set_write_concern (uri : access mongoc_uri_t; wc : access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_set_write_concern";

   function mongoc_uri_get_read_concern (uri : access constant mongoc_uri_t) return access constant libmongoc_1_0_mongoc_mongoc_read_concern_h.u_mongoc_read_concern_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_get_read_concern";

   procedure mongoc_uri_set_read_concern (uri : access mongoc_uri_t; rc : access constant libmongoc_1_0_mongoc_mongoc_read_concern_h.u_mongoc_read_concern_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-uri.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_uri_set_read_concern";

end libmongoc_1_0_mongoc_mongoc_uri_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
