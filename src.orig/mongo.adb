pragma Ada_2012;
with Libmongoc_1_0_Mongoc_Mongoc_Init_H;
package body Mongo is

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Object : in out Initialization_Controler) is
   begin
      Libmongoc_1_0_Mongoc_Mongoc_Init_H.Mongoc_Init;
   end Initialize;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Object : in out Initialization_Controler) is
   begin
      Libmongoc_1_0_Mongoc_Mongoc_Init_H.mongoc_cleanup;
   end Finalize;
   Object :  Initialization_Controler;
end Mongo;
