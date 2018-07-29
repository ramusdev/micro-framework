<?php
/**
 * Controller
 *
 *
*/

namespace core;

class Controller
{

	public $route;
	public $controller;
	public $method;

	public function __construct( $route )
	{
		$this->route = $route;

		$controllerMethod = explode( '::', $route );
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