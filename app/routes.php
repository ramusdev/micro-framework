<?php
/**
 * Configure site routes
 *
 *
*/

use core\Router;

$routes = new Router();

$routes->add( '/', 'Main::indexAction' );
$routes->add( '/wether', 'Wether::indexAction' );
$routes->add( '/contacts', 'Contacts::indexAction' );
$routes->add( '/contacts/add', 'Contacts::addAction' );

$routes->run();