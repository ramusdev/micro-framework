<?php
/**
 * Model class
 *
 *
*/

namespace core;

use core\Database;

class Model
{
	public $pdo;

	public function __construct()
	{
		$this->pdo = Database::pdoConnect();

		//$connect = new Database();
		//$connect->pdoConnect();
		//$this->pdo = new \PDO('mysql:host=localhost;dbname=mf', 'mysql', 'mysql' );
		//$this->pdo = new \PDO('mysql:host=localhost;dbname=a0139772_bwt', 'a0139772_bwt', 'Mypassword219' );
	}
}