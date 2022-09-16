pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package libmongoc_1_0_mongoc_mongoc_flags_h is

   MONGOC_INSERT_NO_VALIDATE : constant := (2 ** 31);  --  /usr/include/libmongoc-1.0/mongoc/mongoc-flags.h:73

   MONGOC_UPDATE_NO_VALIDATE : constant := (2 ** 31);  --  /usr/include/libmongoc-1.0/mongoc/mongoc-flags.h:144

   type mongoc_delete_flags_t is 
     (MONGOC_DELETE_NONE,
      MONGOC_DELETE_SINGLE_REMOVE)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-flags.h:42

   type mongoc_remove_flags_t is 
     (MONGOC_REMOVE_NONE,
      MONGOC_REMOVE_SINGLE_REMOVE)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-flags.h:56

   type mongoc_insert_flags_t is 
     (MONGOC_INSERT_NONE,
      MONGOC_INSERT_CONTINUE_ON_ERROR)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-flags.h:70

   subtype mongoc_query_flags_t is unsigned;
   mongoc_query_flags_t_MONGOC_QUERY_NONE : constant mongoc_query_flags_t := 0;
   mongoc_query_flags_t_MONGOC_QUERY_TAILABLE_CURSOR : constant mongoc_query_flags_t := 2;
   mongoc_query_flags_t_MONGOC_QUERY_SLAVE_OK : constant mongoc_query_flags_t := 4;
   mongoc_query_flags_t_MONGOC_QUERY_SECONDARY_OK : constant mongoc_query_flags_t := 4;
   mongoc_query_flags_t_MONGOC_QUERY_OPLOG_REPLAY : constant mongoc_query_flags_t := 8;
   mongoc_query_flags_t_MONGOC_QUERY_NO_CURSOR_TIMEOUT : constant mongoc_query_flags_t := 16;
   mongoc_query_flags_t_MONGOC_QUERY_AWAIT_DATA : constant mongoc_query_flags_t := 32;
   mongoc_query_flags_t_MONGOC_QUERY_EXHAUST : constant mongoc_query_flags_t := 64;
   mongoc_query_flags_t_MONGOC_QUERY_PARTIAL : constant mongoc_query_flags_t := 128;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-flags.h:105

   subtype mongoc_reply_flags_t is unsigned;
   mongoc_reply_flags_t_MONGOC_REPLY_NONE : constant mongoc_reply_flags_t := 0;
   mongoc_reply_flags_t_MONGOC_REPLY_CURSOR_NOT_FOUND : constant mongoc_reply_flags_t := 1;
   mongoc_reply_flags_t_MONGOC_REPLY_QUERY_FAILURE : constant mongoc_reply_flags_t := 2;
   mongoc_reply_flags_t_MONGOC_REPLY_SHARD_CONFIG_STALE : constant mongoc_reply_flags_t := 4;
   mongoc_reply_flags_t_MONGOC_REPLY_AWAIT_CAPABLE : constant mongoc_reply_flags_t := 8;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-flags.h:126

   type mongoc_update_flags_t is 
     (MONGOC_UPDATE_NONE,
      MONGOC_UPDATE_UPSERT,
      MONGOC_UPDATE_MULTI_UPDATE)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-flags.h:141

end libmongoc_1_0_mongoc_mongoc_flags_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
