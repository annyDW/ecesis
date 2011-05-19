/**
 * @author kamilo
 */
var events = function(){
	this.datos = [];
	
	this.cargarDatos = function(){
		$.getJSON('ajax/test.json',
		 function(data){
		 	var opcionesarea = [];
			var opcionesasignatura = [];
			$.each(data.test.area, function(key, val){
				opcionesarea.push('<option id="'+ key + '">' + val.nombre + '</option>');
			});
			$('<select/>', {
    			'name': 'area',
				'id':'area',
				'class': 'sel',
    			html: opcionesarea.join('')
  			}).appendTo('li#selarea');
			
			$.each(data.test.area[0].asignatura, function(key, val){
				opcionesasignatura.push('<option id="'+ key + '">' + val.nombre + '</option>');
			});
			$('<select/>', {
    			'name': 'asignatura',
				'id':'asignatura',
				'class': 'sel',
    			html: opcionesasignatura.join('')
  			}).appendTo('li#selasignatura');
			
			$('#createstform select#area').change(function(){
				var textselected = $('#createstform select#area').val();
				var opcionesasignatura = [];
				$.each(data.test.area, function(key, val){
					if(val.nombre == textselected){
						$.each(val.asignatura, function(key, value){
							opcionesasignatura.push('<option id="'+ key + '">' + value.nombre + '</option>');
						});			
					}
			});
			$('select#asignatura').remove();
			$('<select/>', {
    			'name': 'asignatura',
				'id':'asignatura',
				'class': 'sel',
    			html: opcionesasignatura.join('')
  			}).appendTo('li#selasignatura');
			$('#createstform select').selectmenu();
			});
		});
	}
	
	this.cargarEstiloSelect = function(){
		$('a[href=#dialog]').click(function(){
			$('#createstform select').selectmenu();
		});
	}
	
	this.readyForm = function(){
		this.cargarDatos();
		this.cargarEstiloSelect();
	}
}

$(document).ready(function(){
	var creartestform = new events();
	creartestform.readyForm();
});
