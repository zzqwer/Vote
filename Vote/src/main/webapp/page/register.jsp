<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html >
<html >
<head>
<base href="/Vote/">
<meta charset="utf-8" />
<title>注   册</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<body>
<div id="header" class="wrap">
	<img src="images/logo.gif" />
</div>
<div id="navbar" class="wrap">
	<div class="search">
	
	</div>
</div>
<div id="register" class="box">
	<h2>新用户注册</h2>
	<div class="content">
	   <f:form method="post" action="user/register" modelAttribute="user" >
			<dl>
				<dt>用户名：</dt>
				<dd><f:input path="vuUsername" type="text" class="input-text" name="vuUsername" required="required" placeholder="清输入用户名"/></dd>
				<f:errors path="vuUsername" cssClass="error"></f:errors>
				<dt>密码：</dt>
				<dd><f:input   path="vuPassword" type="password" class="input-text" name="vuPassword" required="required" /></dd>
				<f:errors path="vuPassword" cssClass="error"></f:errors>
				<dt>确认密码：</dt>
				<dd><f:input   path="confirmvuPassword" type="password" class="input-text" name="confirmvuPassword" required="required"/></dd>
	            <f:errors path="confirmvuPassword" cssClass="error"></f:errors>
	            <dt>电子邮箱</dt>
	            <dd><f:input path="vuEamil" type="email" class="input-text" name="vuEamil" required="required"/></dd>
				<dt> </dt>
				<dd><input type="submit" class="input-button" name="submit" value="" /></dd>
			</dl>
		</f:form>
		
		<div class="error">${regErrorMsg}</div>
	</div>
</div>
<div id="footer" class="wrap">
	源辰信息 &copy; 版权所有
</div>
</body>
</html>
