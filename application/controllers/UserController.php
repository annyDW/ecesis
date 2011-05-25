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
			
			if($tot<=0){
				$this->_instancia->connect();
				
    			$sql1 = "select gr.idgrupo, gr.idrol, gr.estado, gr.codigoregistro from grupo as gr where gr.codigoregistro='$codigoregistro'";
    			$resultCodigo = $this->_instancia->execute($sql1);
    			$codigoValido = false;
    			$idgrupo = 0;
    			$rolGrupo = 0;
    			
    			if($this->_instancia->countRows($resultCodigo)==1) {
    				while ($fil = $this->_instancia->retornarFila($resultCodigo)){
    					if((($fil['codigoregistro'])==$codigoregistro)&&$fil['estado']=="activo"){
    						$idgrupo = $fil['idgrupo'];
    						$rolGrupo = $fil['idrol'];
    						if($rol==$rolGrupo){
    							$codigoValido = true;
    						}
    					}
    				}
    			}
    			
    			if($codigoValido){
    				$sql2 = "insert INTO usuario(numeroid, idprog, tipoid, nombres, apellidos,direccion, municipio, departamento, pais, telefono, movil,sexo, fechanacimiento, email, usuario, clave)
    						VALUES ($identificacion, $programa, '$tipodoc', '$nombres', '$apellidos',  '$direccion', '$municipio', '$departamento', '$pais', '$telefonofijo', '$telefonomovil', '$genero', '$fecha', '$email', '$usuario', '$pass1')";
    				
    				$this->_instancia->execute($sql2);
    				
    				$sql3 = "select u.iduser from usuario as u where u.numeroid='$identificacion';";
    				
    				$resultiduser = $this->_instancia->execute($sql3);
    				$iduser = 0;
    				
    				if($this->_instancia->countRows($resultiduser)==1) {
    					while ($val = $this->_instancia->retornarFila($resultiduser)){
    						$iduser = $val['iduser'];
    						
    						$sql4 = "insert INTO usuariogrupo(idgrupo, iduser)
    								 VALUES ($idgrupo, $iduser)";
    						
    						$this->_instancia->execute($sql4);
    						
    						echo "<h1>Registrado</h1>";
    					}
    				}
    			}
    			else{
    				echo "Codigo invalido";
    			}
			}
		}
	}
}