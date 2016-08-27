<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<!DOCTYPE html >
<html >
<head>
<meta charset="utf-8" />
<base href="/Vote/">
<title>投票列表</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />

<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
</head>
<body>
<jsp:include page="top.jsp" />
<div id="vote" class="wrap">
	<h2>投票列表</h2>
	<ul class="list" id="subjectList">
	</ul>
</div>
<div id="footer" class="wrap">
	源辰信息 &copy; 版权所有
</div>
</body>
</html>
