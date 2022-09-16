pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libbson_1_0_bson_bson_types_h;
with Interfaces.C.Extensions;

package libmongoc_1_0_mongoc_mongoc_matcher_h is

   type u_mongoc_matcher_t is null record;   -- incomplete struct

   subtype mongoc_matcher_t is u_mongoc_matcher_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-matcher.h:29

   function mongoc_matcher_new (query : access constant libbson_1_0_bson_bson_types_h.u_bson_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return access mongoc_matcher_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-matcher.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_matcher_new";

   function mongoc_matcher_match (matcher : access constant mongoc_matcher_t; document : access constant libbson_1_0_bson_bson_types_h.u_bson_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-matcher.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_matcher_match";

   procedure mongoc_matcher_destroy (matcher : access mongoc_matcher_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-matcher.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_matcher_destroy";

end libmongoc_1_0_mongoc_mongoc_matcher_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
