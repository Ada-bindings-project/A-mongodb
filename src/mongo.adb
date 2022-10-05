pragma Warnings (Off);
with libmongoc_1_0_mongoc_mongoc_init_h;
package body Mongo is

   ----------------
   -- Initialize --
   ----------------

   overriding procedure Initialize (Object : in out Initialization_Controler) is
   begin
      libmongoc_1_0_mongoc_mongoc_init_h.mongoc_init;
   end Initialize;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Object : in out Initialization_Controler) is
   begin
      libmongoc_1_0_mongoc_mongoc_init_h.mongoc_cleanup;
   end Finalize;
   Object :  Initialization_Controler;
end Mongo;
