pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libbson_1_0_bson_bson_types_h;
with Interfaces.C.Strings;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
limited with libmongoc_1_0_mongoc_mongoc_host_list_h;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;
with System;
limited with libmongoc_1_0_mongoc_mongoc_server_description_h;
limited with libmongoc_1_0_mongoc_mongoc_topology_description_h;
with Interfaces.C.Extensions;

package libmongoc_1_0_mongoc_mongoc_apm_h is

   type u_mongoc_apm_callbacks_t is null record;   -- incomplete struct

   subtype mongoc_apm_callbacks_t is u_mongoc_apm_callbacks_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:47

   type u_mongoc_apm_command_started_t is null record;   -- incomplete struct

   subtype mongoc_apm_command_started_t is u_mongoc_apm_command_started_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:54

   type u_mongoc_apm_command_succeeded_t is null record;   -- incomplete struct

   subtype mongoc_apm_command_succeeded_t is u_mongoc_apm_command_succeeded_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:55

   type u_mongoc_apm_command_failed_t is null record;   -- incomplete struct

   subtype mongoc_apm_command_failed_t is u_mongoc_apm_command_failed_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:56

   type u_mongoc_apm_server_changed_t is null record;   -- incomplete struct

   subtype mongoc_apm_server_changed_t is u_mongoc_apm_server_changed_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:63

   type u_mongoc_apm_server_opening_t is null record;   -- incomplete struct

   subtype mongoc_apm_server_opening_t is u_mongoc_apm_server_opening_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:64

   type u_mongoc_apm_server_closed_t is null record;   -- incomplete struct

   subtype mongoc_apm_server_closed_t is u_mongoc_apm_server_closed_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:65

   type u_mongoc_apm_topology_changed_t is null record;   -- incomplete struct

   subtype mongoc_apm_topology_changed_t is u_mongoc_apm_topology_changed_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:66

   type u_mongoc_apm_topology_opening_t is null record;   -- incomplete struct

   subtype mongoc_apm_topology_opening_t is u_mongoc_apm_topology_opening_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:67

   type u_mongoc_apm_topology_closed_t is null record;   -- incomplete struct

   subtype mongoc_apm_topology_closed_t is u_mongoc_apm_topology_closed_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:68

   type u_mongoc_apm_server_heartbeat_started_t is null record;   -- incomplete struct

   subtype mongoc_apm_server_heartbeat_started_t is u_mongoc_apm_server_heartbeat_started_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:70

   type u_mongoc_apm_server_heartbeat_succeeded_t is null record;   -- incomplete struct

   subtype mongoc_apm_server_heartbeat_succeeded_t is u_mongoc_apm_server_heartbeat_succeeded_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:72

   type u_mongoc_apm_server_heartbeat_failed_t is null record;   -- incomplete struct

   subtype mongoc_apm_server_heartbeat_failed_t is u_mongoc_apm_server_heartbeat_failed_t;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:74

   function mongoc_apm_command_started_get_command (event : access constant mongoc_apm_command_started_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_started_get_command";

   function mongoc_apm_command_started_get_database_name (event : access constant mongoc_apm_command_started_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_started_get_database_name";

   function mongoc_apm_command_started_get_command_name (event : access constant mongoc_apm_command_started_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_started_get_command_name";

   function mongoc_apm_command_started_get_request_id (event : access constant mongoc_apm_command_started_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_started_get_request_id";

   function mongoc_apm_command_started_get_operation_id (event : access constant mongoc_apm_command_started_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_started_get_operation_id";

   function mongoc_apm_command_started_get_host (event : access constant mongoc_apm_command_started_t) return access constant libmongoc_1_0_mongoc_mongoc_host_list_h.u_mongoc_host_list_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_started_get_host";

   function mongoc_apm_command_started_get_server_id (event : access constant mongoc_apm_command_started_t) return Interfaces.Unsigned_32  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_started_get_server_id";

   function mongoc_apm_command_started_get_service_id (event : access constant mongoc_apm_command_started_t) return access constant libbson_1_0_bson_bson_types_h.bson_oid_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_started_get_service_id";

   function mongoc_apm_command_started_get_context (event : access constant mongoc_apm_command_started_t) return System.Address  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_started_get_context";

   function mongoc_apm_command_succeeded_get_duration (event : access constant mongoc_apm_command_succeeded_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_succeeded_get_duration";

   function mongoc_apm_command_succeeded_get_reply (event : access constant mongoc_apm_command_succeeded_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_succeeded_get_reply";

   function mongoc_apm_command_succeeded_get_command_name (event : access constant mongoc_apm_command_succeeded_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_succeeded_get_command_name";

   function mongoc_apm_command_succeeded_get_request_id (event : access constant mongoc_apm_command_succeeded_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_succeeded_get_request_id";

   function mongoc_apm_command_succeeded_get_operation_id (event : access constant mongoc_apm_command_succeeded_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_succeeded_get_operation_id";

   function mongoc_apm_command_succeeded_get_host (event : access constant mongoc_apm_command_succeeded_t) return access constant libmongoc_1_0_mongoc_mongoc_host_list_h.u_mongoc_host_list_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_succeeded_get_host";

   function mongoc_apm_command_succeeded_get_server_id (event : access constant mongoc_apm_command_succeeded_t) return Interfaces.Unsigned_32  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_succeeded_get_server_id";

   function mongoc_apm_command_succeeded_get_service_id (event : access constant mongoc_apm_command_succeeded_t) return access constant libbson_1_0_bson_bson_types_h.bson_oid_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_succeeded_get_service_id";

   function mongoc_apm_command_succeeded_get_context (event : access constant mongoc_apm_command_succeeded_t) return System.Address  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_succeeded_get_context";

   function mongoc_apm_command_failed_get_duration (event : access constant mongoc_apm_command_failed_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_failed_get_duration";

   function mongoc_apm_command_failed_get_command_name (event : access constant mongoc_apm_command_failed_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_failed_get_command_name";

   procedure mongoc_apm_command_failed_get_error (event : access constant mongoc_apm_command_failed_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_failed_get_error";

   function mongoc_apm_command_failed_get_reply (event : access constant mongoc_apm_command_failed_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_failed_get_reply";

   function mongoc_apm_command_failed_get_request_id (event : access constant mongoc_apm_command_failed_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_failed_get_request_id";

   function mongoc_apm_command_failed_get_operation_id (event : access constant mongoc_apm_command_failed_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_failed_get_operation_id";

   function mongoc_apm_command_failed_get_host (event : access constant mongoc_apm_command_failed_t) return access constant libmongoc_1_0_mongoc_mongoc_host_list_h.u_mongoc_host_list_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_failed_get_host";

   function mongoc_apm_command_failed_get_server_id (event : access constant mongoc_apm_command_failed_t) return Interfaces.Unsigned_32  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_failed_get_server_id";

   function mongoc_apm_command_failed_get_service_id (event : access constant mongoc_apm_command_failed_t) return access constant libbson_1_0_bson_bson_types_h.bson_oid_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_failed_get_service_id";

   function mongoc_apm_command_failed_get_context (event : access constant mongoc_apm_command_failed_t) return System.Address  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_command_failed_get_context";

   function mongoc_apm_server_changed_get_host (event : access constant mongoc_apm_server_changed_t) return access constant libmongoc_1_0_mongoc_mongoc_host_list_h.u_mongoc_host_list_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_changed_get_host";

   procedure mongoc_apm_server_changed_get_topology_id (event : access constant mongoc_apm_server_changed_t; topology_id : access libbson_1_0_bson_bson_types_h.bson_oid_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_changed_get_topology_id";

   function mongoc_apm_server_changed_get_previous_description (event : access constant mongoc_apm_server_changed_t) return access constant libmongoc_1_0_mongoc_mongoc_server_description_h.u_mongoc_server_description_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_changed_get_previous_description";

   function mongoc_apm_server_changed_get_new_description (event : access constant mongoc_apm_server_changed_t) return access constant libmongoc_1_0_mongoc_mongoc_server_description_h.u_mongoc_server_description_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_changed_get_new_description";

   function mongoc_apm_server_changed_get_context (event : access constant mongoc_apm_server_changed_t) return System.Address  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_changed_get_context";

   function mongoc_apm_server_opening_get_host (event : access constant mongoc_apm_server_opening_t) return access constant libmongoc_1_0_mongoc_mongoc_host_list_h.u_mongoc_host_list_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_opening_get_host";

   procedure mongoc_apm_server_opening_get_topology_id (event : access constant mongoc_apm_server_opening_t; topology_id : access libbson_1_0_bson_bson_types_h.bson_oid_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:193
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_opening_get_topology_id";

   function mongoc_apm_server_opening_get_context (event : access constant mongoc_apm_server_opening_t) return System.Address  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_opening_get_context";

   function mongoc_apm_server_closed_get_host (event : access constant mongoc_apm_server_closed_t) return access constant libmongoc_1_0_mongoc_mongoc_host_list_h.u_mongoc_host_list_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_closed_get_host";

   procedure mongoc_apm_server_closed_get_topology_id (event : access constant mongoc_apm_server_closed_t; topology_id : access libbson_1_0_bson_bson_types_h.bson_oid_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:204
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_closed_get_topology_id";

   function mongoc_apm_server_closed_get_context (event : access constant mongoc_apm_server_closed_t) return System.Address  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_closed_get_context";

   procedure mongoc_apm_topology_changed_get_topology_id (event : access constant mongoc_apm_topology_changed_t; topology_id : access libbson_1_0_bson_bson_types_h.bson_oid_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_topology_changed_get_topology_id";

   function mongoc_apm_topology_changed_get_previous_description (event : access constant mongoc_apm_topology_changed_t) return access constant libmongoc_1_0_mongoc_mongoc_topology_description_h.u_mongoc_topology_description_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_topology_changed_get_previous_description";

   function mongoc_apm_topology_changed_get_new_description (event : access constant mongoc_apm_topology_changed_t) return access constant libmongoc_1_0_mongoc_mongoc_topology_description_h.u_mongoc_topology_description_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_topology_changed_get_new_description";

   function mongoc_apm_topology_changed_get_context (event : access constant mongoc_apm_topology_changed_t) return System.Address  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_topology_changed_get_context";

   procedure mongoc_apm_topology_opening_get_topology_id (event : access constant mongoc_apm_topology_opening_t; topology_id : access libbson_1_0_bson_bson_types_h.bson_oid_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:227
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_topology_opening_get_topology_id";

   function mongoc_apm_topology_opening_get_context (event : access constant mongoc_apm_topology_opening_t) return System.Address  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_topology_opening_get_context";

   procedure mongoc_apm_topology_closed_get_topology_id (event : access constant mongoc_apm_topology_closed_t; topology_id : access libbson_1_0_bson_bson_types_h.bson_oid_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_topology_closed_get_topology_id";

   function mongoc_apm_topology_closed_get_context (event : access constant mongoc_apm_topology_closed_t) return System.Address  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_topology_closed_get_context";

   function mongoc_apm_server_heartbeat_started_get_host (event : access constant mongoc_apm_server_heartbeat_started_t) return access constant libmongoc_1_0_mongoc_mongoc_host_list_h.u_mongoc_host_list_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_heartbeat_started_get_host";

   function mongoc_apm_server_heartbeat_started_get_context (event : access constant mongoc_apm_server_heartbeat_started_t) return System.Address  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_heartbeat_started_get_context";

   function mongoc_apm_server_heartbeat_started_get_awaited (event : access constant mongoc_apm_server_heartbeat_started_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:251
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_heartbeat_started_get_awaited";

   function mongoc_apm_server_heartbeat_succeeded_get_duration (event : access constant mongoc_apm_server_heartbeat_succeeded_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_heartbeat_succeeded_get_duration";

   function mongoc_apm_server_heartbeat_succeeded_get_reply (event : access constant mongoc_apm_server_heartbeat_succeeded_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:260
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_heartbeat_succeeded_get_reply";

   function mongoc_apm_server_heartbeat_succeeded_get_host (event : access constant mongoc_apm_server_heartbeat_succeeded_t) return access constant libmongoc_1_0_mongoc_mongoc_host_list_h.u_mongoc_host_list_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_heartbeat_succeeded_get_host";

   function mongoc_apm_server_heartbeat_succeeded_get_context (event : access constant mongoc_apm_server_heartbeat_succeeded_t) return System.Address  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_heartbeat_succeeded_get_context";

   function mongoc_apm_server_heartbeat_succeeded_get_awaited (event : access constant mongoc_apm_server_heartbeat_succeeded_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_heartbeat_succeeded_get_awaited";

   function mongoc_apm_server_heartbeat_failed_get_duration (event : access constant mongoc_apm_server_heartbeat_failed_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_heartbeat_failed_get_duration";

   procedure mongoc_apm_server_heartbeat_failed_get_error (event : access constant mongoc_apm_server_heartbeat_failed_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:278
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_heartbeat_failed_get_error";

   function mongoc_apm_server_heartbeat_failed_get_host (event : access constant mongoc_apm_server_heartbeat_failed_t) return access constant libmongoc_1_0_mongoc_mongoc_host_list_h.u_mongoc_host_list_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:281
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_heartbeat_failed_get_host";

   function mongoc_apm_server_heartbeat_failed_get_context (event : access constant mongoc_apm_server_heartbeat_failed_t) return System.Address  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:284
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_heartbeat_failed_get_context";

   function mongoc_apm_server_heartbeat_failed_get_awaited (event : access constant mongoc_apm_server_heartbeat_failed_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:287
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_server_heartbeat_failed_get_awaited";

   type mongoc_apm_command_started_cb_t is access procedure (arg1 : access constant mongoc_apm_command_started_t)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:295

   type mongoc_apm_command_succeeded_cb_t is access procedure (arg1 : access constant mongoc_apm_command_succeeded_t)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:297

   type mongoc_apm_command_failed_cb_t is access procedure (arg1 : access constant mongoc_apm_command_failed_t)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:299

   type mongoc_apm_server_changed_cb_t is access procedure (arg1 : access constant mongoc_apm_server_changed_t)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:301

   type mongoc_apm_server_opening_cb_t is access procedure (arg1 : access constant mongoc_apm_server_opening_t)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:303

   type mongoc_apm_server_closed_cb_t is access procedure (arg1 : access constant mongoc_apm_server_closed_t)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:305

   type mongoc_apm_topology_changed_cb_t is access procedure (arg1 : access constant mongoc_apm_topology_changed_t)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:307

   type mongoc_apm_topology_opening_cb_t is access procedure (arg1 : access constant mongoc_apm_topology_opening_t)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:309

   type mongoc_apm_topology_closed_cb_t is access procedure (arg1 : access constant mongoc_apm_topology_closed_t)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:311

   type mongoc_apm_server_heartbeat_started_cb_t is access procedure (arg1 : access constant mongoc_apm_server_heartbeat_started_t)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:313

   type mongoc_apm_server_heartbeat_succeeded_cb_t is access procedure (arg1 : access constant mongoc_apm_server_heartbeat_succeeded_t)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:315

   type mongoc_apm_server_heartbeat_failed_cb_t is access procedure (arg1 : access constant mongoc_apm_server_heartbeat_failed_t)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:317

   function mongoc_apm_callbacks_new return access mongoc_apm_callbacks_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_callbacks_new";

   procedure mongoc_apm_callbacks_destroy (callbacks : access mongoc_apm_callbacks_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:327
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_callbacks_destroy";

   procedure mongoc_apm_set_command_started_cb (callbacks : access mongoc_apm_callbacks_t; cb : mongoc_apm_command_started_cb_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_set_command_started_cb";

   procedure mongoc_apm_set_command_succeeded_cb (callbacks : access mongoc_apm_callbacks_t; cb : mongoc_apm_command_succeeded_cb_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:332
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_set_command_succeeded_cb";

   procedure mongoc_apm_set_command_failed_cb (callbacks : access mongoc_apm_callbacks_t; cb : mongoc_apm_command_failed_cb_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:335
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_set_command_failed_cb";

   procedure mongoc_apm_set_server_changed_cb (callbacks : access mongoc_apm_callbacks_t; cb : mongoc_apm_server_changed_cb_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:338
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_set_server_changed_cb";

   procedure mongoc_apm_set_server_opening_cb (callbacks : access mongoc_apm_callbacks_t; cb : mongoc_apm_server_opening_cb_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:341
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_set_server_opening_cb";

   procedure mongoc_apm_set_server_closed_cb (callbacks : access mongoc_apm_callbacks_t; cb : mongoc_apm_server_closed_cb_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:344
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_set_server_closed_cb";

   procedure mongoc_apm_set_topology_changed_cb (callbacks : access mongoc_apm_callbacks_t; cb : mongoc_apm_topology_changed_cb_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:347
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_set_topology_changed_cb";

   procedure mongoc_apm_set_topology_opening_cb (callbacks : access mongoc_apm_callbacks_t; cb : mongoc_apm_topology_opening_cb_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:350
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_set_topology_opening_cb";

   procedure mongoc_apm_set_topology_closed_cb (callbacks : access mongoc_apm_callbacks_t; cb : mongoc_apm_topology_closed_cb_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:353
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_set_topology_closed_cb";

   procedure mongoc_apm_set_server_heartbeat_started_cb (callbacks : access mongoc_apm_callbacks_t; cb : mongoc_apm_server_heartbeat_started_cb_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:356
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_set_server_heartbeat_started_cb";

   procedure mongoc_apm_set_server_heartbeat_succeeded_cb (callbacks : access mongoc_apm_callbacks_t; cb : mongoc_apm_server_heartbeat_succeeded_cb_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_set_server_heartbeat_succeeded_cb";

   procedure mongoc_apm_set_server_heartbeat_failed_cb (callbacks : access mongoc_apm_callbacks_t; cb : mongoc_apm_server_heartbeat_failed_cb_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-apm.h:364
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_apm_set_server_heartbeat_failed_cb";

end libmongoc_1_0_mongoc_mongoc_apm_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
