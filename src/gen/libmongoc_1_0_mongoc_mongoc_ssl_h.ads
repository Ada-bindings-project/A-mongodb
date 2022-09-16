pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;

package libmongoc_1_0_mongoc_mongoc_ssl_h is

   type u_mongoc_ssl_opt_t;
   subtype mongoc_ssl_opt_t is u_mongoc_ssl_opt_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-ssl.h:29

   type anon_array3983 is array (0 .. 5) of System.Address;
   type u_mongoc_ssl_opt_t is record
      pem_file : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-ssl.h:33
      pem_pwd : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-ssl.h:34
      ca_file : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-ssl.h:35
      ca_dir : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-ssl.h:36
      crl_file : Interfaces.C.Strings.chars_ptr;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-ssl.h:37
      weak_cert_validation : aliased Extensions.bool;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-ssl.h:38
      allow_invalid_hostname : aliased Extensions.bool;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-ssl.h:39
      internal : System.Address;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-ssl.h:40
      padding : anon_array3983;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-ssl.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-ssl.h:32

   function mongoc_ssl_opt_get_default return access constant mongoc_ssl_opt_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-ssl.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_ssl_opt_get_default";

end libmongoc_1_0_mongoc_mongoc_ssl_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
