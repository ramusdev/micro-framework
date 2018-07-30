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

			if ( ! $this->$action( $_POST[ $key ] ) ) return false;
		}

		return true;
	}

	public function textValidate( $formField )
	{
		if ( strlen( $formField ) > 1000 ) {
			return false;
		}

		if ( $formField != strip_tags( $formField ) ) {
			return false;
		}

		return true;
	}

	public function emailValidate( $formField )
	{
		if ( ! filter_var( $formField, FILTER_VALIDATE_EMAIL ) ) {
			return false;
		}

		return true;
	}
}

