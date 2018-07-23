<?php
/**
 * Wether model
 *
 *
*/

namespace app\models;

class WetherModel
{	
	public function getWether() {
		//echo 'wether model class';

		$db = new \mysqli( 'localhost', 'mysql', 'mysql', 'mf' );

		return $db->query( "SELECT wether FROM wether" );

	}
}

