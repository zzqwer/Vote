// JavaScript
		function show(myid){
			var divArray=document.getElementsByClassName("clubrightshow");
							for(var i=0;i<divArray.length;i++){
				if(divArray[i].className=="association"){
					continue;
				}
				if( divArray[i].id==myid  ){
					divArray[i].style.display="block";
				}else{
					divArray[i].style.display="none";
				}
			}
		}
