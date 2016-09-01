$.get("infomation/activeannounced", function(data) {
	var listStr = "";
	for (var i = 0; i < data.length; i++) {
		listStr += '<li><a href="infomation/viewactive?infoid='+data[i].infoid+'">' + data[i].title + '</a></li>';
	}
	$("#active").append(listStr);
}, "json");


$.get("infomation/webnotice", function(data) {
	var listStr = "";
	var noticedate="";
	for (var i = 0; i < data.length; i++) {
		listStr += '<li><a href="infomation/viewactive?infoid='+data[i].infoid+'">' + data[i].title + '</a></li>';
		noticedate+='<li>'+data[i].infodate+'</li>'
	}
	$("#webnotice").html(listStr);
	$("#noticedate").html(noticedate);

}, "json");

$.get("infomation/dongtai", function(data) {
	var listStr = "";
	for (var i = 0; i < data.length; i++) {
		listStr += '<li><a href="infomation/viewactive?infoid='+data[i].infoid+'">' + data[i].title + '</a></li>';
	}
	$("#dongtai").append(listStr);
}, "json");


$.get("infomation/glory", function(data) {
	var listStr = "";
	for (var i = 0; i < data.length; i++) {
		listStr += '<li><a href="infomation/viewactive?infoid='+data[i].infoid+'">' + data[i].title + '</a></li>';
	}
	$("#glory").append(listStr);
}, "json");

$.get("infomation/discuss", function(data) {
	var listStr = "";
	for (var i = 0; i < data.length; i++) {
		listStr += '<li><a href="infomation/viewactive?infoid='+data[i].infoid+'">' + data[i].title + '</a></li>';
	}
	$("#discuss").append(listStr);
}, "json");

$.get("infomation/boutique", function(data) {
	var listStr = "";
	for (var i = 0; i < data.length; i++) {
		listStr += '<li><a href="infomation/viewactive?infoid='+data[i].infoid+'">' + data[i].title + '</a></li>';
	}
	$("#boutique").append(listStr);
}, "json");
