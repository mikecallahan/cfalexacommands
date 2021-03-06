component {
  function run(){
    print.line();
    print.line();
    print
      .line()
      .lightcyan3Line("cfalexa v1.0 by Mike Callahan")
      .cyanLine("       __       _                ")
      .cyanLine("  ___ / _| __ _| | _____  ____ _ ")
      .cyanLine(" / __| |_ / _` | |/ _ \ \/ / _` |")
      .cyanLine("| (__|  _| (_| | |  __/>  < (_| |")
      .cyanLine(" \___|_|  \__,_|_|\___/_/\_\__,_|")
      .line()
      .lightcyan3Line("Installing...")
      .line();
    command("!sleep 5s");
    command( "install mikecallahan/cfalexa" ).run();
    print.cyanLine("Ok, cfalexa has been installed").line();
    command( "cd ./cfalexa" ).run();
    command( "server stop" ).run();
    command( "start cfengine=adobe openbrowser=no" ).run();
    command( "!sleep 15s").run();
    var keyPress = waitForKey( 'Click in this window and then press the <enter> key after the CF Server is up and running.' );
    command( "server share start > share.txt" ).run(); 
    command( "cd ./alexaskills/voice_template" ).run();
    command( "task run setURLs" ).run();
    command( "!ask deploy --profile 'default' --target 'skill'" ).run();
    command( "!ask deploy --profile 'default' --target 'model'" ).run();
    command( "task run setSkillID" ).run();
    command( "cd ../../" ).run();
    command( "!open https://developer.amazon.com/alexa/console/ask##" ).run();
    return; 
  }
}
