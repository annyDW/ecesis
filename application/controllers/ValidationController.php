<?php

class ValidationController{

	public function ValidateEmail($email)
	{
  		return filter_var($email, FILTER_VALIDATE_EMAIL);
	}
	
	public function SanitizeEmaill($string) {
    	return filter_var($url, FILTER_SANITIZE_EMAIL);
	}
	
	public function check_email($email){
    	$email_error = false;

    	$Email = htmlspecialchars(stripslashes(strip_tags(trim($email)))); //parse unnecessary characters to prevent exploits

    	if ($Email == '') { $email_error = true; }
    	elseif (!eregi('^([a-zA-Z0-9._-])+@([a-zA-Z0-9._-])+\.([a-zA-Z0-9._-])([a-zA-Z0-9._-])+', $Email)) { $email_error = true; }
    	else {
    		list($Email, $domain) = split('@', $Email, 2);
        	if (! checkdnsrr($domain, 'MX')) { $email_error = true; }

        	else {

        		$array = array($Email, $domain);

        		$Email = implode('@', $array);

        	}

    	}

    	if (email_error) { return false; } else{return true;}
	}
	
	public function ValidateNumber($value)
	{
    	return filter_var($value, FILTER_VALIDATE_INT);
	}
	
	public function SanitizeNumber($value){
    	return filter_var($value, FILTER_SANITIZE_NUMBER_INT);
	}
	
	public function ValidateStringr($str){
    	return preg_match('/^[A-Za-z\s ]+$/', $str);
	}
	
	public function SanitizeStringr($str){
    	return filter_var($str, FILTER_SANITIZE_STRIPPED); # only 'String' is allowed eg. '<br>HELLO</br>' => 'HELLO'
	}	
	
	public function ValidateUsername($username){
    #alphabet, digit, _ and . are allow. Minimum 6 character. Maximum 50 characters (email address may be more)
    	return preg_match('/^[a-zA-Z0-9\d_.]{6,50}$/i', $username);
	}
	
	public function ValidateAddress($address){
    #alphabet, digit, _ and . are allow. Minimum 6 character. Maximum 50 characters (email address may be more)
    	return preg_match('/^[a-zA-Z0-9\d_ #.-]{6,50}$/i', $address);
	}
	
	public function ValidatePassword($password){
    #must contain 8 characters, 1 uppercase, 1 lowercase and 1 number
    	return preg_match('/^(?=^.{8,}$)((?=.*[A-Za-z0-9])(?=.*[A-Z])(?=.*[a-z]))^.*$/', $password);
	}
	
	public function ValidateAlphanumeric($string)
	{
    	return ctype_alnum ($string);
	}
	
	public function SanitizeAlphanumeric($string)
	{
    	return preg_replace('/[^a-zA-Z0-9]/', '', $string);
	}
	
	
	public function _clean($str){
		return is_array($str) ? array_map('_clean', $str) : str_replace('\\', '\\\\', strip_tags(trim(htmlspecialchars((get_magic_quotes_gpc() ? stripslashes($str) : $str), ENT_QUOTES))));
	}
	
	
	public function ValidateDate($date){
    	#05/12/2109
    	#05-12-0009
    	#05.12.9909
    	#05.12.99
    	return preg_match('/^((0?[1-9]|1[012])[- /.](0?[1-9]|[12][0-9]|3[01])[- /.][0-9]?[0-9]?[0-9]{2})*$/', $date);
	}
	
	public  function PasswordIguales($pass1, $pass2){
		return $pass1==$pass2;
	}
	
	public function ValidarFormularioDeRegistro($tipodoc, $identificacion, $nombres, 
	$apellidos, $genero, $usuario, $pass1, $pass2, $fecha, $direccion, $municipio, 
	$departamento, $pais, $email, $telefonofijo, $telefonomovil, $codigoregistro, 
	$programa, $rol){
		
		$errores = array();
		
		if(!($this->ValidateStringr($tipodoc)&&$this->SanitizeStringr($tipodoc))){
			$errores[] = "tipodoc";
			echo "tipodoc\n";
		}
		
		if(!($this->ValidateNumber($identificacion)&&$this->SanitizeNumber($identificacion))){
			$errores[] = "identificaion";
			echo "identificaion\n";
		}
		
		if(!($this->ValidateStringr($nombres)&&$this->SanitizeStringr($nombres))){
			$errores[] = "nombres";
			echo "nombres\n";
		}
		
		if(!($this->ValidateStringr($apellidos)&&$this->SanitizeStringr($apellidos))){
			$errores[] = "apellidos";
			echo "apellidos\n";
		}
		
		if(!($this->ValidateStringr($genero)&&$this->SanitizeStringr($genero))){
			$errores[] = "genero";
			echo "genero\n";
		}
		
		if(!($this->ValidateUsername($usuario))){
			$errores[] = "usuario";
			echo "usuario\n";
		}
		
		if(!($this->PasswordIguales($pass1, $pass2))){
			$errores[] = "desiguales";
			echo "desiguales\n";
		}else{
			if(!($this->ValidatePassword($pass1))){
				$errores[] = "password";
				echo"password\n";
			}
		}
		/*
		if(!($this->ValidateDate($fecha))){
			$errores[] = "fecha";
		}
		*/
		if(!($this->ValidateAddress($direccion))){
			$errores[] = "direccion";
			echo "direccion\n";
		}
		
		if(!($this->ValidateStringr($municipio)&&$this->SanitizeStringr($municipio))){
			$errores[] = "municipio";
			echo "municipio\n";
		}
		
		if(!($this->ValidateStringr($departamento)&&$this->SanitizeStringr($departamento))){
			$errores[] = "departamento";
			echo "departamento\n";
		}
		
		if(!($this->ValidateStringr($pais)&&$this->SanitizeStringr($pais))){
			$errores[] = "pais";
			echo "pais\n";
		}
		
		if(!($this->ValidateEmail($email))){
			$errores[] = "email";
			echo  "email\n";
		}
		
		if(!($this->ValidateNumber($telefonofijo)&&$this->SanitizeNumber($telefonofijo))){
			$errores[] = "telefonoFijo";
			echo "telefonoFijo\n";
		}
		
		if(!($this->ValidateNumber($telefonomovil)&&$this->SanitizeNumber($telefonomovil))){
			$errores[] = "telefonoMovil";
			echo "telefonoMovil\n";
		}
		
		if(!($this->ValidateAlphanumeric($codigoregistro)&&$this->SanitizeAlphanumeric($codigoregistro))){
			$errores[] = "codigo";
			echo  "codigo\n";
		}
		
		if(!($this->ValidateStringr($programa)&&$this->SanitizeStringr($programa))){
			$errores[] = "programa";
			echo "programa\n";
		}
		
		if(!($this->ValidateNumber($rol)&&$this->SanitizeNumber($rol))){
			$errores[] = "rol\n";
			echo "rol";
		}
		
		return $errores;
	}
}