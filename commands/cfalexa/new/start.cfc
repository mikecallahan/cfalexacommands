/**
 * Starts the CF server AND the ngrok share.
 * Make sure you are running this command in your cfalexa folder.
 **/
component {
  function run(){
    print.line();
          command( "server stop" ).run();
          command( "start cfengine=adobe openbrowser=no" ).run();
          print.cyanLine("Waiting for server to start...").line();
          command( "!sleep 15s").run();
          var keyPress = waitForKey( 'Click in this window and then press the <enter> key after the CF Server is up and running.' );
          command( "server share start > share.txt" ).run(); 
          command( "cd ./alexaskills/voice_template" ).run();
          command( "task run setURLs" ).run();
          command( "!ask deploy --profile 'default' --target 'skill'" ).run();
          command( "cd ../../" ).run();
          command( "!open https://developer.amazon.com/alexa/console/ask##" ).run();
  }
}