with Mongo;
with GNATCOLL.Opt_Parse;
with Ada.Strings.Unbounded;
with Mongo.URIs;
with Mongo.client;

procedure Hello is
   package Opts is
      use GNATCOLL.Opt_Parse;
      use Ada.Strings.Unbounded;
      Parser : Argument_Parser := Create_Argument_Parser
        (Help => "Help string for the parser");
   
      package Quiet is new Parse_Flag
        (Parser => Parser,
         Short  => "-q",
         Long   => "--quiet",
         Help   => "Whether the tool should be quiet or not");
   
      Default_URI : constant String := "mongodb://localhost:27017";
      package Uri is new Parse_Option
        (Parser      => Parser,
         Short       => "-u",
         Long        => "--uri",
         Arg_Type    => Unbounded_String,
         Help        => "URI tio mongo. Default is """ & Default_URI & """",
         Default_Val => To_Unbounded_String (Default_URI));
   end  Opts;

   
   --     mongoc_uri_t *uri;
   --     mongoc_client_t *client;
   --     mongoc_database_t *database;
   --     mongoc_collection_t *collection;
   --     bson_t *command, reply, *insert;
   --     bson_error_t error;
   --     char *str;
   --     bool retval;
   Uri : Mongo.URIs.Uri_T;
   Client : Mongo.Client.Client_T;
begin
   if Opts.Parser.Parse then
      Uri.New_Uri (Opts.Uri.Get);
                  
      
      --     /*
      --      * Create a new client instance
      --      */
      
      --Client.New_From_Uri (Uri);
       
      --     /*
      --      * Register the application name so we can track it in the profile logs
      --      * on the server. This can also be done from the URI (see other examples).
      --      */
      --Client.Set_Appname ("connect-example");
      --  
      --     /*
      --      * Get a handle on the database "db_name" and collection "coll_name"
      --      */
      --Database := Client.Get_Database ("db_name");
      --Collection := Client.Get_Collection ("db_name", "coll_name");
      --  
      --     /*
      --      * Do work. This example pings the database, prints the result as JSON and
      --      * performs an insert
      --      */
      --     command = BCON_NEW ("ping", BCON_INT32 (1));
      
      --  
      --     retval = mongoc_client_command_simple (
      --        client, "admin", command, NULL, &reply, &error);
      --  
      --     if (!retval) {
      --        fprintf (stderr, "%s\n", error.message);
      --        return EXIT_FAILURE;
      --     }
      --  
      --     str = bson_as_json (&reply, NULL);
      --     printf ("%s\n", str);
      --  
      --     insert = BCON_NEW ("hello", BCON_UTF8 ("world"));
      --  
      --     if (!mongoc_collection_insert_one (collection, insert, NULL, NULL, &error)) {
      --        fprintf (stderr, "%s\n", error.message);
      --     }
      --  
      --     bson_destroy (insert);
      --     bson_destroy (&reply);
      --     bson_destroy (command);
      --     bson_free (str);
      --  
      --     /*
      --      * Release our handles and clean up libmongoc
      --      */
      --     mongoc_collection_destroy (collection);
      --     mongoc_database_destroy (database);
      --     mongoc_uri_destroy (uri);
      --     mongoc_client_destroy (client);

      null;
   end if;
end Hello;
