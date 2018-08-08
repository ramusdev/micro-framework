<?php
/**
 * Signup model
 *
 *
 */

namespace app\models;

use core\Model;
use PDO;

class SignupModel extends Model
{
	public function insertUser( $post )
	{
		$first_name = $post['first_name'];
		$last_name = $post['last_name'];
		$email = $post['email'];
		$gender = $post['gender'];
		$birthday = $post['birthday'];

		$password = password_hash( $post['password'], PASSWORD_BCRYPT );
		$token = bin2hex( random_bytes( 64 ) );

		$this->pdo->query( "INSERT INTO user SET first_name = '$first_name', last_name = '$last_name', email = '$email', gender = '$gender', birthday = '$birthday', role = 'user', password = '$password', token = '$token'" );
	}

	public function checkUser( $post )
	{
		$email = $post['email'];

		$query = $this->pdo->query( "SELECT id FROM user WHERE email = '$email'" );
		$user = $query->fetchAll( PDO::FETCH_ASSOC );

		return $user;
	}
}