<?php
/**
 * Contacts model
 *
 *
*/

namespace app\models;

use core\Model;

class ContactsModel extends Model
{
	public function insertForm( $post )
	{
		$timeDate = new \DateTime( 'now' );
		$addDate = $timeDate->format( 'Y-m-d H:i:s' );

		$name = $post['name'];
		$email = $post['email'];
		$message = $post['message'];

		$this->pdo->query( "INSERT INTO review SET name = '$name', email = '$email', message = '$message', add_date = '$addDate'" );
	}
}