pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libbson_1_0_bson_bson_types_h;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;
with Interfaces.C.Strings;
--  with stddef_h;

package libbson_1_0_bson_bson_error_h is

   BSON_ERROR_JSON : constant := 1;  --  /usr/include/libbson-1.0/bson/bson-error.h:32
   BSON_ERROR_READER : constant := 2;  --  /usr/include/libbson-1.0/bson/bson-error.h:33
   BSON_ERROR_INVALID : constant := 3;  --  /usr/include/libbson-1.0/bson/bson-error.h:34

   procedure bson_set_error
     (error : access libbson_1_0_bson_bson_types_h.u_bson_error_t;
      domain : Interfaces.Unsigned_32;
      code : Interfaces.Unsigned_32;
      format : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /usr/include/libbson-1.0/bson/bson-error.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "bson_set_error";

   function bson_strerror_r
     (err_code : int;
      buf : Interfaces.C.Strings.chars_ptr;
      buflen : size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libbson-1.0/bson/bson-error.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "bson_strerror_r";

end libbson_1_0_bson_bson_error_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
