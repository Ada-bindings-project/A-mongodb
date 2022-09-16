pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package libmongoc_1_0_mongoc_mongoc_config_h is

   MONGOC_USER_SET_CFLAGS : aliased constant String := "-g -O2  -flto=auto -ffat-lto-objects -flto=auto -ffat-lto-objects -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -Wall -Wdeclaration-after-statement -Wempty-body -Wformat -Wformat-nonliteral -Wformat-security -Winit-self -Winline -Wmissing-include-dirs -Wno-strict-aliasing -Wno-uninitialized -Wredundant-decls -Wshadow -Wswitch-default -Wswitch-enum -Wundef -Wuninitialized -Wexpansion-to-defined -pedantic" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:39

   MONGOC_USER_SET_LDFLAGS : aliased constant String := "-Wl,-Bsymbolic-functions -flto=auto -ffat-lto-objects -flto=auto -Wl,-z,relro -Wl,-z,now -lpthread" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:41

   MONGOC_CC : aliased constant String := "/usr/bin/cc" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:44

   MONGOC_ENABLE_SSL_OPENSSL : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:105

   MONGOC_ENABLE_CRYPTO_LIBCRYPTO : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:116

   MONGOC_ENABLE_SSL : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:127

   MONGOC_ENABLE_CRYPTO : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:138

   MONGOC_HAVE_ASN1_STRING_GET0_DATA : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:158

   MONGOC_ENABLE_SASL : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:169

   MONGOC_ENABLE_SASL_CYRUS : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:180

   MONGOC_HAVE_SOCKLEN : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:223

   MONGOC_HAVE_RES_NSEARCH : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:245

   MONGOC_HAVE_RES_NCLOSE : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:267
   --  unsupported macro: MONGOC_SOCKET_ARG2 struct sockaddr
   --  unsupported macro: MONGOC_SOCKET_ARG3 socklen_t

   MONGOC_ENABLE_COMPRESSION : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:297

   MONGOC_ENABLE_COMPRESSION_SNAPPY : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:307

   MONGOC_ENABLE_COMPRESSION_ZLIB : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:318

   MONGOC_ENABLE_COMPRESSION_ZSTD : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:328

   MONGOC_ENABLE_SHM_COUNTERS : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:338

   MONGOC_TRACE : constant := 0;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:369

   MONGOC_ENABLE_ICU : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:384

   MONGOC_ENABLE_CLIENT_SIDE_ENCRYPTION : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:395

   MONGOC_HAVE_SS_FAMILY : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:406

   MONGOC_ENABLE_MONGODB_AWS_AUTH : constant := 1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-config.h:415

end libmongoc_1_0_mongoc_mongoc_config_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
