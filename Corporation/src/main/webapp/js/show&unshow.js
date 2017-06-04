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
		function data(){
			debugger;
			var cintroduce = "";
			$.get("corporation/findQingXie", function(data) {
				showCintroduce='<h2 style="text-align:center; margin-top:20px; margin-bottom:20px;padding-right:30px;">协会简介</h2>'+'<p>'+data.cintroduce+'</p>';
				console.log(data);
				console.log(data.cintroduce);
				$('#cintroduce').html(showCintroduce);
			}, "json");
		}