
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
		
				activer+='<li><img src="../../'+data[i].pic+'" style="width:50%;height:50%;border-radius:10%"/><p style="font-size:10px">'+data[i].userclass+'</p><p style="font-size:10px">'+data[i].username+'</p></li>';

				//activer+='<a id="1">'+data[i].username+'</a>';
			
		}
		$("#activer").html(activer);
	},"json")
}