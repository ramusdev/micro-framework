<?php
/**
 * Bootstrap class auto loader
 *
 *
*/

function classLoader( $class )
{ 
    $path = $class . '.php';

    if ( file_exists( $path ) ) {
  	    require_once $path;
    }
}

spl_autoload_register('classLoader');


