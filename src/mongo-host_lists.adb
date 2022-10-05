pragma Warnings (Off);
package body Mongo.Host_Lists is

   -----------
   -- First --
   -----------

   function First (Cont : Host_List_T) return Cursor is
   begin
      pragma Compile_Time_Warning (Standard.True, "First unimplemented");
      return raise Program_Error with "Unimplemented function First";
   end First;

   ----------
   -- Next --
   ----------

   function Next (Cont : Host_List_T; Position : Cursor) return Cursor is
   begin
      pragma Compile_Time_Warning (Standard.True, "Next unimplemented");
      return raise Program_Error with "Unimplemented function Next";
   end Next;

   -----------------
   -- Has_Element --
   -----------------

   function Has_Element (Cont : Host_List_T; Position : Cursor) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Has_Element unimplemented");
      return raise Program_Error with "Unimplemented function Has_Element";
   end Has_Element;

   -------------
   -- Element --
   -------------

   function Element (Cont : Host_List_T; Position : Cursor) return Element_Type
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Element unimplemented");
      return raise Program_Error with "Unimplemented function Element";
   end Element;

end Mongo.Host_Lists;
