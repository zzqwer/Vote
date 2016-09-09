function show(text){
	//alert(text);
	var tabs=$('#tt');
	if(text=="所有社团"){
		if(tabs.tabs('exists',"所有社团")){
			tabs.tabs('select',"所有社团");
		}else{
			tabs.tabs('add',{
				title:"所有社团",
				href:"back/manager/corporation.html",                        
				closable:true
			});
		}
	}
	if(text=="管理员管理"){
		alert("管理员管理");
		if(tabs.tabs('exists',"管理员管理")){
			tabs.tabs('select',"管理员管理");
		}else{
			tabs.tabs('add',{
				title:"管理员管理",
				href:"back/manager/admin.html",                        
				closable:true
			});
		}
	}
}