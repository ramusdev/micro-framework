<?php
/**
 * Index file
 *
 * 
*/

// Composer autoloader
require __DIR__ .  '/vendor/autoload.php';

// Class autoloader
require_once __DIR__ . '/core/Bootstrap.php';

// Load application
require_once __DIR__ . '/app/routes.php';

/*
$routes = new Router();
$routes->add( '/', 'MainController::index' );
$routes->add( '/about', 'AboutController::index' );
$routes->add( '/contacts', 'ContactsController::index' );
$routes->add( '/wether/city', 'WetherController::city' );
$routes->run();
*/

// Core load
//require_once __DIR__ . '/app/routes.php';


/*
spl_autoload_register(function($class) {
	echo $class;
    $path = str_replace('\\', '/', $class.'.php');
    if (file_exists($path)) {
        require $path;
    }
});
*/


//$controller = new AboutController();

//use GuzzleHttp\Client;
//$guzzle = new \GuzzleHttp\Client();
//$guzzle = new CLient();
//print_r( $guzzle );


?>