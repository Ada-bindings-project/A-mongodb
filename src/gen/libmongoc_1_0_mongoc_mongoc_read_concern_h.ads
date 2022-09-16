pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;
limited with libbson_1_0_bson_bson_types_h;

package libmongoc_1_0_mongoc_mongoc_read_concern_h is

   MONGOC_READ_CONCERN_LEVEL_AVAILABLE : aliased constant String := "available" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-read-concern.h:29
   MONGOC_READ_CONCERN_LEVEL_LOCAL : aliased constant String := "local" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-read-concern.h:30
   MONGOC_READ_CONCERN_LEVEL_MAJORITY : aliased constant String := "majority" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-read-concern.h:31
   MONGOC_READ_CONCERN_LEVEL_LINEARIZABLE : aliased constant String := "linearizable" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-read-concern.h:32
   MONGOC_READ_CONCERN_LEVEL_SNAPSHOT : aliased constant String := "snapshot" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-read-concern.h:33

   type u_mongoc_read_concern_t is null record;   -- incomplete struct

   subtype mongoc_read_concern_t is u_mongoc_read_concern_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-concern.h:35

   function mongoc_read_concern_new return access mongoc_read_concern_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-concern.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_concern_new";

   function mongoc_read_concern_copy (read_concern : access constant mongoc_read_concern_t) return access mongoc_read_concern_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-concern.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_concern_copy";

   procedure mongoc_read_concern_destroy (read_concern : access mongoc_read_concern_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-concern.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_concern_destroy";

   function mongoc_read_concern_get_level (read_concern : access constant mongoc_read_concern_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-concern.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_concern_get_level";

   function mongoc_read_concern_set_level (read_concern : access mongoc_read_concern_t; level : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-concern.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_concern_set_level";

   function mongoc_read_concern_append (read_concern : access mongoc_read_concern_t; doc : access libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-concern.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_concern_append";

   function mongoc_read_concern_is_default (read_concern : access constant mongoc_read_concern_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-read-concern.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_read_concern_is_default";

end libmongoc_1_0_mongoc_mongoc_read_concern_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
