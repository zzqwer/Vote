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
}