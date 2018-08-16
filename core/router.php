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
	protected $params = array();

	public function add( $path, $action, $acl )
	{
		$path = preg_replace('/\{([a-z0-9]+)\}/', '(?P<\1>[a-z0-9]+)', $path);
        $path = '#^'. $path . '$#';

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
			$route = preg_match( $value[ 'path' ], $url, $matches );

			if ( $route ) {
				foreach ( $matches as $keyMatch => $valueMatch ) {
					$this->params[$keyMatch] = $valueMatch;
				}
				$this->action = $value[ 'action' ];
				$this->acl = $value[ 'acl' ];
			}
		}
	}

	public function run()
 	{
	    $this->match();

	    if ( ! $this->action ) View::errorCode( 404 );

		$controllerMethod = explode( '::', $this->action );

		$controller = $controllerMethod[0];
		$method = $controllerMethod[1];

		$controllerPath = 'app\controllers\\' . $controller . 'Controller';

		if ( ! class_exists( $controllerPath ) ) {
			View::errorCode( 404 );
		}

		if ( ! method_exists( $controllerPath, $method ) ) {
			View::errorCode( 404 );
		}

		$instance = new $controllerPath( $controller, $method, $this->params, $this->acl );
		$instance->$method();
	}

}