/**
 * @author kamilo
 */

 var cronevt = function(){
 	
	this.setevent = function(){
		$('div#calendar table#cal td[name=day]').click(function(){
			alert("hola");
		});
	}
 	
	this.cargarDatosCron = function(){
		$.getJSON('../ajax/cron.json',
		 function(data){
			var eventos = [];
			$.each(data.cronograma.simulacro, function(key, val){
				eventos.push('<li><p><span class="hora">'+val.horainicio+'</span> <a href="simulacro.phtml?s='+val.id+'">'+val.nombre+'</a></p></li>');
			});
			$('div#calendar table#cal td[name=day]').click(function(){
			$('ul#evt').remove();
			$('<ul/>', {
    			'id': 'evt',
    			html: eventos.join('')
  			}).appendTo('div#eventos');
			});
		});
	}
	
 }
 
 $(document).ready(function(){
 	var calendario = new calendar_navigation();
	calendario.crear();
 	var cron = new cronevt();
	cron.cargarDatosCron();
 });
