<?php
/**
 * Class Router
 * 
 * @since 1.0.0
*/

class Router {
	
	protected $routes = array();
	protected $params = array();

	public function __construct() {

	}

	public function add( $key, $params ) {
		$this->routes[$key] = $params;
	}

	public function match() {

		$url = $_SERVER[ 'REQUEST_URI' ];

		foreach ( $this->routes as $key => $value ) {
			if ( preg_match( '#^' . $key . '$#', $url, $matches ) ) {
				$this->params = $value;
			}
		}
	}

	public function run() {
		$this->match();

		$params = explode( '::', $this->params );

		$controller = $params[0];
		$method = $params[1];

		$path = 'app\controllers\\' . $this->params .  '.php';

		if ( ! class_exists( $path ) ) {
			 throw new Exception( 'Controller not found' );
		}

		if ( ! method_exists( $method ) ) {
			 throw new Exception( 'Method not found' );
		}

		$controller = new $controller_name;
		$controller->$method();
	}

}