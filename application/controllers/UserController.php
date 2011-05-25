<?php
$rootPath = dirname(dirname(__FILE__));
set_include_path(get_include_path() . PATH_SEPARATOR . $rootPath . PATH_SEPARATOR);
include_once "models/databaseAdapter.php";
include_once "controllers/ValidationController.php";

class UserController{
private $_instancia;
private $_validador;
	public function __construct(){
		$this->_instancia = databaseAdapter::getInstance();
		$this->_validador = new ValidationController();
	}

	public function registerActions(){
		if (isset($_POST['alta'])){
			
			
			//Datos del formulario 
			$tipodoc = $this->_validador->_clean($_POST['tipodoc']);
			$identificacion = $this->_validador->_clean($_POST['identificacion']);
			$nombres = $this->_validador->_clean($_POST['nombres']);
			$apellidos = $this->_validador->_clean($_POST['apellidos']);
			$genero = $this->_validador->_clean($_POST['genero']);
			$usuario = $this->_validador->_clean($_POST['usuario']);
			$pass1 = $this->_validador->_clean($_POST['contrasenia1']);
			$pass2 = $this->_validador->_clean($_POST['contrasenia2']);
			$fecha =  $this->_validador->_clean($_POST['fecha']);
			$direccion = $this->_validador->_clean($_POST['direccion']);
			$municipio = $this->_validador->_clean($_POST['municipio']);
			$departamento = $this->_validador->_clean($_POST['departamento']);
			$pais = $this->_validador->_clean($_POST['pais']);
			$email = $this->_validador->_clean($_POST['email']);
			$telefonofijo = $this->_validador->_clean($_POST['telefonofijo']);
			$telefonomovil = $this->_validador->_clean($_POST['telefonomovil']);
			$codigoregistro = $this->_validador->_clean($_POST['codigoregistro']);
			$programa = $this->_validador->_clean($_POST['programa']);
			$rol = $this->_validador->_clean($_POST['rol']);
			
			$errores = $this->_validador->ValidarFormularioDeRegistro($tipodoc, $identificacion, $nombres, 
	$apellidos, $genero, $usuario, $pass1, $pass2, $fecha, $direccion, $municipio, 
	$departamento, $pais, $email, $telefonofijo, $telefonomovil, $codigoregistro, 
	$programa, $rol);
			
			$tot = count($errores);
			
			echo "Se encontraron " . $tot . " errores.";
		}
	}
}