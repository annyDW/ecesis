<?php
class dbconf{
private $_nombrebd = "ecesis";
private $_usuario = "postgres";
private $_pass = "bases1436";
private $_servidor = "127.0.0.1";
private $_gestorBD = "postgresql";

public function getDatabase(){
	return $this->_nombrebd; 
}

public function getUser(){
	return $this->_usuario;
}

public function getPass(){
	return $this->_pass;
}

public function getHost(){
	return $this->_servidor;
}

public function getDatabaseManager(){
	return $this->_gestorBD;	
}
}