
/**
 * @author kamilo
 */

var redireccion = function(){
	this.tablaredireccion = new Array();
	this.u = new usuario();
	
	this.llenarredirect = function(){
		this.tablaredireccion['preparador'] = 'menupreparador.html';
		this.tablaredireccion['estudiante'] = 'menuestudiante.html';
		this.tablaredireccion['docente'] = 'menudocente.html';
		this.tablaredireccion['administrador'] = 'menuadministrador.html';
	}
	
	this.getRedireccion = function(rol){
		this.llenarredirect();
		return this.tablaredireccion[rol];
	}
	
	this.redireccionar = function(){
		window.location = this.getRedireccion(this.u.rol(this.u.user));
	}
	
	this.validarLogin = function(){
		$('.error').remove();
		if(this.u.pwdcorrecto()){
			this.redireccionar();
		}
		else{
			if (!this.u.existeusuario(this.u.user)) {
				$('#msgerr').after('<p class="error">Usuario no existe</p>');
			}
			else {
				$('#msgerr').after('<li><p class="error">Contrase&ntilde;a incorrecta</p></li>');
			}
		}
	}

}


function validar(){
	var r = new redireccion();
	r.validarLogin();
}

function logout(){
	window.location ="index.html";
}

function limpiarcampo(id){
	var campo = document.getElementById(id);
	campo.value = '';
}

function verificarcampo(id,val){
	var campo = document.getElementById(id);
	if(campo.value == "")
		campo.value = val;
}

