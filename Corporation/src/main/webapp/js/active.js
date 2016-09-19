
$.get("infomation/addaname",function(data){
	var Aname="";
	for(var i=0;i<data.length;i++){
		eval(data);
		Aname+='<option value="'+data[i].aname+'">'+data[i].aname+'</option>';
	}
	$(".aname").append(Aname);
},"json");

function showactiver(){
	var aname=$(".aname").val();
	$.post("infomation/showactiver",{aname:aname},function(data){
		var activer="";
		for(var i=0;i<data.length;i++){	
			alert(i);
			if(i<data.length-1){
				activer+='<a id="2">'+data[i].bname+',</a>';
			}else{
				activer+='<a id="1">'+data[i].bname+'</a>';
			}
		}
		$("#activer").html(activer);
	},"json")
}