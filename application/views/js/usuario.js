/**
 * @author kamilo
 */

var usuario = function(){
	this.user = document.getElementById('user').value;
	this.pwd = document.getElementById('pwd').value;
	this.roles = new Array();
	this.tablapwds = new Array();
		
	this.llenarroles = function(){
		this.roles['habulahe'] = 'preparador';
		this.roles['aalmanza'] = 'docente';
		this.roles['kamilin8931'] = 'estudiante';
		this.roles['ecesisadm'] = 'administrador';
	}
	
	this.llenartablapwds = function(){
		this.tablapwds['habulahe'] = '12345';
		this.tablapwds['aalmanza'] = '12345';
		this.tablapwds['kamilin8931'] = '12345';
		this.tablapwds['ecesisadm'] = '12345';
	}
	
	this.rol = function(user){
		this.llenarroles();
		return this.roles[user];
	}
	
	this.existeusuario = function(user){
		var existe = false;
		this.llenarroles();
		for(var i in this.roles){
				if(i == user)
					existe = true;
		}
		return existe;
	}
	
	this.pwdcorrecto = function(){
		var correcto = false;
		this.llenartablapwds();
		if (this.existeusuario(this.user)) {
			if (this.tablapwds[this.user] == this.pwd) {
				correcto = true;
			}
		}
		return correcto;
	}
		
}




