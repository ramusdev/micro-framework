<?php
/**
 * Wether model
 *
 *
*/

namespace app\models;

use core\Model;

class WetherModel extends Model
{	
	public function getWether() {

		$query = $this->pdo->query( "SELECT wether FROM wether ORDER BY last_update DESC LIMIT 1" );
		//$data = $query->fetchAll(PDO::FETCH_ROW);
		$data = $query->fetchColumn();

		return $data;

	}
}

