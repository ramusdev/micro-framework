<?php
/**
 * Signin model
 *
 *
 */

namespace app\models;

use core\Model;
use PDO;

class SigninModel extends Model
{
	public function getUser( $post )
	{
		$email = $post[ 'email' ];
		$password = $post[ 'password' ];

		$stmt = $this->pdo->query( "SELECT * FROM user WHERE email = '$email'" );
		$user = $stmt->fetch( PDO::FETCH_OBJ );

		return $user;
	}
}