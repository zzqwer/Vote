<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<base href="/Corporation/">
<meta charset="utf-8">
<title>青年志愿者协会</title>
<link href="css/qingxie.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>

</head>
<body>
<script type="text/javascript">
function getactive(){
	$("#clubrightshow").html('${ifm.title}'+'<a href="page/a.jsp" id="baoming">我要报名</a>')
}
</script>
<div class="top"> 	
      <img class="logopic" src="images/logopic.png" width="100%" height="100%"/>
</div>
<div class="menu">
  <ul id="MenuBar">
    <li><a href="#">协会首页</a></li>
    <li><a href="#">协会概况</a></li>
    <li><a href="#">协会架构</a></li>
    <li><a href="#">近期活动</a></li>
    <li><a href="#">文档专区</a></li>
    <li><a href="#">媒体报道</a></li>
    <li><a href="#">协会名人</a></li>
    <li><a href="#">赞助合作</a></li>
    <li><a href="#">联系我们</a></li>
  </ul>
</div>
	<div class="left">
        <ul class="association">
            <li><span id="introduce"><img src="images/introduceimage.png" class="left_logo" />协会介绍</span></li>
            <li><span><img src="images/introduceimage.png" class="left_logo"/>名&nbsp;人&nbsp;堂</span></li>
            <li><span><img src="images/introduceimage.png" class="left_logo"/>协会相册</span></li>
            <li><span><img src="images/introduceimage.png" class="left_logo"/>协会部门</span></li>
            <li><span><img src="images/introduceimage.png" class="left_logo"/>协会荣誉</span></li>
            <li><span><img src="images/introduceimage.png" class="left_logo"/>协会文档</span></li>
            <li><span id="actives" onclick="getactive()"><img src="images/introduceimage.png" class="left_logo"/>活动报名</span></li>
        </ul>
    </div>
    <div class="right">
   	  <div class="clubrightshow" id="clubrightshow">
        	
        </div>
    </div>
    
<div class="footer">
        <div class="footer1">
            <p>帝国联盟 &copy; STLM.NET, 2016. <img src="images/QQ20160823212400.png" alt="STLM"/> 支持原创 翻版必究</p>
        </div>
        <div class="footer2">
          <p>主办单位：湖南工学院、湖南工学院青年志愿者协会 </p>
          <p>协办及技术平台支持：中青在线、中青华云、国家志愿者公益服务支撑平台</p>
    	</div>
</div>

<script src="js/leftmenu.js" type="text/javascript"></script>
</body>
</html>

