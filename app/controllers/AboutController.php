<?php
/**
 * About controller
 *
 *
*/

namespace app\controllers;

use GuzzleHttp\Client;
//use core\Database;

class AboutController {

	public function indexAction() {

		$guzzle = new Client();

		//$response = $guzzle->request( 'GET', 'http://docs.guzzlephp.org/en/stable/quickstart.html' );
		//$body = $response->getBody();

		/*
		$mysqli = new \mysqli( 'localhost', 'mysql', 'mysql', 'mf' );
		$results = $mysql->query("
			SELECT *
			FROM Weather
		");
		*/

		//print_r( $results );

	}
}