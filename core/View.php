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

	public function __construct( $controller, $method )
	{
		$this->controller = $controller;
		$this->method = $method;
	}

	public function render( $template, $vars )
	{
		extract( $vars );
		
		$path = 'app/views/' . $this->controller . 'View/' . $template;

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

	public function errorCode( $code )
	{
		http_response_code( $code ); 

		require_once 'app/views/Errors/' . $code . '.php';
		die;
	}
}