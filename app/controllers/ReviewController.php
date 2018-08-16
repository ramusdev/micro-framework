<?php
/**
 * Review controller
 *
 *
*/

namespace app\controllers;

use core\Controller;

class ReviewController extends Controller
{
	public function indexAction()
	{
		$reviews = $this->model->getReviews();

		$this->view->render( 'indexAction.php', array( 'reviews' => $reviews ) );
	}
}