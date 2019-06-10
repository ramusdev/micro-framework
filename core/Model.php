<?php
/**
 * Model class
 *
 *
*/

namespace core;

use core\Database\DatabaseConfiguration;
use core\Database\DatabaseConnection;

class Model
{
	public $pdo;

    public function __construct()
    {
        $configuration = new DatabaseConfiguration([
            'host' => DB_HOST,
            'user' => DB_USER,
            'name' => DB_NAME,
            'password' => DB_PASSWORD
        ]);

        $connection = new DatabaseConnection($configuration);
        $this->pdo = $connection->getConnection();
    }
}