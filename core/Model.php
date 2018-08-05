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
	}
}