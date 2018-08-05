<?php
/**
 * Index file
 *
 * 
*/

// Composer autoloader
require __DIR__ .  '/vendor/autoload.php';

// Config
require_once __DIR__ . '/app/config.php';

// Class autoloader
require_once __DIR__ . '/core/Bootstrap.php';

// Load routes
require_once __DIR__ . '/app/routes.php';

// Cron tasks
require_once __DIR__ . '/app/crons.php';

?>