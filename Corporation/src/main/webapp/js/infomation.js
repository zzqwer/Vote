$.get("infomation/activeannounced", function(data) {
	var listStr = "";
	for (var i = 0; i < data.length; i++) {
		listStr += '<li><a href="infomation/viewactive?infoid='+data[i].infoid+'">' + data[i].title + '</a></li>';
	}
	$("#active").append(listStr);
}, "json");