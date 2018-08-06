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

		$_SESSION[ 'auth' ] = 'admin1';
		echo $_SESSION[ 'auth' ];

		if ( $user ) {
			echo 'True';
		}
	}
}