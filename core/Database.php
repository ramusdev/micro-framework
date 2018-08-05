<?php
/**
 * Database class
 *
 *
 */

namespace core;

final class Database 
{
	private static $instance;

	public function __construct() {}

	public static function pdoConnect()
	{
		if ( ! self::$instance ) {
			self::$instance = new \PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME . '', DB_USER, DB_PASSWORD );
		}

		return self::$instance;
	}

	public function __clone() {}
	public function __wakeup() {}
}

