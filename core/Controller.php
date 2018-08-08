<?php
/**
 * Controller
 *
 *
*/

namespace core;

use core\Acl;
use core\View;

class Controller
{

	public $route;
	public $controller;
	public $method;

	public function __construct( $controller, $method, $acl )
	{
		if ( ! Acl::checkAccess( $acl ) ) {
			View::errorCode( 403 );
		}

		$this->controller = $controller;
		$this->method = $method;

		$this->model = $this->loadModel();
		$this->view = $this->loadView();
	}

	public function loadModel()
	{
		$path = 'app\models\\' . $this->controller . 'Model';
		return new $path;
	}

	public function loadView()
	{
		return new View( $this->controller, $this->method );
	}
	
}