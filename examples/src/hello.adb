with Mongo;
with GNATCOLL.Opt_Parse;
with Ada.Strings.Unbounded;
with Bson.Types;
with Bson.Errors;
with Mongo.Read_Prefs;
with Mongo.URIs;
with Mongo.Client;
with Mongo.Database;
with Mongo.Collection;
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

   Database   : Mongo.Database.Database_T with Warnings => off;
   Collection : Mongo.Collection.Collection_T;
   Command    :  Bson.Types.Bson_T;
   Reply      :  Bson.Types.Bson_T;
   Insert     :  Bson.Types.Bson_T;
   Error      : Bson.Errors.Error_T;

   --     char *str;
   Retval     : Boolean;
   Uri        : Mongo.URIs.Uri_T;
   Client     : Mongo.Client.Client_T;
   Dummy_Reply : Bson.Types.Bson_T := Bson.Types.Null_Bson_T;
begin
   if Opts.Parser.Parse then
      Uri.New_Uri (Opts.Uri.Get);

      --  Create a new client instance
      --
      Client.New_Client (Uri);

      --  Register the application name so we can track it in the profile logs
      --  on the server. This can also be done from the URI (see other examples).
      --
      Client.set_appname ("connect-example");

      --  Get a handle on the database "db_name" and collection "coll_name"
      --
      Database := Client.Get_Database ("db_name");
      Collection := Client.get_collection (db => "db_name", Collection => "coll_name");

      --  Do work. This example pings the database, prints the result as JSON and
      --  performs an insert
      --
      --  command = BCON_NEW ("ping", BCON_INT32 (1));
      --
      Client.command_simple ("admin", Command,  Mongo.Read_Prefs.Null_Perfs, Reply, Error);

      --  Put_Line (Reply.As_Json);
      --  str = bson_as_json (&reply, NULL);
      --  printf ("%s\n", str);
      --  insert = BCON_NEW ("hello", BCON_UTF8 ("world"));

      Collection.Insert_One (Insert, Bson.Types.Null_Bson_T, Dummy_Reply, Error);

   end if;
end Hello;
