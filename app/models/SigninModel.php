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

		$query = $this->pdo->query( "SELECT password FROM user WHERE email = '$email'" );
		$hash = $query->fetchColumn();

		$verify = password_verify( $password, $hash );

		//print_r( $verify );

		return $verify;
	}
}