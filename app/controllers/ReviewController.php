<?php
/**
 * List controller
 *
 *
*/

namespace app\controllers;

use core\Controller;

class ReviewController extends Controller
{
	public function indexAction()
	{
		$this->view->render( array( 'title' => 'Title page' ) );
	}
}