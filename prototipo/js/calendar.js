/*
 +-------------------------------------------------------------------+
 |                 H T M L - C A L E N D A R   (v2.15)               |
 |                                                                   |
 | Copyright Gerd Tentler                www.gerd-tentler.de/tools   |
 | Created: May 27, 2003                 Last modified: Apr. 2, 2011 |
 +-------------------------------------------------------------------+
 | This program may be used and hosted free of charge by anyone for  |
 | personal purpose as long as this copyright notice remains intact. |
 |                                                                   |
 | Obtain permission before selling the code for this program or     |
 | hosting this software on a commercial website or redistributing   |
 | this software over the Internet or in any other medium. In all    |
 | cases copyright must remain intact.                               |
 +-------------------------------------------------------------------+

 EXAMPLE #1:	myCal = new CALENDAR();
				document.write(myCal.create());

 EXAMPLE #2:	myCal = new CALENDAR(2004, 12);
				document.write(myCal.create());

 EXAMPLE #3:	myCal = new CALENDAR();
				myCal.year = 2004;
				myCal.month = 12;
				document.write(myCal.create());

 Returns HTML code
==========================================================================================================
*/
var cal_ID = 0;

function CALENDAR(year, month, week) {
//========================================================================================================
// Configuration
//========================================================================================================
	this.tFontFace = 'Arial, Helvetica';	// title: font family (CSS-spec, e.g. "Arial, Helvetica")
	this.tFontSize = 14;					// title: font size (pixels)
	this.tFontColor = '#FFFFFF';			// title: font color
	this.tBGColor = '#304B90';				// title: background color

	this.hFontFace = 'Arial, Helvetica';	// heading: font family (CSS-spec, e.g. "Arial, Helvetica")
	this.hFontSize = 12;					// heading: font size (pixels)
	this.hFontColor = '#FFFFFF';			// heading: font color
	this.hBGColor = '#304B90';				// heading: background color

	this.dFontFace = 'Arial, Helvetica';	// days: font family (CSS-spec, e.g. "Arial, Helvetica")
	this.dFontSize = 14;					// days: font size (pixels)
	this.dFontColor = '#000000';			// days: font color
	this.dBGColor = '#FFFFFF';				// days: background color

	this.wFontFace = 'Arial, Helvetica';	// weeks: font family (CSS-spec, e.g. "Arial, Helvetica")
	this.wFontSize = 12;					// weeks: font size (pixels)
	this.wFontColor = '#FFFFFF';			// weeks: font color
	this.wBGColor = '#304B90';				// weeks: background color

	this.saFontColor = '#0000D0';			// Saturdays: font color
	this.saBGColor = '#F6F6FF';				// Saturdays: background color

	this.suFontColor = '#D00000';			// Sundays: font color
	this.suBGColor = '#FFF0F0';				// Sundays: background color

	this.tdBorderColor = '#FF0000';			// today: border color

	this.borderColor = '#304B90';			// border color
	this.hilightColor = '#FFFF00';			// hilight color (works only in combination with link)

	this.link = '#';							// page to link to when day is clicked
	this.linkTarget = '';					// link target frame or window, e.g. parent.myFrame
	this.offset = 1;						// week start: 0 - 6 (0 = Saturday, 1 = Sunday, 2 = Monday ...)
	this.weekNumbers = true;				// view week numbers: true = yes, false = no

//--------------------------------------------------------------------------------------------------------
// You should change these variables only if you want to translate them into your language:
//--------------------------------------------------------------------------------------------------------
	// weekdays: must start with Saturday because January 1st of year 1 was a Saturday
	this.weekdays = ["Sa", "Do", "Lu", "Ma", "Mie", "Ju", "Vi"];

	// months: must start with January
	this.months = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];

	// error messages
	this.error = ["Year must be 1 - 3999!", "Month must be 1 - 12!"];

//--------------------------------------------------------------------------------------------------------
// Don't change from here:
//--------------------------------------------------------------------------------------------------------
	this.size = 0;
	this.mDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

	if(year == null && month == null) {
		var obj = new Date();
		year = obj.getYear();
		if(year < 1900) year += 1900;
		month = obj.getMonth() + 1;
	}
	else if(year != null && month == null) month = 1;
	this.year = year;
	this.month = month;
	this.week = week;
	this.specDays = {};
	if(this.linkTarget == '') this.linkTarget = 'document';

//========================================================================================================
// Functions
//========================================================================================================
	this.set_styles = function() {
		cal_ID++;
		var html = '<style> .cssTitle' + cal_ID + ' { ';
		if(this.tFontFace) html += 'font-family: ' + this.tFontFace + '; ';
		if(this.tFontSize) html += 'font-size: ' + this.tFontSize + 'px; ';
		if(this.tFontColor) html += 'color: ' + this.tFontColor + '; ';
		if(this.tBGColor) html += 'background-color: ' + this.tBGColor + '; ';
		html += '} .cssHeading' + cal_ID + ' { ';
		if(this.hFontFace) html += 'font-family: ' + this.hFontFace + '; ';
		if(this.hFontSize) html += 'font-size: ' + this.hFontSize + 'px; ';
		if(this.hFontColor) html += 'color: ' + this.hFontColor + '; ';
		if(this.hBGColor) html += 'background-color: ' + this.hBGColor + '; ';
		html += '} .cssDays' + cal_ID + ' { ';
		if(this.dFontFace) html += 'font-family: ' + this.dFontFace + '; ';
		if(this.dFontSize) html += 'font-size: ' + this.dFontSize + 'px; ';
		if(this.dFontColor) html += 'color: ' + this.dFontColor + '; ';
		if(this.dBGColor) html += 'background-color: ' + this.dBGColor + '; ';
		html += '} .cssWeeks' + cal_ID + ' { ';
		if(this.wFontFace) html += 'font-family: ' + this.wFontFace + '; ';
		if(this.wFontSize) html += 'font-size: ' + this.wFontSize + 'px; ';
		if(this.wFontColor) html += 'color: ' + this.wFontColor + '; ';
		if(this.wBGColor) html += 'background-color: ' + this.wBGColor + '; ';
		html += '} .cssSaturdays' + cal_ID + ' { ';
		if(this.dFontFace) html += 'font-family: ' + this.dFontFace + '; ';
		if(this.dFontSize) html += 'font-size: ' + this.dFontSize + 'px; ';
		if(this.saFontColor) html += 'color: ' + this.saFontColor + '; ';
		if(this.saBGColor) html += 'background-color: ' + this.saBGColor + '; ';
		html += '} .cssSundays' + cal_ID + ' { ';
		if(this.dFontFace) html += 'font-family: ' + this.dFontFace + '; ';
		if(this.dFontSize) html += 'font-size: ' + this.dFontSize + 'px; ';
		if(this.suFontColor) html += 'color: ' + this.suFontColor + '; ';
		if(this.suBGColor) html += 'background-color: ' + this.suBGColor + '; ';
		html += '} .cssHilight' + cal_ID + ' { ';
		if(this.dFontFace) html += 'font-family: ' + this.dFontFace + '; ';
		if(this.dFontSize) html += 'font-size: ' + this.dFontSize + 'px; ';
		if(this.dFontColor) html += 'color: ' + this.dFontColor + '; ';
		if(this.hilightColor) html += 'background-color: ' + this.hilightColor + '; ';
		html += 'cursor: default; ';
		html += '} <\/style>';

		return html;
	}

	this.leap_year = function(year) {
		return (!(year % 4) && (year < 1582 || year % 100 || !(year % 400))) ? true : false;
	}

	this.get_weekday = function(year, days) {
		var a = days;
		if(year) a += (year - 1) * 365;
		for(var i = 1; i < year; i++) if(this.leap_year(i)) a++;
		if(year > 1582 || (year == 1582 && days > 277)) a -= 10;
		if(a) a = (a - this.offset) % 7;
		else if(this.offset) a += 7 - this.offset;

		return a;
	}

	this.get_week = function(year, days) {
		var firstWDay = this.get_weekday(year, 0);
		if(year == 1582 && days > 277) days -= 10;
		
		return Math.floor((days + firstWDay) / 7) + (firstWDay <= 3);
	}

	this.table_cell = function(content, cls, date, style) {
		var size = Math.round(this.size * 1.5);
		var clsName = cls.toLowerCase();
		var html = '<td align=center width=' + size + ' class="' + cls + '"';

		if(content != '&nbsp;' && clsName.indexOf('day') != -1) {
			var link = this.link;
			var events = [];
			var bgColor = '';

			if(this.specDays[content]) {
				for(var i in this.specDays[content]) {
					if(this.specDays[content][i][0]) {
						bgColor = this.specDays[content][i][0];
					}
					if(this.specDays[content][i][1]) {
						events.push(this.specDays[content][i][1]);
					}
					if(this.specDays[content][i][2]) {
						link = this.specDays[content][i][2];
					}
				}
				html += ' title="' + events.join(' &middot; ') + '"';
				if(bgColor) style += 'background-color:' + bgColor + ';';
			}
			if(link) {
				link += (link.indexOf('?') != -1) ? '&date=' + date : '?date=' + date;
				html += ' onMouseOver="this.className=\'cssHilight' + cal_ID + '\'"';
				html += ' onMouseOut="this.className=\'' + cls + '\'"';
				html += ' name="day" onClick="' + this.linkTarget + '.location.href=\'' + link + '\'"';
			}
		}
		if(style) html += ' style="' + style + '"';
		html += '>' + content + '<\/td>';

		return html;
	}

	this.table_head = function(content) {
		var html, ind, wDay, i;
		var cols = this.weekNumbers ? 8 : 7;

		html = '<td id="aleft" onclick="calendario.last()"></td><td colspan=' + cols + ' class="cssTitle' + cal_ID + '" align=center><b>' +
				content + '<\/b><\/td><td id="aright" align="right" onclick="calendario.next()"></td><\/tr><tr>';
		for(i = 0; i < this.weekdays.length; i++) {
			ind = (i + this.offset) % 7;
			wDay = this.weekdays[ind];
			html += this.table_cell(wDay, 'cssHeading' + cal_ID);
		}
		if(this.weekNumbers) html += this.table_cell('&nbsp;', 'cssHeading' + cal_ID);
		

		return html;
	}

	this.viewEvent = function(from, to, color, title, link) {
		if(from > to) return;
		if(from < 1 || from > this.mDays[this.month-1]) return;
		if(to < 1 || to > this.mDays[this.month-1]) return;

		while(from <= to) {
			if(!this.specDays[from]) this.specDays[from] = [];
			this.specDays[from].push([color, title, link]);
			from++;
		}
	}

	this.viewEventEach = function(weekday, color, title, link) {
		if(weekday < 0 || weekday > 6) return;
		for(var i = days = 0; i < this.month - 1; i++) days += this.mDays[i];

		for(i = 0; i < this.mDays[this.month-1]; i++) {
			if(this.get_weekday(this.year, days + i) == weekday - this.offset + 1) {
				if(!this.specDays[i]) this.specDays[i] = [];
				this.specDays[i].push([color, title, link]);
			}
		}
	}

	this.create = function() {
		var obj, html, curYear, curMonth, curDay, start, stop, title, daycount,
			inThisMonth, weekNr, wdays, days, ind, cls, style, content, date, i;

		this.size = (this.hFontSize > this.dFontSize) ? this.hFontSize : this.dFontSize;
		if(this.wFontSize > this.size) this.size = this.wFontSize;

		obj = new Date();
		curYear = obj.getYear();
		if(curYear < 1900) curYear += 1900;
		curMonth = obj.getMonth() + 1;
		curDay = obj.getDate();

		if(this.year < 1 || this.year > 3999) html = '<b>' + this.error[0] + '<\/b>';
		else if(this.month < 1 || this.month > 12) html = '<b>' + this.error[1] + '<\/b>';
		else {
			this.mDays[1] = this.leap_year(this.year) ? 29 : 28;
			for(i = days = 0; i < this.month - 1; i++) days += this.mDays[i];

			start = this.get_weekday(this.year, days);
			stop = this.mDays[this.month-1];

			html = this.set_styles();
			html += '<table id="cal" border=0 cellspacing=0 cellpadding=0><tr>';
			html += '<td' + (this.borderColor ? ' bgcolor=' + this.borderColor : '') + '>';
			html += '<table border=0 cellspacing=1 cellpadding=3>';
			title = this.months[this.month-1] + ' ' + this.year;
			html += '<tr>';
			html += this.table_head(title);
			html += '<\/tr>';
			daycount = 1;

			if((this.year == curYear) && (this.month == curMonth)) inThisMonth = true;
			else inThisMonth = false;

			if(this.weekNumbers || this.week) weekNr = this.get_week(this.year, days);

			while(daycount <= stop) {
				if(this.week && this.week != weekNr) {
					daycount += 7 - (daycount == 1 ? start : 0);
					weekNr++;
					continue;
				}
				html += '<tr>';

				for(i = wdays = 0; i <= 6; i++) {
					ind = (i + this.offset) % 7;
					if(ind == 0) cls = 'cssSaturdays';
					else if(ind == 1) cls = 'cssSundays';
					else cls = 'cssDays';

					style = '';
					date = this.year + '-' + this._format(this.month) + '-' + this._format(daycount);

					if((daycount == 1 && i < start) || daycount > stop) content = '&nbsp;';
					else {
						content = daycount;
						if(inThisMonth && daycount == curDay) {
							style = 'padding:0px;border:3px solid ' + this.tdBorderColor + ';';
						}
						else if(this.year == 1582 && this.month == 10 && daycount == 4) daycount = 14;
						daycount++;
						wdays++;
					}
					html += this.table_cell(content, cls + cal_ID, date, style);
				}

				if(this.weekNumbers) {
					if(!weekNr) {
						if(this.year == 1) content = '&nbsp;';
						else if(this.year == 1583) content = 51;
						else content = this.get_week(this.year - 1, 365);
					}
					else if(this.month == 12 && weekNr >= 52 && wdays < 4) content = 1;
					else content = weekNr;

					html += this.table_cell(content, 'cssWeeks' + cal_ID);
					weekNr++;
				}
				html += '<\/tr>';
			}
			html += '<\/table><\/td><\/tr><\/table>';
		}
		return html;
	}

	this._format = function(value) {
		return (value < 10) ? '0' + value : value;
	}
}
