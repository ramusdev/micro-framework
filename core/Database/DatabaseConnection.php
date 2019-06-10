<?php
/**
 * Database connection
 * 
 */

namespace core\Database;

class DatabaseConnection
{
    private $configuration;

    public function __construct(DatabaseConfiguration $configuration)
    {
        $this->configuration = $configuration;
    }

    public function getConnection()
    {
        return new \PDO('mysql:host=' . $this->configuration->getHost
            . ';dbname=' . $this->configuration->getName() 
            . '', $this->configuration->getUser(), $this->configuration->getPassword());
    }
}