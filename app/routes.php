<?php
/**
 * Configure site routes
 *
 *
*/

use core\Router;

$routes = new Router();

$routes->add( '/', 'Main::indexAction', array( 'guest' ) );
$routes->add( '/weather', 'Weather::indexAction', array( 'user' ) );
$routes->add( '/contacts', 'Contacts::indexAction', array( 'guest' ) );
$routes->add( '/contacts/add', 'Contacts::addAction', array( 'guest' ) );
$routes->add( '/review', 'Review::indexAction', array( 'guest' ) );
$routes->add( '/signin', 'Signin::indexAction', array( 'guest' ) );
$routes->add( '/signin/login', 'Signin::loginAction', array( 'guest' ) );
$routes->add( '/signin/logout', 'Signin::logoutAction', array( 'guest' ) );
$routes->add( '/signup', 'Signup::indexAction', array( 'guest' ) );
$routes->add( '/signup/add', 'Signup::addAction', array( 'guest' ) );
$routes->add( '/reset', 'Reset::indexAction', array( 'guest' ) );
$routes->add( '/reset/action', 'Reset::resetAction', array( 'guest' ) );
$routes->add( '/reset/set/{token}', 'Reset::setAction', array( 'guest' ) );
$routes->add( '/reset/password', 'Reset::passwordAction', array( 'guest' ) );

$routes->run();