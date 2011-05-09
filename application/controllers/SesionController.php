<?php
$rootPath = dirname(dirname(__FILE__));
set_include_path(get_include_path() . PATH_SEPARATOR . $rootPath . PATH_SEPARATOR);
include_once "models/databaseConnect.php";
class SesionController{
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
		$sql = "select u.usuario, u.nombres, u.apellidos, p.idrol from usuario as u, perfil as p, usuarioperfil as up where u.usuario='$user' and u.clave='$pass' and up.idperfil=p.idperfil and up.iduser=u.iduser";
		$result = $this->_instancia->execute($sql);
		
		if(pg_num_rows($result)==1) {
			while ($fil = pg_fetch_assoc($result)){
				if($fil['usuario']==$user){
					$_SESSION['user'] = $fil['usuario'];
					$_SESSION['nombres']= $fil['nombres'];
					$_SESSION['apellidos'] = $fil['apellidos'];
					$rol = $fil['idrol'];
					$_SESSION['rol'] = $rol;
					$this->redirectPage($rol); /* Nos vamos a la sección "privada"
					de nuestra página*/
				}
			}
		} else
			echo "El usuario y/o clave no son correctas";
		}
	}
	public function sesionIniciada($numrol){
		session_start(); //Iniciamos la session
		if(!isset($_SESSION['user'])) { //controlamos que la variable este declarada
			$this->redirectPage(0);
		}
		else{
			if($numrol!=$_SESSION['rol']){
				$this->redirectPage($_SESSION['rol']);
			}
		}
	}
	public function sesionTerminada(){
		if (isset($_POST['logout'])){ 
			session_unset();
			session_destroy();
			header("location: index.phtml");
		}
	}
	public static function  redirectPage($opt){
		switch ($opt){
			case 0:
				header("location: index.phtml"); //Si el usuario no esta logeado, regresara al index
				break;
			case 1:
				header("location: menuestudiante.phtml");
				break;
			case 2:
				header("location: menudocente.phtml");
				break;
			case 3:
				header("location: menupreparador.phtml");
				break;
			case 4:
				header("location: menuadministrador.phtml");
				break;
		}
	}
}