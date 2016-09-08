//登录
function login(){
	 var username=$('#username').val();
     var password=$('#password').val();
     if(username==""){
    	 alert("账号不能为空");  
     }
     if(password==""&&username!=""){
    		 alert("请输入密码");
     }
     $.post("user/login",{username:username,password:password},function(data){
    	 if(data){
    		 location.href="page/login.jsp"
    	 }else{
    		 alert("账号或密码错误");
    	 }
     },"json");
}
//发送邮件
 
 
 function showzc(){
	 alert("zc:");
	 $("#re").style.display="block";
 }
 //退出
function exit(){
	 $.get("user/exit",function(data){
		 window.location.href="page/login.jsp"
	 },"json")
}
