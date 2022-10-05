package Bson.Types is
   pragma Elaborate_Body;
   type Bson_T is tagged private;
   Null_Bson_T : constant Bson_T;
private
   type Bson_T is tagged record
      Impl : access Integer;
   end record;
   Null_Bson_T : constant Bson_T := (others => <>);

end Bson.Types;
