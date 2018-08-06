<?php
/**
 * Cron tasks
 *
 *
*/

use core\Cron;

$cron = new Cron();

$cron->addTask( 'weather', 'GrabWeather::grabWeather', '5 minutes' );

$cron->runTask();