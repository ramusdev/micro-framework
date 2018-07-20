<?php
/**
 * Cron tasks
 *
 *
*/

use core\Cron;

$cron = new Cron();

$cron->addTask( 'wether', 'WetherTask::parseWether', '1 minutes' );

$cron->runTask();