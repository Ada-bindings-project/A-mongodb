pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
limited with libbson_1_0_bson_bson_types_h;
with Interfaces.C.Extensions;
with System;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;

package libmongoc_1_0_mongoc_mongoc_client_side_encryption_h is

   MONGOC_AEAD_AES_256_CBC_HMAC_SHA_512_RANDOM : aliased constant String := "AEAD_AES_256_CBC_HMAC_SHA_512-Random" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:28

   MONGOC_AEAD_AES_256_CBC_HMAC_SHA_512_DETERMINISTIC : aliased constant String := "AEAD_AES_256_CBC_HMAC_SHA_512-Deterministic" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:30

   type u_mongoc_client_t is null record;   -- incomplete struct

   type u_mongoc_client_pool_t is null record;   -- incomplete struct

   type u_mongoc_auto_encryption_opts_t is null record;   -- incomplete struct

   subtype mongoc_auto_encryption_opts_t is u_mongoc_auto_encryption_opts_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:35

   function mongoc_auto_encryption_opts_new return access mongoc_auto_encryption_opts_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_auto_encryption_opts_new";

   procedure mongoc_auto_encryption_opts_destroy (opts : access mongoc_auto_encryption_opts_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_auto_encryption_opts_destroy";

   procedure mongoc_auto_encryption_opts_set_keyvault_client (opts : access mongoc_auto_encryption_opts_t; client : access u_mongoc_client_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_auto_encryption_opts_set_keyvault_client";

   procedure mongoc_auto_encryption_opts_set_keyvault_client_pool (opts : access mongoc_auto_encryption_opts_t; pool : access u_mongoc_client_pool_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_auto_encryption_opts_set_keyvault_client_pool";

   procedure mongoc_auto_encryption_opts_set_keyvault_namespace
     (opts : access mongoc_auto_encryption_opts_t;
      db : Interfaces.C.Strings.chars_ptr;
      coll : Interfaces.C.Strings.chars_ptr)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_auto_encryption_opts_set_keyvault_namespace";

   procedure mongoc_auto_encryption_opts_set_kms_providers (opts : access mongoc_auto_encryption_opts_t; kms_providers : access constant libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_auto_encryption_opts_set_kms_providers";

   procedure mongoc_auto_encryption_opts_set_tls_opts (opts : access mongoc_auto_encryption_opts_t; tls_opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_auto_encryption_opts_set_tls_opts";

   procedure mongoc_auto_encryption_opts_set_schema_map (opts : access mongoc_auto_encryption_opts_t; schema_map : access constant libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_auto_encryption_opts_set_schema_map";

   procedure mongoc_auto_encryption_opts_set_bypass_auto_encryption (opts : access mongoc_auto_encryption_opts_t; bypass_auto_encryption : Extensions.bool)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_auto_encryption_opts_set_bypass_auto_encryption";

   procedure mongoc_auto_encryption_opts_set_extra (opts : access mongoc_auto_encryption_opts_t; extra : access constant libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_auto_encryption_opts_set_extra";

   type u_mongoc_client_encryption_opts_t is null record;   -- incomplete struct

   subtype mongoc_client_encryption_opts_t is u_mongoc_client_encryption_opts_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:75

   type u_mongoc_client_encryption_t is null record;   -- incomplete struct

   subtype mongoc_client_encryption_t is u_mongoc_client_encryption_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:76

   type u_mongoc_client_encryption_encrypt_opts_t is null record;   -- incomplete struct

   subtype mongoc_client_encryption_encrypt_opts_t is u_mongoc_client_encryption_encrypt_opts_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:78

   type u_mongoc_client_encryption_datakey_opts_t is null record;   -- incomplete struct

   subtype mongoc_client_encryption_datakey_opts_t is u_mongoc_client_encryption_datakey_opts_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:80

   function mongoc_client_encryption_opts_new return access mongoc_client_encryption_opts_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_opts_new";

   procedure mongoc_client_encryption_opts_destroy (opts : access mongoc_client_encryption_opts_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_opts_destroy";

   procedure mongoc_client_encryption_opts_set_keyvault_client (opts : access mongoc_client_encryption_opts_t; keyvault_client : access u_mongoc_client_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_opts_set_keyvault_client";

   procedure mongoc_client_encryption_opts_set_keyvault_namespace
     (opts : access mongoc_client_encryption_opts_t;
      db : Interfaces.C.Strings.chars_ptr;
      coll : Interfaces.C.Strings.chars_ptr)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_opts_set_keyvault_namespace";

   procedure mongoc_client_encryption_opts_set_kms_providers (opts : access mongoc_client_encryption_opts_t; kms_providers : access constant libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_opts_set_kms_providers";

   procedure mongoc_client_encryption_opts_set_tls_opts (opts : access mongoc_client_encryption_opts_t; tls_opts : access constant libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_opts_set_tls_opts";

   function mongoc_client_encryption_new (opts : access mongoc_client_encryption_opts_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access mongoc_client_encryption_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_new";

   procedure mongoc_client_encryption_destroy (client_encryption : access mongoc_client_encryption_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_destroy";

   function mongoc_client_encryption_create_datakey
     (client_encryption : access mongoc_client_encryption_t;
      kms_provider : Interfaces.C.Strings.chars_ptr;
      opts : access mongoc_client_encryption_datakey_opts_t;
      keyid : access libbson_1_0_bson_bson_types_h.u_bson_value_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_create_datakey";

   function mongoc_client_encryption_encrypt
     (client_encryption : access mongoc_client_encryption_t;
      value : access constant libbson_1_0_bson_bson_types_h.u_bson_value_t;
      opts : access mongoc_client_encryption_encrypt_opts_t;
      ciphertext : access libbson_1_0_bson_bson_types_h.u_bson_value_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_encrypt";

   function mongoc_client_encryption_decrypt
     (client_encryption : access mongoc_client_encryption_t;
      ciphertext : access constant libbson_1_0_bson_bson_types_h.u_bson_value_t;
      value : access libbson_1_0_bson_bson_types_h.u_bson_value_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_decrypt";

   function mongoc_client_encryption_encrypt_opts_new return access mongoc_client_encryption_encrypt_opts_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_encrypt_opts_new";

   procedure mongoc_client_encryption_encrypt_opts_destroy (opts : access mongoc_client_encryption_encrypt_opts_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_encrypt_opts_destroy";

   procedure mongoc_client_encryption_encrypt_opts_set_keyid (opts : access mongoc_client_encryption_encrypt_opts_t; keyid : access constant libbson_1_0_bson_bson_types_h.u_bson_value_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_encrypt_opts_set_keyid";

   procedure mongoc_client_encryption_encrypt_opts_set_keyaltname (opts : access mongoc_client_encryption_encrypt_opts_t; keyaltname : Interfaces.C.Strings.chars_ptr)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_encrypt_opts_set_keyaltname";

   procedure mongoc_client_encryption_encrypt_opts_set_algorithm (opts : access mongoc_client_encryption_encrypt_opts_t; algorithm : Interfaces.C.Strings.chars_ptr)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_encrypt_opts_set_algorithm";

   function mongoc_client_encryption_datakey_opts_new return access mongoc_client_encryption_datakey_opts_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_datakey_opts_new";

   procedure mongoc_client_encryption_datakey_opts_destroy (opts : access mongoc_client_encryption_datakey_opts_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_datakey_opts_destroy";

   procedure mongoc_client_encryption_datakey_opts_set_masterkey (opts : access mongoc_client_encryption_datakey_opts_t; masterkey : access constant libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_datakey_opts_set_masterkey";

   procedure mongoc_client_encryption_datakey_opts_set_keyaltnames
     (opts : access mongoc_client_encryption_datakey_opts_t;
      keyaltnames : System.Address;
      keyaltnames_count : Interfaces.Unsigned_32)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_encryption_datakey_opts_set_keyaltnames";

end libmongoc_1_0_mongoc_mongoc_client_side_encryption_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
