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

	public function render()
	{
		$path = '/app/views/' . $this->controller . $this->method . '.php';

		if ( file_exists( $path ) ) {
			require_once( $path );
		}
	}
}