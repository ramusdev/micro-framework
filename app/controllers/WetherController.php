<?php
/**
 * Wether controller
 *
 *
*/

namespace app\controllers;

use core\Controller;

class WetherController extends Controller
{
	public function indexAction() 
	{
		echo 'wether controller';

		$wether = $this->model->getWether();

		print_r($wether);

		$data = array(
			'title' => 'The title data',
			'content' => 'The content'
		);

	}
}