<?php
/**
 * Model class
 *
 *
*/

namespace core;

class Model
{
	public $pdo;

	public function __construct()
	{
		$this->pdo = new \PDO('mysql:host=localhost;dbname=mf', 'mysql', 'mysql' );
	}
}