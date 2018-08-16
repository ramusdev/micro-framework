<?php
/**
 * Signup controller
 *
 *
 */

namespace app\controllers;

use core\Controller;
use core\Validator;

class SignupController extends Controller
{
	public function indexAction()
	{
		$this->view->render( 'indexAction.php', array( 'title' => 'title page' ) );
	}

	public function addAction()
	{
		$validator = new Validator();
		$valid = $validator->validate( array(
			'first_name' => 'text',
			'last_name' => 'text',
			'email' => 'email',
			'gender' => 'text',
			'birthday' => 'text'
		) );

		if ( $valid ) {
			$user = $this->model->checkUser( $_POST );
		}
		
		if ( ! $user ) {
			$this->model->insertUser( $_POST );
		}
		
		$this->view->redirect( '/signup' );
	}
}
