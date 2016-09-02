// JavaScript Document
function change(){//活动赞助JS
	var a=document.getElementsByClassName("change")[0].value;
	if(a=="现金或网上转账"){
		document.getElementById("change").innerHTML="<label><input type='radio'  value='单选' name='RadioGroup1' id='RadioGroup1'style='margin-left:150px;'>现金</label><input type='radio'  value='单选'  name='RadioGroup1' id='RadioGroup2'>网上转账</label><br><input type='text' style='margin-left:150px;'/>圆整";
		}
	if(a=="物资"){
		document.getElementById("change").innerHTML="<span  style='margin-left:150px;'>物资包括：</span><input type='text'/>";
		}
	}



function moneyalert(){
	var d9name=document.getElementById("d9name").value;
	var d9class=document.getElementById("d9class").value;
	var d9club=document.getElementById("d9club").value;
	var d9money=document.getElementById("d9money").value;
	alert("姓名："+d9name+"\r班级："+d9class+"\r协会："+d9club+"\r缴费金额"+d9money);//弹窗提示输入信息
	//alert(d9name+d9class+d9club+d9money);
	}