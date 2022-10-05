with libmongoc_1_0_mongoc_mongoc_host_list_h;
package Mongo.Host_Lists is
   type Cursor is private;
   type Element_Type is null record;
   type Host_List_T is tagged private with Iterable => (First       => First,
                                                        Next        => Next,
                                                        Has_Element => Has_Element,
                                                        Element     => Element);

   function First (Cont : Host_List_T) return Cursor;
   function Next (Cont : Host_List_T; Position : Cursor) return Cursor;
   function Has_Element (Cont : Host_List_T; Position : Cursor) return Boolean;
   function Element (Cont : Host_List_T; Position : Cursor) return Element_Type;
private
   type Mongoc_Host_List_T_Access is access all  libmongoc_1_0_mongoc_mongoc_host_list_h.mongoc_host_list_t with Storage_Size => 0;
   type Cursor is null record;
   type Host_List_T is tagged record
      Impl : Mongoc_Host_List_T_Access;
   end record;

end Mongo.Host_Lists;
