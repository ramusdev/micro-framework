<?php
/**
 * Grab wether model
 *
 *
*/

namespace app\models;

use core\Model;

class GrabWetherModel extends Model
{
	public function insertWether( $wether_serialize, $dateSql )
	{
		$this->pdo->query( "INSERT INTO wether SET wether = '$wether_serialize', last_update = '$dateSql'" );
	}
}
