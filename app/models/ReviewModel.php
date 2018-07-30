<?php
/**
 * List model
 *
 *
*/

namespace app\models;

use core\Model;
use PDO;

class ReviewModel extends Model
{
	public function getReviews()
	{
		$query = $this->pdo->query( "SELECT * FROM review ORDER BY add_date DESC LIMIT 100" );
		$data = $query->fetchAll( PDO::FETCH_OBJ );

		return $data;
	}
}