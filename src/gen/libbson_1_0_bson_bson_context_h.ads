pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with libbson_1_0_bson_bson_types_h;

package libbson_1_0_bson_bson_context_h is

   function bson_context_new (flags : libbson_1_0_bson_bson_types_h.bson_context_flags_t) return access libbson_1_0_bson_bson_types_h.u_bson_context_t  -- /usr/include/libbson-1.0/bson/bson-context.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "bson_context_new";

   procedure bson_context_destroy (context : access libbson_1_0_bson_bson_types_h.u_bson_context_t)  -- /usr/include/libbson-1.0/bson/bson-context.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "bson_context_destroy";

   function bson_context_get_default return access libbson_1_0_bson_bson_types_h.u_bson_context_t  -- /usr/include/libbson-1.0/bson/bson-context.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "bson_context_get_default";

end libbson_1_0_bson_bson_context_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
