<?php
/**
 * Acl class
 *
 *
*/

namespace core;

class Acl
{
	public function checkAccess( $acl )
	{
		$defaultRole = 'guest';
		$authRole = $_SESSION[ 'auth' ][ 'user_role' ];
		
		foreach ( $acl as $key => $value ) {
			if ( $defaultRole == $value ) {
				return true;
			} 
			elseif ( $authRole == $value ) {
				return true;
			}
		}

		return false;
	}
}