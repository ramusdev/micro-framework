<?php
/**
 * Configure site routes
 *
 *
*/

use core\Router;

$routes = new Router();

$routes->add( '/', 'Main::indexAction' );
$routes->add( '/weather', 'Weather::indexAction' );
$routes->add( '/contacts', 'Contacts::indexAction' );
$routes->add( '/contacts/add', 'Contacts::addAction' );
$routes->add( '/review', 'Review::indexAction' );
$routes->add( '/signin', 'Signin::indexAction' );
$routes->add( '/signup', 'Signup::indexAction' );
$routes->add( '/signup/add', 'Signup::addAction' );

$routes->run();