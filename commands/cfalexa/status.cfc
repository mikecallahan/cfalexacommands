/**
 * Check the status of CFALEXA
 **/
component {
  function run(){
    print.line();
    command( "server status" ).run();
    return; 
  }
}