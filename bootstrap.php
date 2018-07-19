<?php


spl_autoload_register(function($class) {
	echo $class;
    $path = str_replace('\\', '/', $class.'.php');
    if (file_exists($path)) {
        require $path;
    }
});

// Core load
require_once __DIR__ . '/core/router.php';
require_once __DIR__ . '/app/routes.php';




//use GuzzleHttp\Client;
//$guzzle = new \GuzzleHttp\Client();
//$guzzle = new CLient();
//print_r( $guzzle );