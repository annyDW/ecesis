/**
 * @author kamilo
 */
var json = function(){
	this.cont = 0;
	
	this.probarevento = function(){
		$('#opciones input#next').click(function(){
			this.prueba();
		});
	}
	
	this.cargarPreguntas = function(numpreguntas){
		var i = 0;
		var numsolicitudes = 0;
		$.getJSON('ajax/preguntas.json', function(data){
			var preg = [];
			var reshtml = [];
			var res = new Array(data.preguntas.pregunta.length);
			$.each(data.preguntas.pregunta, function(key, val){
				preg.push('<p>' + val.contenido + '</p>');
				res[key] = val.respuesta;
				if (key == i) {
					$('div#pregunta').remove();
					$('div#test div#respuesta ul li').remove();
					$('<div/>', {
						'id': 'pregunta',
						html: preg[i]
					}).insertAfter('div#test div#head');
				}
			});
			
			for (var j = 0; j < res[i].length; j++) {
				reshtml.push('<li><input type="radio" name="rta" value="' + res[i][j].letra + '" /><p>(' + res[i][j].letra + ') ' + res[i][j].contenido + '</p></li>');
			}
			$('<li/>', {
				html: reshtml.join('')
			}).appendTo('div#test div#respuesta ul');
			
			$('#opciones input#next').click(function(){
				reshtml = [];
				if (i < data.preguntas.pregunta.length) 
					i++;
				else 
					alert("se acabaron");	
				for (var j = 0; j < res[i].length; j++) {
					reshtml.push('<li><input type="radio" name="rta" value="' + res[i][j].letra + '" /><p>(' + res[i][j].letra + ') ' + res[i][j].contenido + '</p></li>');
				}
				$('div#pregunta').remove();
				$('div#test div#respuesta ul li').remove();
				$('<div/>', {
					'id': 'pregunta',
					html: preg[i]
				}).insertAfter('div#test div#head');
				$('<li/>', {
					html: reshtml.join('')
				}).appendTo('div#test div#respuesta ul');
			});
		});
			}
}
