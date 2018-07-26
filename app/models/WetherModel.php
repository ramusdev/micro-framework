<?php
/**
 * Wether model
 *
 *
*/

namespace app\models;

use PDO;

class WetherModel
{	
	public function getWether() {
		//echo 'wether model class';
		//$db = new \mysqli( 'localhost', 'mysql', 'mysql', 'mf' );
		//return $db->query( "SELECT wether FROM wether" );

		$pdo = new PDO('mysql:host=localhost;dbname=mf', 'mysql', 'mysql' );
		$query = $pdo->query( "SELECT wether FROM wether ORDER BY last_update DESC LIMIT 1" );
		//$data = $query->fetchAll(PDO::FETCH_ROW);
		$data = $query->fetchColumn();

		return $data;

		

	}
}

