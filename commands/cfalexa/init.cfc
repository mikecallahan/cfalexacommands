/**
 * Installs cfalexa core code from ForgeBox
 * .
 * Example
 * {code:bash}
 * cfalexa init
 * {code}
 **/
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
      .cyanLine("Installing...")
      .line();
    command("!sleep 5s");
    command( "!ask new --template cfalexa --url https://www.cfalexa.com/download/templates.json" ).run();
    print.cyanLine("Ok, cfalexa has been installed").line();
    return; 
  }
}