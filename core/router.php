<?php
/**
 * Class Router
 * 
 * @since 1.0.0
*/

namespace core;

use core\View;

class Router
{	
	protected $routes = array();
	protected $action = array();
	protected $acl = array();

	public function add( $path, $action, $acl )
	{
		$this->routes[] = array(
			'path' => $path,
			'action' => $action,
			'acl' => $acl
		);
	}

	public function match()
	{
		$url = $_SERVER[ 'REQUEST_URI' ];

		foreach ( $this->routes as $key => $value ) {
			$route = preg_match( '#^' . $value[ 'path' ] . '$#', $url, $matches );
			if ( $route ) {
				$this->action = $value[ 'action' ];
				$this->acl = $value[ 'acl' ];
			}
		}
	}

	public function run()
 	{
	    $this->match();

	    if ( ! $this->action ) View::errorCode( 404 );

		$params = explode( '::', $this->action );

		$controller = $params[0];
		$method = $params[1];

		$controller_path = 'app\controllers\\' . $controller . 'Controller';

		if ( ! class_exists( $controller_path ) ) {
			View::errorCode( 404 );
		}

		if ( ! method_exists( $controller_path, $method ) ) {
			View::errorCode( 404 );
		}

		$instance = new $controller_path( $controller, $method, $this->acl );
		$instance->$method();
	}

}