<?php
/**
 * Configure site routes
 *
 *
*/

use core\Router;

$routes = new Router();

$routes->add( '/', 'Main::indexAction' );
$routes->add( '/about', 'About::indexAction' );
$routes->add( '/wether', 'Wether::indexAction' );

$routes->run();