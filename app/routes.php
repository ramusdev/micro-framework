<?php
/**
 * Configure site routes
 *
 *
*/

use core\Router;

$routes = new Router();

$routes->add( '/', 'MainController::index' );
$routes->add( '/about', 'AboutController::index' );
$routes->add( '/contacts', 'ContactsController::index' );
$routes->add( '/wether/city', 'WetherController::city' );

$routes->run();

//echo 'routes';