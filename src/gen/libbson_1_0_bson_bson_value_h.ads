pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libbson_1_0_bson_bson_types_h;

package libbson_1_0_bson_bson_value_h is

   procedure bson_value_copy (src : access constant libbson_1_0_bson_bson_types_h.u_bson_value_t; dst : access libbson_1_0_bson_bson_types_h.u_bson_value_t)  -- /usr/include/libbson-1.0/bson/bson-value.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "bson_value_copy";

   procedure bson_value_destroy (value : access libbson_1_0_bson_bson_types_h.u_bson_value_t)  -- /usr/include/libbson-1.0/bson/bson-value.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "bson_value_destroy";

end libbson_1_0_bson_bson_value_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
