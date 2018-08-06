<?php
/**
 * Cron tasks
 *
 *
*/

use core\Cron;

$cron = new Cron();

$cron->addTask( 'weather_1', 'GrabWeather::grabWeather', '1 minutes' );
$cron->addTask( 'weather_2', 'GrabWeather::grabWeather', '2 minutes' );
$cron->addTask( 'weather_3', 'GrabWeather::grabWeather', '5 minutes' );

$cron->runTask();