/**
 * @author kamilo
 */


var calendar_navigation = function(){
	this.myCal = new CALENDAR();
	
	this.crear = function(){
		$('#p1').after(this.myCal.create());
	}
	
	this.next = function(){
		$('table#cal').remove();
		var mes = this.myCal.month;
		var yr = this.myCal.year;
		if(mes == 12){
			this.myCal.month = 1
			this.myCal.year = yr+1;
		}
		else
		this.myCal.month = mes+1;
		this.crear();
	}
	
	this.last = function(){
		$('table#cal').remove();
		var mes = this.myCal.month;
		var yr = this.myCal.year;
		if (mes == 1) {
			this.myCal.month = 12
			this.myCal.year = yr-1;
		}
		else
		this.myCal.month = mes-1;
		this.crear();
	}
}

