<?php
/**
 * Wether model
 *
 *
*/

namespace app\models;

use core\Model;
use PDO;

class WetherModel extends Model
{	
	public function getWether() {

		$query = $this->pdo->query( "SELECT * FROM wether ORDER BY last_update DESC LIMIT 1" );
		$data = $query->fetchAll(PDO::FETCH_ASSOC);
		//$data = $query->fetchColumn();
		return $data;

	}
}

