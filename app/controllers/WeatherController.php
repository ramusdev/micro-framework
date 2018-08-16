<?php
/**
 * Weather controller
 *
 *
*/

namespace app\controllers;

use core\Controller;
use core\Database;

class WeatherController extends Controller
{
	public function indexAction() 
	{
		$data = $this->model->getWeather();

		$weather = unserialize( $data[0]['weather'] );
		$dateTime = new \DateTime( $data[0]['last_update'] );
		$date = $dateTime->format( 'd.m.Y H:i:s' );

		$this->view->render( 'indexAction.php', array( 'weather' => $weather, 'date' => $date ) );
	}
}