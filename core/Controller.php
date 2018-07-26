<?php
/**
 * Controller
 *
 *
*/

namespace core;

class Controller
{
	public function __construct( $model )
	{
		$this->model = $this->loadModel( $model );
		$this->view = new View( 'wetherController::index' );
	}

	public function loadModel( $model )
	{
		$path = 'app\models\\' . $model . 'Model';

		if ( class_exists( $path ) ) {
			return new $path;
		}
		
	}
}