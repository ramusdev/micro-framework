<?php
/**
 * Signin controller
 *
 *
 */

namespace app\controllers;

use core\Controller;
use core\Validator;

class SigninController extends Controller
{
	public function indexAction()
	{
		$this->view->render( array( 'title' => 'title page' ) );
	}

	public function loginAction()
	{
		$validator = new Validator();
		$valid = $validator->validate( array(
			'email' => 'email',
			'password' => 'text'
		) );

		$user = $this->model->getUser( $_POST );

		$verify = password_verify( $_POST[ 'password' ], $user->password );

		if ( $verify ) {
			$_SESSION[ 'auth' ] = array(
				'user_id' => $user->id,
				'user_name' => $user->first_name,
				'user_role' => $user->role
			);
		}

		$this->view->redirect( '/' );
	}

	public function logoutAction()
	{
		unset( $_SESSION[ 'auth' ] );
		session_destroy();

		$this->view->redirect( '/' );
	}
}