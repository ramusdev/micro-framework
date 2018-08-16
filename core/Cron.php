<?php
/**
 * Cron task class
 *
 *
 */

namespace core;

use core\Database;
use PDO;

class Cron
{
	protected $pdo;
	protected $date;
	protected $dateObj;
	protected $task = array();

	public function __construct()
	{
		$this->pdo = Database::pdoConnect();

		$this->dateObj = $dateTime = new \DateTime( 'now' );
		$this->date = $dateTime->format( 'Y-m-d H:i:s' );
	}

	public function addTask( $name, $path, $frequency )
	{
		$this->task[] = array(
			'name' => $name,
			'action' => $path,
			'frequency' => $frequency
		);
	}

	public function runTask() 
	{
		$this->insertTaskDb();
		$this->checkTaskRun();
	}

	public function insertTaskDb() 
	{
		$stmt = $this->pdo->prepare( "INSERT IGNORE INTO cron SET name = :name, action = :action, frequency = :frequency, last = :last" );

		foreach ( $this->task as $key => $value ) {
			$stmt->bindValue( ':name', $value[ 'name' ] );
			$stmt->bindValue( ':action', $value[ 'action' ] );
		 	$stmt->bindValue( ':frequency', $value[ 'frequency' ] );
		 	$stmt->bindValue( ':last', $this->date );
		 	$stmt->execute();
		}
	}

	public function checkTaskRun()
	{
		$stmt = $this->pdo->query( "SELECT * FROM cron" );
		$tasks = $stmt->fetchAll( PDO::FETCH_ASSOC );

		foreach ( $tasks as $key => $value ) {

			$nameTask = $value[ 'name' ];

			$lastTimeRun = new \DateTime( $value[ 'last' ] );
			$timeToRun = $lastTimeRun->modify( '+' . $value[ 'frequency' ] );

			if ( $timeToRun < $this->dateObj ) {
				$this->pdo->query( "UPDATE cron SET last = '$this->date' WHERE name = '$nameTask'" );
				$this->taskAction( $value[ 'action' ] );
			}
		}
	}

	public function taskAction( $route )
	{
		$controllerMethod = explode( '::', $route );

		$controller = 'app\controllers\\' . $controllerMethod[0] . 'Controller';
		$method = $controllerMethod[1];

		$instance = new $controller( $controllerMethod[0], $method );
		$instance->$method();
	}	
}


