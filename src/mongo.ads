private with Ada.Finalization;
package Mongo is

   INSERT_NO_VALIDATE : constant := (2 ** 31);

   UPDATE_NO_VALIDATE : constant := (2 ** 31);

   type Delete_Flags_T is  (NONE, SINGLE_REMOVE);

   type Remove_Flags_T is  (NONE, SINGLE_REMOVE);

   type Insert_Flags_T is (NONE, CONTINUE_ON_ERROR);

   type Query_Flags_T is private;
   QUERY_NONE : constant Query_Flags_T;
   QUERY_TAILABLE_CURSOR : constant Query_Flags_T;
   QUERY_SLAVE_OK : constant Query_Flags_T;
   QUERY_SECONDARY_OK : constant Query_Flags_T;
   QUERY_OPLOG_REPLAY : constant Query_Flags_T;
   QUERY_NO_CURSOR_TIMEOUT : constant Query_Flags_T;
   QUERY_AWAIT_DATA : constant Query_Flags_T;
   QUERY_EXHAUST : constant Query_Flags_T;
   QUERY_PARTIAL : constant Query_Flags_T;

   type Reply_Flags_T is private;
   REPLY_NONE               : constant Reply_Flags_T;
   REPLY_CURSOR_NOT_FOUND   : constant Reply_Flags_T;
   REPLY_QUERY_FAILURE      : constant Reply_Flags_T;
   REPLY_SHARD_CONFIG_STALE : constant Reply_Flags_T;
   REPLY_AWAIT_CAPABLE      : constant Reply_Flags_T;

   type Mongoc_Update_Flags_T is  (NONE, UPSERT, MULTI_UPDATE);

private
   type Initialization_Controler is new Ada.Finalization.Limited_Controlled with null record with Unreferenced_Objects;
   overriding procedure Initialize (Object : in out Initialization_Controler);

   overriding procedure Finalize   (Object : in out Initialization_Controler);

   type Query_Flags_T is mod 2 ** 8;
   QUERY_NONE : constant Query_Flags_T := 0;
   QUERY_TAILABLE_CURSOR : constant Query_Flags_T := 2;
   QUERY_SLAVE_OK : constant Query_Flags_T := 4;
   QUERY_SECONDARY_OK : constant Query_Flags_T := 4;
   QUERY_OPLOG_REPLAY : constant Query_Flags_T := 8;
   QUERY_NO_CURSOR_TIMEOUT : constant Query_Flags_T := 16;
   QUERY_AWAIT_DATA : constant Query_Flags_T := 32;
   QUERY_EXHAUST : constant Query_Flags_T := 64;
   QUERY_PARTIAL : constant Query_Flags_T := 128;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-flags.h:105

   type Reply_Flags_T is mod 2**8;
   REPLY_NONE : constant Reply_Flags_T := 0;
   REPLY_CURSOR_NOT_FOUND : constant Reply_Flags_T := 1;
   REPLY_QUERY_FAILURE : constant Reply_Flags_T := 2;
   REPLY_SHARD_CONFIG_STALE : constant Reply_Flags_T := 4;
   REPLY_AWAIT_CAPABLE : constant Reply_Flags_T := 8;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-flags.h:126

end Mongo;
