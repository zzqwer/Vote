<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
function myselect(){ 
	//selectedIndex == 0 表示选了：用户部门 
	if(document.forms[form1].select[0].selectedIndex == 0){ 
	document.getElementById('sel').style.display = ""; 
	document.getElementById('in').style.display = "none"; 
	return; 
	} 
	//selectedIndex == 0 表示选了：用户姓名 
	if(document.forms[form1].select[0].selectedIndex == 1){ 
	document.getElementById('in').style.display = ""; 
	document.getElementById('sel').style.display = "none"; 
	return; 
	} 
}
</script> 
<div id="sel" style="display: none"> 
<select name="select2"> 
<option value="1" selected>采购部</option> 
<option value="2">生产部</option> 
<option value="3">库存部</option> 
</select> 
</div> 

<div id="in" style="display: none"> 
<input type="text" name="userInfo" class="logininput" id="name" size="25"> 
</div> 

<select name="select" onchange="myselect()"> 
<option value="department" selected>用户部门</option> 
<option value="userName">用户姓名</option> 
</select> 



</body>
</html>