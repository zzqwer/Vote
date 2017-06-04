<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%  
        String path = request.getContextPath();  
        String basePath = request.getScheme() + "://"  
                + request.getServerName() + ":" + request.getServerPort()  
                + path + "/";  
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户上传图片页面</title>
<base href="<%=basePath%>">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<style type="text/css">
	#preview {
	width: 150px;
	height: 150px;
	border: 1px solid #000;
	overflow: hidden;
}
</style>
<script type="text/javascript">
  	//图片上传预览    IE是用了滤镜。
 	function previewImage(file) {
 		var MAXWIDTH = 260;
 		var MAXHEIGHT = 180;
 		var div = document.getElementById('preview');
 		if (file.files && file.files[0]) {
 			div.innerHTML = '<img id=imghead>';
 			var img = document.getElementById('imghead');
 			var reader = new FileReader();
 			reader.onload = function(evt) {
 				img.src = evt.target.result;
 			}
 			reader.readAsDataURL(file.files[0]);
 		}
 	} 

</script>
</head>

<body>
	<h3>用户注册</h3>
		用户名：<input type="text" id="username" name="username" /><br> <br>
		密码：<input type="password" id="password" name="password" /><br />
		<br /> 性别： <select name="sex">
			<option id="sex">男</option>
			<option id="sex">女</option>
		</select><br> 年龄：<input type="text" id="age" name="age" /><br> <br>
		籍贯： <select id="home" name="home">
			<option id="home">选择城市</option>
			<option id="home">北京市</option>
			<option id="home">天津市</option>
			<option id="home">河北省</option>
			<option id="home">山西省</option>
			<option id="home">内蒙古自治区</option>
			<option id="home">辽宁省</option>
			<option id="home">吉林省</option>
			<option id="home">黑龙江省</option>
			<option id="home">上海市</option>
			<option id="home">江苏省</option>
			<option id="home">浙江省</option>
			<option id="home">安徽省</option>
			<option id="home">福建省</option>
			<option id="home">江西省</option>
			<option id="home">山东省</option>
			<option id="home">湖南省</option>
			<option id="home">湖北省</option>
			<option id="home">河南省</option>
			<option id="home">广东省</option>
			<option id="home">广西壮族自治区</option>
			<option id="home">海南省</option>
			<option id="home">重庆市</option>
			<option id="home">四川省</option>
			<option id="home">贵州省</option>
			<option id="home">云南省</option>
			<option id="home">西藏自治区</option>
			<option id="home">陕西省</option>
			<option id="home">甘肃省</option>
			<option id="home">青海省</option>
			<option id="home">宁夏回族自治区</option>
			<option id="home">新疆维吾尔自治区</option>
			<option id="home">香港特别行政区</option>
			<option id="home">澳门特别行政区</option>
			<option id="home">台湾省</option>
			<option id="home">其他</option>
		</select><br> <br> 班级： <select id="userclass"  name="userclass">
			<option id="userclass">选择班级</option>
			<option id="userclass">计科1301班</option>
			<option id="userclass">计科1302班</option>
			<option id="userclass">计科1303班</option>
			<option id="userclass">网络1301班</option>
			<option id="userclass">网络1302班</option>
			<option id="userclass">网络1303班</option>
			<option id="userclass">信本1301班</option>
			<option id="userclass">信本1302班</option>
			<option id="userclass">软件1301班</option>
			<option id="userclass">软件1302班</option>
			<option id="userclass">软件1303班</option>
			<option id="userclass">物联网1301班</option>
			<option id="userclass">计科1401班</option>
			<option id="userclass">计科1402班</option>
			<option id="userclass">计科1403班</option>
			<option id="userclass">网络1401班</option>
			<option id="userclass">网络1402班</option>
			<option id="userclass">网络1403班</option>
			<option id="userclass">信本1401班</option>
			<option id="userclass">信本1402班</option>
			<option id="userclass">软件1401班</option>
			<option id="userclass">软件1402班</option>
			<option id="userclass">软件1403班</option>
			<option id="userclass">物联网1401班</option>
			<option id="userclass">计科1501班</option>
			<option id="userclass">计科1502班</option>
			<option id="userclass">计科1503班</option>
			<option id="userclass">网络1501班</option>
			<option id="userclass">网络1502班</option>
			<option id="userclass">网络1503班</option>
			<option id="userclass">信本1501班</option>
			<option id="userclass">信本1502班</option>
			<option id="userclass">软件1501班</option>
			<option id="userclass">软件1502班</option>
			<option id="userclass">软件1503班</option>
			<option id="userclass">物联网1501班</option>
			<option id="userclass">物联网1502班</option>
			<option id="userclass">计科1601班</option>
			<option id="userclass">计科1602班</option>
			<option id="userclass">计科1603班</option>
			<option id="userclass">网络1601班</option>
			<option id="userclass">网络1602班</option>
			<option id="userclass">网络1603班</option>
			<option id="userclass">信本1601班</option>
			<option id="userclass">信本1602班</option>
			<option id="userclass">软件1601班</option>
			<option id="userclass">软件1602班</option>
			<option id="userclass">软件1603班</option>
			<option id="userclass">物联网1601班</option>
			<option id="userclass">物联网1602班</option>

		</select><br> <br> 
		邮箱：<input type="email" id="email" name="email" /><br>
		<br> 
		联系方式：<input type="text" id="phone" name="phone" /><br>
		<br>

		<form action="user/imgUpload" method="post" style="float: left; padding-left: 20px"enctype="multipart/form-data" target="id_iframe">
				<iframe id="id_iframe" name="id_iframe" style="display: none;"></iframe>
				<label>用户头像：</label><input type="file" id="add_pic" name="logo" onchange="previewImage(this)"/>
				<input type="submit" value="上 传头像" onclick="upload()"/><br><br> 
				<div id="preview">
					<img id="imghead" width=100% height=100% border=0
							src='<%=request.getContextPath()%>' />
				</div>
				<input type="submit" value="注册账号" onclick="add_user()"/>
		</form><br>

		
	


	<script type="text/javascript">
		function upload(){
			alert("头像上传成功");		
		}
		function add_user() {
			
			var username=$.trim( $("#username").val() );
			var password=$.trim( $("#password").val() );
			var email=$.trim( $("#email").val() );
			var sex=$.trim( $("#sex").val() );
			var age=$.trim( $("#age").val() );
			var userclass=$.trim( $("#userclass").val() );
			var home=$.trim( $("#home").val() );
			var phone=$.trim( $("#phone").val() );
			var pic=$.trim( $("#add_pic").val() );
			$.ajaxFileUpload({		
				url : "user/register",
				secureuri : false,
				dataType : "json",
				data:{username:username,password:password,email:email,sex:sex,age:age,userclass:userclass,home:home,phone:phone,pic:pic},
				success : function(data, status) {
					if (data) {
						alert("注冊成功","点击确定返回登录界面");
						location.href = "page/login.jsp";
					} else {
						alert("注冊成功","点击确定返回登录界面");
						location.href = "page/register.jsp";
					}
				}
			});
		
			
		}
	</script>


	<script type="text/javascript">
		function uploadpicsqqq() {
			
			$.ajaxFileUpload({
				url : "user/uploadpics",
				secureuri : false,
				dataType : "json",
				success : function(data, status) {
					if (data) {
						alert("头像上传成功");
						location.href = "page/login.jsp";
					} else {
						alert("头像上传失败");
					}
				}
			});

			$.ajaxFileUpload({
				url : "user/uploadpics" ,
				secureuri : false,
				dataType : "json",
				success : function(data, status) {
					if (data) {
						alert("头像上传成功");
						location.href = "page/login.jsp";
					} else {
						alert("头像上传失败");
					}
				}
			})
		}
	</script>