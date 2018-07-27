<?php
/**
 * Cron tasks
 *
 *
*/

use core\Cron;

$cron = new Cron();

$cron->addTask( 'wether_1', 'GrabWether::grabWether', '10 minutes' );

$cron->runTask();