pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libmongoc_1_0_mongoc_mongoc_read_prefs_h;
with Interfaces.C.Extensions;
with Interfaces.C.Strings;
--  with stddef_h;
with System;

package libmongoc_1_0_mongoc_mongoc_topology_description_h is

   type u_mongoc_topology_description_t is null record;   -- incomplete struct

   subtype mongoc_topology_description_t is u_mongoc_topology_description_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-topology-description.h:30

   procedure mongoc_topology_description_destroy (description : access mongoc_topology_description_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-topology-description.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_topology_description_destroy";

   function mongoc_topology_description_new_copy (description : access constant mongoc_topology_description_t) return access mongoc_topology_description_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-topology-description.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_topology_description_new_copy";

   function mongoc_topology_description_has_readable_server (td : access constant mongoc_topology_description_t; prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-topology-description.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_topology_description_has_readable_server";

   function mongoc_topology_description_has_writable_server (td : access constant mongoc_topology_description_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-topology-description.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_topology_description_has_writable_server";

   function mongoc_topology_description_type (td : access constant mongoc_topology_description_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-topology-description.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_topology_description_type";

   function mongoc_topology_description_get_servers (td : access constant mongoc_topology_description_t; n : access size_t) return System.Address  -- /usr/include/libmongoc-1.0/mongoc/mongoc-topology-description.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_topology_description_get_servers";

end libmongoc_1_0_mongoc_mongoc_topology_description_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
