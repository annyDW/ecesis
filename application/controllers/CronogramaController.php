<?php
$rootPath = dirname(dirname(__FILE__));
set_include_path(get_include_path() . PATH_SEPARATOR . $rootPath . PATH_SEPARATOR);
include_once "models/databaseConnect.php";

class CronogramaController{
	
	private $_instancia;

	public function __construct(){
		$this->_instancia = databaseAdapter::getInstance();
		$this->_instancia->connect();
	}
	
	
	public function fetchCronData(){
		return "hello world";
	}
	
}