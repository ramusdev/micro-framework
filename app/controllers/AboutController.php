<?php
/**
 * About controller
 *
 *
*/

namespace app\controllers;

//use GuzzleHttp\Client;
//use core\Database;

class AboutController {

	public function indexAction() {

		$curl = curl_init();
		curl_setopt($curl, CURLOPT_URL,"https://www.gismeteo.ua/weather-zaporizhia-5093/");
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
		$exec = curl_exec($curl);
		curl_close($curl);

		$dom = new \DOMDocument();
		$dom->loadHTML($exec);

		$xpath = new \DOMXPath($dom);
		$wether = new \stdClass();

		$pattern = array(
			'wind' => "//dd[@class='value m_wind ms']",
			'temp' => "//dd[@class='value m_temp c']",
			'press' => "//dd[@class='value m_press torr']",
			'hum' => "//div[@class='wicon hum']",
			'water' => "//div[@class='wicon water']/dd"
		);

		foreach ( $pattern as $key => $value ) {
			$data = $xpath->query($value)->item(0)->textContent;
			$wether->$key = preg_replace('/[^0-9]/', '', $data);
		}

		$wether_serialize = serialize($wether);

		//$wind = $xpath->query("//dd[@class='value m_wind ms']")->item(0)->textContent;
		//$temp = $xpath->query("//dd[@class='value m_temp c']")->item(0)->textContent;
		//$press = $xpath->query("//dd[@class='value m_press torr']")->item(0)->textContent;
		//$hum = $xpath->query("//div[@class='wicon hum']")->item(0)->textContent;
		//$water = $xpath->query("//div[@class='wicon water']/dd")->item(0)->textContent;

		$date = new \DateTime('now');
		$dateSql = $date->format( 'Y-m-d H:i:s' );

		$mysqli = new \mysqli( 'localhost', 'mysql', 'mysql', 'mf' );
		$mysqli->query( "INSERT INTO wether SET wether = '$wether_serialize', last_update = '$dateSql'" );


			
	}


}