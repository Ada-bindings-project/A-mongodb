pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
with Interfaces.C.Strings;
limited with libbson_1_0_bson_bson_types_h;

package libmongoc_1_0_mongoc_mongoc_write_concern_h is

   MONGOC_WRITE_CONCERN_W_UNACKNOWLEDGED : constant := 0;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:29
   MONGOC_WRITE_CONCERN_W_ERRORS_IGNORED : constant := -1;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:30
   MONGOC_WRITE_CONCERN_W_DEFAULT : constant := -2;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:31
   MONGOC_WRITE_CONCERN_W_MAJORITY : constant := -3;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:32
   MONGOC_WRITE_CONCERN_W_TAG : constant := -4;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:33

   type u_mongoc_write_concern_t is null record;   -- incomplete struct

   subtype mongoc_write_concern_t is u_mongoc_write_concern_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:36

   function mongoc_write_concern_new return access mongoc_write_concern_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_new";

   function mongoc_write_concern_copy (write_concern : access constant mongoc_write_concern_t) return access mongoc_write_concern_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_copy";

   procedure mongoc_write_concern_destroy (write_concern : access mongoc_write_concern_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_destroy";

   function mongoc_write_concern_get_fsync (write_concern : access constant mongoc_write_concern_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_get_fsync";

   procedure mongoc_write_concern_set_fsync (write_concern : access mongoc_write_concern_t; fsync_u : Extensions.bool)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_set_fsync";

   function mongoc_write_concern_get_journal (write_concern : access constant mongoc_write_concern_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_get_journal";

   function mongoc_write_concern_journal_is_set (write_concern : access constant mongoc_write_concern_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_journal_is_set";

   procedure mongoc_write_concern_set_journal (write_concern : access mongoc_write_concern_t; journal : Extensions.bool)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_set_journal";

   function mongoc_write_concern_get_w (write_concern : access constant mongoc_write_concern_t) return Interfaces.Integer_32  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_get_w";

   procedure mongoc_write_concern_set_w (write_concern : access mongoc_write_concern_t; w : Interfaces.Integer_32)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_set_w";

   function mongoc_write_concern_get_wtag (write_concern : access constant mongoc_write_concern_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_get_wtag";

   procedure mongoc_write_concern_set_wtag (write_concern : access mongoc_write_concern_t; tag : Interfaces.C.Strings.chars_ptr)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_set_wtag";

   function mongoc_write_concern_get_wtimeout (write_concern : access constant mongoc_write_concern_t) return Interfaces.Integer_32  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_get_wtimeout";

   function mongoc_write_concern_get_wtimeout_int64 (write_concern : access constant mongoc_write_concern_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_get_wtimeout_int64";

   procedure mongoc_write_concern_set_wtimeout (write_concern : access mongoc_write_concern_t; wtimeout_msec : Interfaces.Integer_32)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_set_wtimeout";

   procedure mongoc_write_concern_set_wtimeout_int64 (write_concern : access mongoc_write_concern_t; wtimeout_msec : Interfaces.Integer_64)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_set_wtimeout_int64";

   function mongoc_write_concern_get_wmajority (write_concern : access constant mongoc_write_concern_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_get_wmajority";

   procedure mongoc_write_concern_set_wmajority (write_concern : access mongoc_write_concern_t; wtimeout_msec : Interfaces.Integer_32)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_set_wmajority";

   function mongoc_write_concern_is_acknowledged (write_concern : access constant mongoc_write_concern_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_is_acknowledged";

   function mongoc_write_concern_is_valid (write_concern : access constant mongoc_write_concern_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_is_valid";

   function mongoc_write_concern_append (write_concern : access mongoc_write_concern_t; doc : access libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_append";

   function mongoc_write_concern_is_default (write_concern : access constant mongoc_write_concern_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-write-concern.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_write_concern_is_default";

end libmongoc_1_0_mongoc_mongoc_write_concern_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
