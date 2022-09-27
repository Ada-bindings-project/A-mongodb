private with Ada.Finalization;
package Mongo is

private
   type Initialization_Controler is new Ada.Finalization.Limited_Controlled with null record with Unreferenced_Objects;
   procedure Initialize (Object : in out Initialization_Controler);
   procedure Finalize   (Object : in out Initialization_Controler);

end Mongo;
