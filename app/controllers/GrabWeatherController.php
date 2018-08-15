<?php
/**
 * Grab weather controller
 *
 *
*/

namespace app\controllers;

use core\Controller;
use DOMXPath;
use stdClass;
use DOMDocument;
use DateTime;

class GrabWeatherController extends Controller
{
	public function grabWeather()
	{
		$content = $this->getContent( 'https://www.gismeteo.ua/weather-zaporizhia-5093/' );

		$dom = new DOMDocument();
		@$dom->loadHTML( $content );

		$xpath = new DOMXPath( $dom );
		$weather = new stdClass();

		$pattern = array(
			'wind' => "//dd[@class='value m_wind ms']",
			'temp' => "//dd[@class='value m_temp c']",
			'press' => "//dd[@class='value m_press torr']",
			'hum' => "//div[@class='wicon hum']",
			'water' => "//div[@class='wicon water']/dd"
		);

		foreach ( $pattern as $key => $value ) {
			$data = $xpath->query($value)->item(0)->textContent;
			$weather->$key = preg_replace( '/[^0-9]/', '', $data );
		}

		$weather_serialize = serialize( $weather );

		$date = new DateTime( 'now' );
		$dateSql = $date->format( 'Y-m-d H:i:s' );

		$this->model->insertWeather( $weather_serialize, $dateSql );
	}

	public function getContent( $url )
	{
		$curl = curl_init();
		curl_setopt( $curl, CURLOPT_URL, $url );
		curl_setopt( $curl, CURLOPT_RETURNTRANSFER, 1 );
		$exec = curl_exec( $curl );
		curl_close( $curl );

		return $exec;
	}

}