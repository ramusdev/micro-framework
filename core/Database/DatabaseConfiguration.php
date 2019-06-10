<?php
/**
 * Database configuration
 * 
 */

namespace core\Database;

class DatabaseConfiguration
{

    private $host;
    private $name;
    private $user;
    private $password;

    public function __construct(array $configuration)
    {
        $this->host = $configuration['host'];
        $this->name = $configuration['name'];
        $this->user = $configuration['user'];
        $this->password = $configuration['password'];
    }

    public function getHost() : string
    {
        return $this->host;
    }

    public function getName() : string
    {
        return $this->name;
    }

    public function getUser() : string
    {
        return $this->user;
    }

    public function getPassword() : string
    {
        return $this->password;
    }
}