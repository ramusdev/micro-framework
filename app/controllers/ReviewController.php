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
		//print_r( $reviews );

		$this->view->render( array( 'reviews' => $reviews ) );
	}
}