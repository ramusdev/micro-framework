<?php
/**
 * Reset password model
 *
 *
 */

namespace app\models;

use core\Model;
use core\Sender;
use app\models\SingupModel;

class ResetModel extends Model
{
	public function checkUser( $post ) 
	{
		$model = new SignupModel();
		$user = $model->checkUser( $post );

		return $user;
	}

	public function resetUserPassword( $post )
	{
		$email = $post['email'];
		$token = bin2hex( random_bytes( 64 ) );

		$this->pdo->query( "UPDATE user SET token = '$token' WHERE email = '$email'" );

		$resetText = 'http://' . $_SERVER['HTTP_HOST'] . '/reset/set/' . $token;

		$sender = new Sender();
		$sender->send( $email, $resetText );
	}

	public function setUserPassword( $post )
	{
		$token = $post['token'];
		$password = password_hash( $post['password'], PASSWORD_BCRYPT );

		$this->pdo->query( "UPDATE user SET token = '', password = '$password' WHERE token = '$token'" );
	}
}