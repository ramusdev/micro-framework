<?php
/**
 * Wether controller
 *
 *
*/

namespace app\controllers;

use core\Controller;

class WetherController extends Controller
{
	public function indexAction() 
	{
		$data = $this->model->getWether();
		$wether = unserialize($data);

		$this->view->render( array( 'wether' => $wether, 'title' => 'Wether page' ) );
	}
}