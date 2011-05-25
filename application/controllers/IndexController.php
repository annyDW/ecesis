<?php
$rootPath = dirname(dirname(__FILE__));
set_include_path(get_include_path() . PATH_SEPARATOR . $rootPath . PATH_SEPARATOR);

class IndexController{

	public function __construct(){}
	
	public function indexAction(){
		
	}
	
	public function indexRedirect($opt){
	switch ($opt){
			case 0:
				header("location: ../application/views/scripts/index.phtml"); //Si el usuario no esta logeado, regresara al index
				break;
			case 1:
				header("location: ../application/views/scripts/menuestudiante.phtml");
				break;
			case 2:
				header("location: ../application/views/scripts/menudocente.phtml");
				break;
			case 3:
				header("location: ../application/views/scripts/menupreparador.phtml");
				break;
			case 4:
				header("location: ../application/views/scripts/menuadministrador.phtml");
				break;
			case 5:
				header("location: ../application/views/scripts/registrar.phtml");
				break;
		}
	}
}