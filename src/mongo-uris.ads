with GNAT.Sockets;
with Mongo.Host_Lists;
with Bson.Types;
with Bson.Errors;
private with libmongoc_1_0_mongoc_mongoc_uri_h;
with Ada.Strings.Unbounded;
package Mongo.URIs is

   MONGOC_DEFAULT_PORT : constant := 27017;

   APPNAME                              : constant String := "appname";
   AUTHMECHANISM                        : constant String := "authmechanism";
   AUTHMECHANISMPROPERTIES              : constant String := "authmechanismproperties";
   AUTHSOURCE                           : constant String := "authsource";
   CANONICALIZEHOSTNAME                 : constant String := "canonicalizehostname";
   CONNECTTIMEOUTMS                     : constant String := "connecttimeoutms";
   COMPRESSORS                          : constant String := "compressors";
   DIRECTCONNECTION                     : constant String := "directconnection";
   GSSAPISERVICENAME                    : constant String := "gssapiservicename";
   HEARTBEATFREQUENCYMS                 : constant String := "heartbeatfrequencyms";
   JOURNAL                              : constant String := "journal";
   LOADBALANCED                         : constant String := "loadbalanced";
   LOCALTHRESHOLDMS                     : constant String := "localthresholdms";
   MAXIDLETIMEMS                        : constant String := "maxidletimems";
   MAXPOOLSIZE                          : constant String := "maxpoolsize";
   MAXSTALENESSSECONDS                  : constant String := "maxstalenessseconds";
   MINPOOLSIZE                          : constant String := "minpoolsize";
   READCONCERNLEVEL                     : constant String := "readconcernlevel";
   READPREFERENCE                       : constant String := "readpreference";
   READPREFERENCETAGS                   : constant String := "readpreferencetags";
   REPLICASET                           : constant String := "replicaset";
   RETRYREADS                           : constant String := "retryreads";
   RETRYWRITES                          : constant String := "retrywrites";
   SAFE                                 : constant String := "safe";
   SERVERSELECTIONTIMEOUTMS             : constant String := "serverselectiontimeoutms";
   SERVERSELECTIONTRYONCE               : constant String := "serverselectiontryonce";
   SLAVEOK                              : constant String := "slaveok";
   SOCKETCHECKINTERVALMS                : constant String := "socketcheckintervalms";
   SOCKETTIMEOUTMS                      : constant String := "sockettimeoutms";
   SRVSERVICENAME                       : constant String := "srvservicename";
   SRVMAXHOSTS                          : constant String := "srvmaxhosts";
   TLS                                  : constant String := "tls";
   TLSCERTIFICATEKEYFILE                : constant String := "tlscertificatekeyfile";
   TLSCERTIFICATEKEYFILEPASSWORD        : constant String := "tlscertificatekeyfilepassword";
   TLSCAFILE                            : constant String := "tlscafile";
   TLSALLOWINVALIDCERTIFICATES          : constant String := "tlsallowinvalidcertificates";
   TLSALLOWINVALIDHOSTNAMES             : constant String := "tlsallowinvalidhostnames";
   TLSINSECURE                          : constant String := "tlsinsecure";
   TLSDISABLECERTIFICATEREVOCATIONCHECK : constant String := "tlsdisablecertificaterevocationcheck";
   TLSDISABLEOCSPENDPOINTCHECK          : constant String := "tlsdisableocspendpointcheck";
   W                                    : constant String := "w";
   WAITQUEUEMULTIPLE                    : constant String := "waitqueuemultiple";
   WAITQUEUETIMEOUTMS                   : constant String := "waitqueuetimeoutms";
   WTIMEOUTMS                           : constant String := "wtimeoutms";
   ZLIBCOMPRESSIONLEVEL                 : constant String := "zlibcompressionlevel";
   SSL                                  : constant String := "ssl";
   SSLCLIENTCERTIFICATEKEYFILE          : constant String := "sslclientcertificatekeyfile";
   SSLCLIENTCERTIFICATEKEYPASSWORD      : constant String := "sslclientcertificatekeypassword";
   SSLCERTIFICATEAUTHORITYFILE          : constant String := "sslcertificateauthorityfile";
   SSLALLOWINVALIDCERTIFICATES          : constant String := "sslallowinvalidcertificates";
   SSLALLOWINVALIDHOSTNAMES             : constant String := "sslallowinvalidhostnames";

   type Uri_T is tagged private;

   procedure New_Uri (Uri : in out Uri_T; Name : String);
   procedure New_Uri (Uri : in out Uri_T; Name : Ada.Strings.Unbounded.Unbounded_String);

   procedure New_Uri (Uri : in out Uri_T; Name : String; Error : in out Bson.Errors.Error_T);
   procedure New_Uri (Uri : in out Uri_T; Name : Ada.Strings.Unbounded.Unbounded_String; Error : in out Bson.Errors.Error_T);

   procedure New_Uri (Uri : in out Uri_T; Hostname : String; Port : GNAT.Sockets.Port_Type);
   procedure New_Uri (Uri : in out Uri_T; Hostname : Ada.Strings.Unbounded.Unbounded_String; Port : GNAT.Sockets.Port_Type);

   function Get_Hosts (URI : Uri_T) return Mongo.Host_Lists.Host_List_T;
   function Get_Srv_Hostname (URI : Uri_T) return String;
   function Get_Srv_Service_Name (URI : Uri_T) return String;
   function Get_Database (URI : Uri_T) return String;

   function Get_Option (URI : Uri_T; Option : String; Fallback : Boolean) return Boolean;
   function Get_Option (URI : Uri_T; Option : String; Fallback : Long_Integer) return Long_Integer;
   function Get_Option (URI : Uri_T; Option : String; Fallback : Long_Long_Integer) return Long_Long_Integer;
   function Get_Option (URI : Uri_T; Option : String; Fallback : String) return String;

   function Set_Option (URI : Uri_T; Option : String; Value : Boolean) return Boolean;
   function Set_Option (URI : Uri_T; Option : String; Value : Long_Integer) return Long_Integer;
   function Set_Option (URI : Uri_T; Option : String; Value : Long_Long_Integer) return Long_Long_Integer;
   function Set_Option (URI : Uri_T; Option : String; Value : String) return String;

   function Get_Read_Prefs (Uri : Uri_T) return Bson.Types.Bson_T;

   function Get_Replica_Set (Uri : Uri_T) return String;

   function Get_String (Uri : Uri_T) return String;

   function Get_Username (Uri : Uri_T) return String;

   function Set_Username (Uri : in out Uri_T; Username : String) return Boolean;

   function Get_Credentials (Uri : Uri_T) return Bson.Types.Bson_T;

   function Get_Auth_Source (Uri : Uri_T) return String;

   function Set_Auth_Source (Uri : in out Uri_T; Value : String) return Boolean;

   function Get_Appname (Uri : Uri_T) return String;

   function Set_Appname (Uri : in out Uri_T; Value : String) return Boolean;

   function Set_Compressors (Uri : in out Uri_T; Value : String) return Boolean;

   function Get_Auth_Mechanism (Uri : Uri_T) return String;

   function Set_Auth_Mechanism (Uri : in out Uri_T; Value : String) return Boolean;

   function Get_Mechanism_Properties (Uri : Uri_T; Properties : Bson.Types.Bson_T) return Boolean;

   function Set_Mechanism_Properties (Uri : in out Uri_T; Properties : Bson.Types.Bson_T) return Boolean;

   function Get_Ssl (Uri : Uri_T) return Boolean;

   function Get_Tls (Uri : Uri_T) return Boolean;

   function Unescape (Escaped_String : String) return String;

   --  function get_read_prefs_t (uri : Uri_T) return Mongo.Read_Prefs.Prefs_T;
   --  procedure set_read_prefs_t (uri : In out uri_t; prefs : Mongo.Read_Prefs.Prefs_T) ;
   --  function get_write_concern (uri : Uri_T) return access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t;
   --  procedure set_write_concern (uri : In out uri_t; wc : Mongo.Write_Concerns.Write_Concern_T);
   --  function get_read_concern (uri : Uri_T) return access constant libmongoc_1_0_mongoc_mongoc_read_concern_h.u_mongoc_read_concern_t;
   --  procedure set_read_concern (uri : In out uri_t; rc : access constant libmongoc_1_0_mongoc_mongoc_read_concern_h.u_mongoc_read_concern_t);

private
   type Mongoc_Uri_T_Access is access all libmongoc_1_0_mongoc_mongoc_uri_h.mongoc_uri_t with Storage_Size => 0;
   type Uri_T is new Ada.Finalization.Controlled with record
      Impl : Mongoc_Uri_T_Access;
   end record;
   overriding procedure Adjust     (Object : in out Uri_T);
   overriding procedure Finalize   (Object : in out Uri_T);

end Mongo.URIs;
