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
	}

	public function loadModel( $model )
	{
		$path = 'app\models\\' . $model . 'Model';

		if ( class_exists( $path ) ) {
			return new $path;
		}
		
	}
}