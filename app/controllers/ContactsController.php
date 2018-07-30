<?php
/**
 * Contacts controller
 *
 *
*/

namespace app\controllers;

use core\Controller;
use core\Validator;

class ContactsController extends Controller
{
	public function indexAction()
	{
		$this->view->render( array( 'title' => 'Page title' ) );
	}

	public function addAction()
	{
		$validator = new Validator();
		$valid = $validator->validate( array(
			'name' => 'text',
			'email' => 'email',
			'message' => 'text'
		) );

		if ( $valid ) {
			$this->model->insertForm( $_POST );
		}

		$this->view->redirect( '/contacts' );
		
	}
}