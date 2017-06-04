<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<base href="/Corporation/">
<meta charset="utf-8">
<title>用户登录</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
<link rel="stylesheet" href="back/css/login.css">
<script src="back/js/jquery-1.9.1.js"></script>
<script src="back/js/bootstrap.min.js"></script>

<script>
	$(function(){ 
		$(".container").css("position","fixed").css("top",($(window).height()-$(".container").height())/2)
		.css("left",($(window).width()-$(".container").width())/2);
		$('.close-button').click(function(){
			$(this).parent().removeClass("slidePageInFromLeft").addClass("slidePageBackLeft");
		});
		$(window).resize(function(){
			$(".container").css("position","fixed").css("top",($(window).height()-$(".container").height())/2)
			.css("left",($(window).width()-$(".container").width())/2);
		});
	});
	function adminLogin(){
		if($("#aname").val().trim()=="" || $("#apwd").val()==""){
			alert("用户名或密码不能为空！");
		}else{
			debugger;
			$.post("admin/login",{"aname":$("#aname").val().trim(),"apwd":$("#apwd").val()},function(data){
				if(data==0){
					alert("用户名或密码错误！");
					init();
				}else if(data==-1){
					alert("该用户正在使用中！");
					init();
				}else{
					location.href="manager/main.jsp";
				}
			},"json");
		}
	}
</script>
</head>
<body>
	<div class="container">
		<div class="row">
            <div class="col-md-5 col-md-offset-3">
            	<div class="panel">
                	<div class="panel-heading login-top">&nbsp;管理员登录</div>
                    <div class="panel-body">
                    	<form class="form-group col-lg-10 col-md-offset-1" action="admin/login" method="post" role="form">
                            <div class="input-group">
                            	<label for="name" class="input-group-addon">用户名</label>
                                <input type="text" class="form-control" name="aname" id="name" required placeholder="请输入用户名"/>
                            </div>
                            
                            <div class="input-group">
                            	<label for="pwd" class="input-group-addon">密&nbsp;&nbsp;&nbsp;码</label>
                                <input type="password" class="form-control"  id="pwd" required  placeholder="请输入密码"/>
                            </div>
                            <div class="input-group">
                            	<input type="submit" value="登陆" class="btn btn-success mybtn" onclick="adminLogin()"/>
                                <input type="reset" value="重置" class="btn btn-warning mybtn"/>
                            </div>
                            <br/>
                		</form>
                    </div>
                    <div>${errorMsg}</div>
                    <div class="panel-footer login-footer">帝国开发 &copy; 版权所有</div>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
	</div>
</body>
</html>
