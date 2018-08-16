<?php
/**
 * Sender class for email send
 *
 *
 */

namespace core;

class Sender
{
	public function send( $email, $text ) 
	{
		mail( $email, 'Восстановления пароля', $text );
	}
}