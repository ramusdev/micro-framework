<?php
/**
 * Configure site routes
 *
 *
*/

//use Core\Router;

$routes = new Router();

$routes->add( '/about', 'AboutController::index' );
$routes->add( '/contacts', 'ContactsController::index' );
$routes->add( '/wether/city', 'WetherController::city' );

$routes->run();

//print_r( $routes );