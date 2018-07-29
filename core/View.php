<?php
/**
 * View class
 *
 *
*/

namespace core;

class View
{
	public $controller;
	public $method;

	public function __construct( $route )
	{
		$controllerMethod = explode( '::', $route );

		$this->controller = $controllerMethod[0];
		$this->method = $controllerMethod[1];
	}

	public function render( $vars )
	{
		extract( $vars );
		
		$path = 'app/views/' . $this->controller . 'View/' . $this->method . '.php';

		if ( file_exists( $path ) ) {
			require_once( $path );
		}
		else {
			throw new \Exception( 'Views not exists' );
		}
	}

	public function redirect( $url )
	{
		header( 'location: ' . $url );
		die();
	}
}