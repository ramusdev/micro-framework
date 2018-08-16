<?php
/**
 * Reset password controller
 *
 *
 */

namespace app\controllers;

use core\Controller;
use core\Validator;

class ResetController extends Controller
{
	public function indexAction() 
	{	
		$this->view->render( 'indexAction.php', array( 'title' => 'page title' ) );
	}

	public function resetAction() 
	{
		$validator = new Validator();
		$valid = $validator->validate( array(
			'email' => 'email'
		) );

		if ( $valid ) {
			$user = $this->model->checkUser( $_POST );
		}

		if ( $user ) {
			$this->model->resetUserPassword( $_POST );
		}
	}

	public function setAction()
	{
		$token = $this->params['token'];
		$this->view->render( 'setAction.php', array( 'token' => $token ) );
	}

	public function passwordAction()
	{
		$this->model->setUserPassword( $_POST );
	}
}