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

		$wether = unserialize( $data[0]['wether'] );
		$dateTime = new \DateTime( $data[0]['last_update'] );
		$date = $dateTime->format( 'd.m.Y H:i:s' );

		$this->view->render( array( 'wether' => $wether, 'date' => $date ) );
	}
}