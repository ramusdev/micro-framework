<?php
/**
 * Class Router
 * 
 * @since 1.0.0
*/

namespace core;

class Router
{	
	protected $routes = array();
	protected $params = array();

	public function add( $key, $params )
	{
		$this->routes[$key] = $params;
	}

	public function match()
	{
		$url = $_SERVER[ 'REQUEST_URI' ];

		foreach ( $this->routes as $key => $value ) {
			$route = preg_match( '#^' . $key . '$#', $url, $matches );
			if ( $route ) {
				$this->params = $value;
			}
		}
	}

	public function run()
 	{
	    $this->match();

	    //print_r( $this->params );

		$params = explode( '::', $this->params );

		$controller = $params[0];
		$method = $params[1];

		$controller_path = 'app\controllers\\' . $controller . 'Controller';

		if ( ! class_exists( $controller_path ) ) {
			 //throw new \Exception( 'Controller not found' );
		}

		if ( ! method_exists( $controller_path, $method ) ) {
			//throw new \Exception( 'Method not found' );
		}

		$instance = new $controller_path( $controller );
		$instance->$method();
	}

}