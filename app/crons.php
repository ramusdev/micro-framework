<?php
/**
 * Cron tasks
 *
 *
*/

use core\Cron;

$cron = new Cron();

$cron->addTask( 'wether', 'CronController::grabWether', '4 minutes' );

$cron->runTask();