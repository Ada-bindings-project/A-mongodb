pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;

package libmongoc_1_0_mongoc_mongoc_opcode_h is

   subtype mongoc_opcode_t is unsigned;
   mongoc_opcode_t_MONGOC_OPCODE_REPLY : constant mongoc_opcode_t := 1;
   mongoc_opcode_t_MONGOC_OPCODE_UPDATE : constant mongoc_opcode_t := 2001;
   mongoc_opcode_t_MONGOC_OPCODE_INSERT : constant mongoc_opcode_t := 2002;
   mongoc_opcode_t_MONGOC_OPCODE_QUERY : constant mongoc_opcode_t := 2004;
   mongoc_opcode_t_MONGOC_OPCODE_GET_MORE : constant mongoc_opcode_t := 2005;
   mongoc_opcode_t_MONGOC_OPCODE_DELETE : constant mongoc_opcode_t := 2006;
   mongoc_opcode_t_MONGOC_OPCODE_KILL_CURSORS : constant mongoc_opcode_t := 2007;
   mongoc_opcode_t_MONGOC_OPCODE_COMPRESSED : constant mongoc_opcode_t := 2012;
   mongoc_opcode_t_MONGOC_OPCODE_MSG : constant mongoc_opcode_t := 2013;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-opcode.h:38

end libmongoc_1_0_mongoc_mongoc_opcode_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
