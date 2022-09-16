pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
limited with libmongoc_1_0_mongoc_mongoc_bulk_operation_h;
with System;
limited with libbson_1_0_bson_bson_types_h;
with Interfaces.C.Extensions;
limited with libmongoc_1_0_mongoc_mongoc_client_h;
--  with x86_64_linux_gnu_bits_stdint_intn_h;
limited with libmongoc_1_0_mongoc_mongoc_read_concern_h;
limited with libmongoc_1_0_mongoc_mongoc_write_concern_h;
limited with libmongoc_1_0_mongoc_mongoc_read_prefs_h;
limited with libmongoc_1_0_mongoc_mongoc_client_side_encryption_h;
--  with x86_64_linux_gnu_bits_stdint_uintn_h;

package libmongoc_1_0_mongoc_mongoc_client_session_h is

   type mongoc_client_session_with_transaction_cb_t is access function
        (arg1 : access libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t;
         arg2 : System.Address;
         arg3 : System.Address;
         arg4 : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:30

   type mongoc_transaction_state_t is 
     (MONGOC_TRANSACTION_NONE,
      MONGOC_TRANSACTION_STARTING,
      MONGOC_TRANSACTION_IN_PROGRESS,
      MONGOC_TRANSACTION_COMMITTED,
      MONGOC_TRANSACTION_ABORTED)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:42

   function mongoc_transaction_opts_new return access libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_transaction_opt_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_transaction_opts_new";

   function mongoc_transaction_opts_clone (opts : access constant libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_transaction_opt_t) return access libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_transaction_opt_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_transaction_opts_clone";

   procedure mongoc_transaction_opts_destroy (opts : access libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_transaction_opt_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_transaction_opts_destroy";

   procedure mongoc_transaction_opts_set_max_commit_time_ms (opts : access libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_transaction_opt_t; max_commit_time_ms : Interfaces.Integer_64)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_transaction_opts_set_max_commit_time_ms";

   function mongoc_transaction_opts_get_max_commit_time_ms (opts : access libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_transaction_opt_t) return Interfaces.Integer_64  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_transaction_opts_get_max_commit_time_ms";

   procedure mongoc_transaction_opts_set_read_concern (opts : access libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_transaction_opt_t; read_concern : access constant libmongoc_1_0_mongoc_mongoc_read_concern_h.u_mongoc_read_concern_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_transaction_opts_set_read_concern";

   function mongoc_transaction_opts_get_read_concern (opts : access constant libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_transaction_opt_t) return access constant libmongoc_1_0_mongoc_mongoc_read_concern_h.u_mongoc_read_concern_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_transaction_opts_get_read_concern";

   procedure mongoc_transaction_opts_set_write_concern (opts : access libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_transaction_opt_t; write_concern : access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_transaction_opts_set_write_concern";

   function mongoc_transaction_opts_get_write_concern (opts : access constant libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_transaction_opt_t) return access constant libmongoc_1_0_mongoc_mongoc_write_concern_h.u_mongoc_write_concern_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_transaction_opts_get_write_concern";

   procedure mongoc_transaction_opts_set_read_prefs (opts : access libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_transaction_opt_t; read_prefs : access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_transaction_opts_set_read_prefs";

   function mongoc_transaction_opts_get_read_prefs (opts : access constant libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_transaction_opt_t) return access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_transaction_opts_get_read_prefs";

   function mongoc_session_opts_new return access libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_session_opt_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_session_opts_new";

   procedure mongoc_session_opts_set_causal_consistency (opts : access libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_session_opt_t; causal_consistency : Extensions.bool)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_session_opts_set_causal_consistency";

   function mongoc_session_opts_get_causal_consistency (opts : access constant libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_session_opt_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_session_opts_get_causal_consistency";

   procedure mongoc_session_opts_set_snapshot (opts : access libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_session_opt_t; snapshot : Extensions.bool)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_session_opts_set_snapshot";

   function mongoc_session_opts_get_snapshot (opts : access constant libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_session_opt_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_session_opts_get_snapshot";

   procedure mongoc_session_opts_set_default_transaction_opts (opts : access libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_session_opt_t; txn_opts : access constant libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_transaction_opt_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_session_opts_set_default_transaction_opts";

   function mongoc_session_opts_get_default_transaction_opts (opts : access constant libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_session_opt_t) return access constant libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_transaction_opt_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_session_opts_get_default_transaction_opts";

   function mongoc_session_opts_get_transaction_opts (session : access constant libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t) return access libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_transaction_opt_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_session_opts_get_transaction_opts";

   function mongoc_session_opts_clone (opts : access constant libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_session_opt_t) return access libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_session_opt_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_session_opts_clone";

   procedure mongoc_session_opts_destroy (opts : access libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_session_opt_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_session_opts_destroy";

   function mongoc_client_session_get_client (session : access constant libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t) return access libmongoc_1_0_mongoc_mongoc_client_side_encryption_h.u_mongoc_client_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_session_get_client";

   function mongoc_client_session_get_opts (session : access constant libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t) return access constant libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_session_opt_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_session_get_opts";

   function mongoc_client_session_get_lsid (session : access constant libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_session_get_lsid";

   function mongoc_client_session_get_cluster_time (session : access constant libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t) return access constant libbson_1_0_bson_bson_types_h.u_bson_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_session_get_cluster_time";

   procedure mongoc_client_session_advance_cluster_time (session : access libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t; cluster_time : access constant libbson_1_0_bson_bson_types_h.u_bson_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_session_advance_cluster_time";

   procedure mongoc_client_session_get_operation_time
     (session : access constant libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t;
      timestamp : access Interfaces.Unsigned_32;
      increment : access Interfaces.Unsigned_32)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_session_get_operation_time";

   function mongoc_client_session_get_server_id (session : access constant libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t) return Interfaces.Unsigned_32  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_session_get_server_id";

   procedure mongoc_client_session_advance_operation_time
     (session : access libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t;
      timestamp : Interfaces.Unsigned_32;
      increment : Interfaces.Unsigned_32)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_session_advance_operation_time";

   function mongoc_client_session_with_transaction
     (session : access libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t;
      cb : mongoc_client_session_with_transaction_cb_t;
      opts : access constant libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_transaction_opt_t;
      ctx : System.Address;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_session_with_transaction";

   function mongoc_client_session_start_transaction
     (session : access libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t;
      opts : access constant libmongoc_1_0_mongoc_mongoc_client_h.u_mongoc_transaction_opt_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_session_start_transaction";

   function mongoc_client_session_in_transaction (session : access constant libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_session_in_transaction";

   function mongoc_client_session_get_transaction_state (session : access constant libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t) return mongoc_transaction_state_t  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_session_get_transaction_state";

   function mongoc_client_session_commit_transaction
     (session : access libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t;
      reply : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_session_commit_transaction";

   function mongoc_client_session_abort_transaction (session : access libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t; error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_session_abort_transaction";

   function mongoc_client_session_append
     (client_session : access constant libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t;
      opts : access libbson_1_0_bson_bson_types_h.u_bson_t;
      error : access libbson_1_0_bson_bson_types_h.u_bson_error_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_session_append";

   procedure mongoc_client_session_destroy (session : access libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:192
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_session_destroy";

   function mongoc_client_session_get_dirty (session : access libmongoc_1_0_mongoc_mongoc_bulk_operation_h.u_mongoc_client_session_t) return Extensions.bool  -- /usr/include/libmongoc-1.0/mongoc/mongoc-client-session.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_client_session_get_dirty";

end libmongoc_1_0_mongoc_mongoc_client_session_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
