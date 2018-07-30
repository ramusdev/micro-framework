<?php
/**
 * Wether model
 *
 *
*/

namespace app\models;

use core\Model;
use PDO;

class WeatherModel extends Model
{	
	public function getWeather() 
	{
		$query = $this->pdo->query( "SELECT * FROM weather ORDER BY last_update DESC LIMIT 1" );
		$data = $query->fetchAll( PDO::FETCH_ASSOC );
		
		return $data;
	}
}

