<?php
/**
 * Cron tasks
 *
 *
*/

use core\Cron;

$cron = new Cron();

$cron->addTask( 'wether', 'Wether::parseWether', '10 minutes' );

//$cron->runTask();