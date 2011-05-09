<?php
$rootPath = dirname(dirname(__FILE__));
set_include_path(get_include_path() . PATH_SEPARATOR . $rootPath . '/controllers' . PATH_SEPARATOR
									. PATH_SEPARATOR . '/models' . PATH_SEPARATOR . '/views' . PATH_SEPARATOR);

include "databaseConnect.php";

class actionsOnDatabase{
	private $_instancia;
	public function __construct(){
		$this->_instancia = databaseConnect::getInstance();
		$this->_instancia->connect();
	}
	public function login(){
		if (isset($_POST['entrar'])){ 
		//Iniciamos la sesión donde guardaremos las variables
		session_start();
		//Creamos variables locales con el contenido de las devueltas por el form
		$user = $_POST['user'];
		$pass = $_POST['pass'];
		//Realizamos la consulta a la base de datos y controlamos que nos devuelva
		//algun resultado
		$sql = "select * from usuario where usuario='$user' and clave='$pass'";
		$result = $this->_instancia->execute($sql);
		if(pg_num_rows($result)!=0) {
			$_SESSION['user'] = $user; /*Declaramos una variable de sesión donde
			guardaremos el nombre del usuario
			para control*/
			header("location: menuestudiante.phtml"); /* Nos vamos a la sección "privada"
			de nuestra página*/
		} else
			echo "El usuario y/o clave no son correctas";
		}
	}
}