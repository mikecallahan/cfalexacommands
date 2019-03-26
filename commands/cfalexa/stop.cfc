/**
 * Shuts down the CF server AND the ngrok share
 * Make sure you are running this command in your cfalexa folder.
 **/
component {
  function run(){
    print.line();
    command( "server share stop" ).run();
    command( "server stop" ).run();
    print.cyanLine("Ok, cfalexa is all shut down!").line();
    return; 
  }
}