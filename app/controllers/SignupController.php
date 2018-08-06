<?php
/**
 * Registration controller
 *
 *
*/

namespace app\controllers;

use core\Controller;

class SignupController extends Controller
{
	public function indexAction()
	{
		$this->view->render( array( 'title' => 'Title page' ) );
	}

	public function addAction()
	{
		echo 'sign up controller add';
	}
}