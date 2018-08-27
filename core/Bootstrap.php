<?php
/**
 * Bootstrap
 *
 *
*/

function classLoader( $class )
{ 
    $path = str_replace( '\\', '/', $class . '.php' );
    if ( file_exists( $path ) ) {
  	    require_once $path;
    }
}
spl_autoload_register( 'classLoader' );

// Start session
session_start();



