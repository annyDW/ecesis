<?php
$rootPath = dirname(dirname(__FILE__));
set_include_path(get_include_path() . PATH_SEPARATOR . $rootPath . PATH_SEPARATOR);
include_once "models/databaseAdapter.php";

class UserController{
private $_instancia;
	public function __construct(){
		$this->_instancia = databaseAdapter::getInstance();
	}

	public function registerActions(){
		if (isset($_POST['alta'])){
			//Datos del formulario 
			$tipodoc = $_POST['tipodoc'];
			$identificaion = $_POST['identificacion'];
			$nombres = $_POST['nombres'];
			$apellidos = $_POST['apellidos'];
			$genero = $_POST['genero'];
			$fecha = $_POST['dia'] . $_POST['mes'] . $_POST['anio'];
			$direccion = $_POST['direccion'];
			$municipio = $_POST['municipio'];
			$departamento = $_POST['departamento'];
			$pais = $_POST['pais'];
			$email = $_POST['email'];
			$telefonofijo = $_POST['telefonofijo'];
			$telefonomovil = $_POST['telefonomovil'];
			$codigoregistro = $_POST['codigoregistro'];
			$programa = $_POST['programa'];
			$rol = $_POST['rol'];
			
			
		}
	}
}