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

	public function __construct( $action, $acl )
	{
		if ( ! Acl::checkAccess( $acl ) ) {
			View::errorCode( 403 );
		}

		$this->route = $action;

		$controllerMethod = explode( '::', $this->route );
		$this->controller = $controllerMethod[0];
		$this->method = $controllerMethod[1];

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
		return new View( $this->route );
	}
	
}