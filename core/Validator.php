<?php
/**
 * Validator class
 *
 *
*/

namespace core;

class Validator
{
	public function validate( $data )
	{
		foreach ( $data as $key => $value ) {
			$action = $value . 'Validate';

			if ( ! $this->$action( $_POST[ $key ] ) ) {
				return false;
			}
			
			return true;
		}
	}

	public function textValidate( $formField )
	{
		//if ( strlen( $formField ) > 1 ) {
			//return false;
		//}

		return false;
	}

	public function emailValidate( $formField )
	{
		return false;
	}
}

