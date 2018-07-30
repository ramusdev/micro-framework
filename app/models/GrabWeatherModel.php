<?php
/**
 * Grab weather model
 *
 *
*/

namespace app\models;

use core\Model;

class GrabWeatherModel extends Model
{
	public function insertWeather( $weather_serialize, $dateSql )
	{
		$this->pdo->query( "INSERT INTO weather SET weather = '$weather_serialize', last_update = '$dateSql'" );
	}
}
