<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<base href="/Corporation/"/>

<meta charset="utf-8">
<title>用户注册</title>
<style type="text/css">
.re {
	margin-left: 570px;
	margin-top: 40px;
	width: 280px;
	height: 600px;
}

#register {
	padding-top: 30px;
}
</style>
</head>

<body> 
	<div class="re"  style="overflow:hidden">
		<form id="register"  method="post" action="user/register"  enctype=”multipart/form-data>
			<h3>用户注册</h3>
			用户名：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="username" /><br>
			<br> 密码：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
				type="password" name="password" /><br>
			<br>
			<tr>
				<td>性别：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><label for="radio-1">男</label><input type="radio"
					id="radio-1" name="sex" value="男" /> <label for="radio-2">女</label><input
					type="radio" id="radio-2" name="sex" value="女" /><br>
				<br></td>
			</tr>
			年龄：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
				name="age" /><br>
			<br>

			<tr>
				<td>籍贯：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><select name="home">
						<option>选择城市</option>
						<option>北京市</option>
						<option>天津市</option>
						<option>河北省</option>
						<option>山西省</option>
						<option>内蒙古自治区</option>
						<option>辽宁省</option>
						<option>吉林省</option>
						<option>黑龙江省</option>
						<option>上海市</option>
						<option>江苏省</option>
						<option>浙江省</option>
						<option>安徽省</option>
						<option>福建省</option>
						<option>江西省</option>
						<option>山东省</option>
						<option>湖南省</option>
						<option>湖北省</option>
						<option>河南省</option>
						<option>广东省</option>
						<option>广西壮族自治区</option>
						<option>海南省</option>
						<option>重庆市</option>
						<option>四川省</option>
						<option>贵州省</option>
						<option>云南省</option>
						<option>西藏自治区</option>
						<option>陕西省</option>
						<option>甘肃省</option>
						<option>青海省</option>
						<option>宁夏回族自治区</option>
						<option>新疆维吾尔自治区</option>
						<option>香港特别行政区</option>
						<option>澳门特别行政区</option>
						<option>台湾省</option>
						<option>其他</option>
				</select><br>
				<br></td>
			</tr>
			<tr>
				<td>班级：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><select name="userclass">
						<option>选择班级</option>
						<option>计科1301班</option>
						<option>计科1302班</option>
						<option>计科1303班</option>
						<option>网络1301班</option>
						<option>网络1302班</option>
						<option>网络1303班</option>
						<option>信本1301班</option>
						<option>信本1302班</option>
						<option>软件1301班</option>
						<option>软件1302班</option>
						<option>软件1303班</option>
						<option>物联网1301班</option>
						<option>计科1401班</option>
						<option>计科1402班</option>
						<option>计科1403班</option>
						<option>网络1401班</option>
						<option>网络1402班</option>
						<option>网络1403班</option>
						<option>信本1401班</option>
						<option>信本1402班</option>
						<option>软件1401班</option>
						<option>软件1402班</option>
						<option>软件1403班</option>
						<option>物联网1401班</option>
						<option>计科1501班</option>
						<option>计科1502班</option>
						<option>计科1503班</option>
						<option>网络1501班</option>
						<option>网络1502班</option>
						<option>网络1503班</option>
						<option>信本1501班</option>
						<option>信本1502班</option>
						<option>软件1501班</option>
						<option>软件1502班</option>
						<option>软件1503班</option>
						<option>物联网1501班</option>
						<option>物联网1502班</option>
						<option>计科1601班</option>
						<option>计科1602班</option>
						<option>计科1603班</option>
						<option>网络1601班</option>
						<option>网络1602班</option>
						<option>网络1603班</option>
						<option>信本1601班</option>
						<option>信本1602班</option>
						<option>软件1601班</option>
						<option>软件1602班</option>
						<option>软件1603班</option>
						<option>物联网1601班</option>
						<option>物联网1602班</option>

				</select><br>
				<br></td>
			</tr>
			邮箱：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="email"
				name="email" /><br>
			<br> 联系方式：<input type="text" name="phone" /><br>
			<br> 
		</form>

<input type="submit" value="注册" /><br><br>
</div>
</body>
</html>
