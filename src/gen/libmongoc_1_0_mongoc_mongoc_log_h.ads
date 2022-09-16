pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;

package libmongoc_1_0_mongoc_mongoc_log_h is

   MONGOC_LOG_DOMAIN : aliased constant String := "mongoc" & ASCII.NUL;  --  /usr/include/libmongoc-1.0/mongoc/mongoc-log.h:30
   --  unsupported macro: MONGOC_ERROR(...) mongoc_log (MONGOC_LOG_LEVEL_ERROR, MONGOC_LOG_DOMAIN, __VA_ARGS__)
   --  unsupported macro: MONGOC_CRITICAL(...) mongoc_log (MONGOC_LOG_LEVEL_CRITICAL, MONGOC_LOG_DOMAIN, __VA_ARGS__)
   --  unsupported macro: MONGOC_WARNING(...) mongoc_log (MONGOC_LOG_LEVEL_WARNING, MONGOC_LOG_DOMAIN, __VA_ARGS__)
   --  unsupported macro: MONGOC_MESSAGE(...) mongoc_log (MONGOC_LOG_LEVEL_MESSAGE, MONGOC_LOG_DOMAIN, __VA_ARGS__)
   --  unsupported macro: MONGOC_INFO(...) mongoc_log (MONGOC_LOG_LEVEL_INFO, MONGOC_LOG_DOMAIN, __VA_ARGS__)
   --  unsupported macro: MONGOC_DEBUG(...) mongoc_log (MONGOC_LOG_LEVEL_DEBUG, MONGOC_LOG_DOMAIN, __VA_ARGS__)

   type mongoc_log_level_t is 
     (MONGOC_LOG_LEVEL_ERROR,
      MONGOC_LOG_LEVEL_CRITICAL,
      MONGOC_LOG_LEVEL_WARNING,
      MONGOC_LOG_LEVEL_MESSAGE,
      MONGOC_LOG_LEVEL_INFO,
      MONGOC_LOG_LEVEL_DEBUG,
      MONGOC_LOG_LEVEL_TRACE)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-log.h:56

   type mongoc_log_func_t is access procedure
        (arg1 : mongoc_log_level_t;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : Interfaces.C.Strings.chars_ptr;
         arg4 : System.Address)
   with Convention => C;  -- /usr/include/libmongoc-1.0/mongoc/mongoc-log.h:70

   procedure mongoc_log_set_handler (log_func : mongoc_log_func_t; user_data : System.Address)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-log.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_log_set_handler";

   procedure mongoc_log
     (log_level : mongoc_log_level_t;
      log_domain : Interfaces.C.Strings.chars_ptr;
      format : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /usr/include/libmongoc-1.0/mongoc/mongoc-log.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_log";

   procedure mongoc_log_default_handler
     (log_level : mongoc_log_level_t;
      log_domain : Interfaces.C.Strings.chars_ptr;
      message : Interfaces.C.Strings.chars_ptr;
      user_data : System.Address)  -- /usr/include/libmongoc-1.0/mongoc/mongoc-log.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_log_default_handler";

   function mongoc_log_level_str (log_level : mongoc_log_level_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/libmongoc-1.0/mongoc/mongoc-log.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_log_level_str";

   procedure mongoc_log_trace_enable  -- /usr/include/libmongoc-1.0/mongoc/mongoc-log.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_log_trace_enable";

   procedure mongoc_log_trace_disable  -- /usr/include/libmongoc-1.0/mongoc/mongoc-log.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "mongoc_log_trace_disable";

end libmongoc_1_0_mongoc_mongoc_log_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
