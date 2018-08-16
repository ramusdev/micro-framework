<?php
/**
 * Main controller
 *
 *
*/

namespace app\controllers;

use core\Controller;

class MainController extends Controller
{
	public function indexAction()
	{
		$this->view->render( 'indexAction.php', array( 'title' => 'Title page' ) );
	}
}