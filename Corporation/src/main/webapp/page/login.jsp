<%@page import="org.apache.catalina.connector.Request"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<base href="/Corporation/">
<meta charset="utf-8">
<title>协会联盟--首页</title>
<link type="text/css" href="css/login.css" rel="stylesheet">
<link type="text/css" href="css/SpryAccordion.css" rel="stylesheet">
<link type="text/css" href="css/SpryTabbedPanels.css" rel="stylesheet">
<script type="text/javascript" src="js/jq-main.js"></script>
<script type="text/javascript" src="js/SpryAccordion.js"></script>
<script type="text/javascript" src="js/SpryTabbedPanels.js"></script>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/jquery.kxbdmarquee.js"></script>
<script type="text/javascript" src="js/infomation.js"></script>
<script type="text/javascript" src="js/login.js"></script>

<script type="text/javascript" src="js/jquery.roundabout.js"></script>
<script type="text/javascript" src="js/jquery.roundabout-shapes.js"></script>


</head>
<body>
<script type="text/javascript">
function sendemail(){
	 var xiehui=$('#xiehui').val();
	 var emailcontent=$('#emailcontent').val();
	      $.post("user/email",{xiehui:xiehui,emailcontent:emailcontent},function(data){
	    	if(data==1){
	    		alert("邮件发送成功");
	    		$('#xiehui').val("");
	    		$('#emailcontent').val("");
	    	}else{
	    		alert("邮件发送失败");
	    	} 
	     }); 
}

//退出
function exit(){
		$.get("user/exit", function(data) {
			window.location.href = "page/login.jsp"
		}, "json")
}
</script>
	<div id="notice">
		<ul style="float: left;" class="scroll-container">
			<li><a href="#">1.阿里巴巴首页导航菜单设计制作</a></li>
			<li><a href="#">2.marquee实现图片向上滚动并带停止功能</a></li>
			<li><a href="#">3.MSN男人栏目幻灯片鼠标划过显示小图列表</a></li>
			<li><a href="#">4.jquery实现鼠标划过小图变大图(可实现多张)</a></li>
			<li><a href="#">5.jquery.cycle循环带数字按钮动画设计</a></li>
			<li><a href="#">6.themeforest模板带控制按钮滑动文字设计</a></li>
			<li><a href="#">7.苹果mac栏目动画设计制作</a></li>
			<li><a href="#">8.jQuery实现很漂亮的背景切换动画设计</a></li>
		</ul>
	</div>




	<div class="top">
		<img class="logopic" src="images/logopic.png" width="100%"
			height="100%" />
	</div>

	<div class="menu">
		<ul id="MenuBar1" class="Menu">
			<li><a href="#" class="menuclass">协会首页</a></li>
			<li><a href="page/clubmain.html" class="menuclass">协会概况</a></li>
			<li><a href="#" class="menuclass">协会架构</a></li>
			<li><a href="#" class="menuclass">近期活动</a></li>
			<li><a href="#" class="menuclass">文档专区</a></li>
			<li><a href="#" class="menuclass">媒体报道</a></li>
			<li><a href="#" class="menuclass">协会名人</a></li>
			<li><a href="#" class="menuclass">赞助合作</a></li>
			<li><a href="tencent://message/?uin=839624474&Site=potisoft&Menu=yes"
				class="menuclass">联系我们</a></li>
		</ul>
	</div>

	<div class="menubottom">

		<div class="picrotate">
				<ul class="roundabout" id="myroundabout">
					<li><a href="#"><img src="images/slide1.jpg" height="280%"></a></li>
					<li><a href="#"><img src="images/slide2.jpg" height="280%"></a></li>
					<li><a href="#"><img src="images/slide3.jpg" height="280%"></a></li>
					<li><a href="#"><img src="images/slide4.jpg" height="280%"></a></li>
					<li><a href="#"><img src="images/slide5.jpg" height="280%"></a></li>
					<li><a href="#"><img src="images/slide6.jpg" height="280%"></a></li>
					<li><a href="#"><img src="images/slide7.jpg" height="280%"></a></li>
					<li><a href="#"><img src="images/slide8.jpg" height="280%"></a></li>
					<li><a href="#"><img src="images/slide9.jpg" height="280%"></a></li>
					<li><a href="#"><img src="images/slide10.jpg"
							height="280%"></a></li>
					<li><a href="#"><img src="images/slide1.jpg" height="280%"></a></li>
					<li><a href="#"><img src="images/slide2.jpg" height="280%"></a></li>
					<li><a href="#"><img src="images/slide3.jpg" height="280%"></a></li>
					<li><a href="#"><img src="images/slide4.jpg" height="280%"></a></li>
					<li><a href="#"><img src="images/slide5.jpg" height="280%"></a></li>
					<li><a href="#"><img src="images/slide6.jpg" height="280%"></a></li>
					<li><a href="#"><img src="images/slide7.jpg" height="280%"></a></li>
					<li><a href="#"><img src="images/slide8.jpg" height="280%"></a></li>
					<li><a href="#"><img src="images/slide9.jpg" height="280%"></a></li>
					<li><a href="#"><img src="images/slide10.jpg"
							height="280%"></a></li>
				</ul>
			</div>

			<div>
			<!--
				<form id="search_form" method="post" action="#">
					<input type="text" id="s" value="Search" class="swap_value" /> <input
						type="image"
						src="http://files.jb51.net/demoimg/200912/btn_search_box.gif"
						width="27" height="24" id="go" alt="Search" title="Search" />
				</form>
			  -->
			</div>

			<div class="login" id="login">
			<br><br>
				<c:if test="${user.username != null }">你好,${user.username}
				<br>
				<img src="../../${user.pic}" style="border-radius:50%"/><br><br>
				<input type="button" value="退出" onclick="exit()"/>
				
				</c:if>
				<c:if test="${user.username == null }">
					<form method="post" id="loginfrom" action="">

						<h2>登录</h2>
						<p>
							&nbsp;&nbsp;用户名:&nbsp;&nbsp;&nbsp;&nbsp; <input class="loginform"
								type="text" name="username" id="username">
						</p>
						<p>
							&nbsp;&nbsp;密&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;&nbsp;&nbsp; <input
								class="loginform" type="password" name="password" id="password">
						</p>
						<button id="btnOK" type="button" onclick="login()">登录</button>
						<input id="btnRE" type="reset" value="重置">
						<p id="hre">
							<a href="page/register.jsp"> 免费注册</a><a href="#"> 忘记密码</a>
						</p>

					</form>
				</c:if>
			</div>
			
		</div>
		<div class="content">
			<div class="welcome">
				<div class="neartop">
					<b>快捷通道</b>
				</div>
				<div class="fastshow">
					<ul>
						<li><div class="fastshowdiv">
								<a href="#">查询成绩</a>
							</div></li>
						<li><div class="fastshowdiv">
								<a href="#">缴纳会费</a>
							</div></li>
						<li><div class="fastshowdiv">
								<a href="#">会长专区</a>
							</div></li>
						<li><div class="fastshowdiv">
								<a href="#">协会留言</a>
							</div></li>
						<li><div class="fastshowdiv">
								<a href="#">社团荣誉</a>
							</div></li>
						<li><div class="fastshowdiv">
								<a href="#">赞助交流</a>
							</div></li>
						<li><div class="fastshowdiv">
								<a href="#">文档视频</a>
							</div></li>
						<li><div class="fastshowdiv">
								<a href="#">活动报名</a>
							</div></li>
						<li><div class="fastshowdiv">
								<a href="#">湖工官网</a>
							</div></li>
					</ul>
				</div>
				<div class="neartop">
					<b>活动预告</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
						id="moreact" href="#">更多>></a>
				</div>
				<div id="nearact" class="prevue">
					<ul id="active">

					</ul>
				</div>
			</div>
			<div class="news">
				<div class="newstop">
					<b>网站公告</b><a id="morenews" href="#">更多>></a>
				</div>
				<div class="newsshow">
					<div class="newsshowleft">
						<ul id="webnotice">
						</ul>
					</div>
					<div class="newsshowright">
						<ul id="noticedate">
						</ul>
					</div>
				</div>
				<div id="TabbedPanels1" class="TabbedPanels">
					<ul class="TabbedPanelsTabGroup">
						<li class="TabbedPanelsTab" tabindex="0">社团动态</li>
						<li class="TabbedPanelsTab" tabindex="0">社团荣誉</li>
						<li class="TabbedPanelsTab" tabindex="0">对外交流</li>
						<li class="TabbedPanelsTab" tabindex="0">精品活动</li>
					</ul>
					<div class="TabbedPanelsContentGroup">
						<div class="TabbedPanelsContent">
							<ul id="dongtai">

							</ul>
						</div>
						<div class="TabbedPanelsContent">
							<ul id="glory">

							</ul>
						</div>
						<div class="TabbedPanelsContent">
							<ul id="discuss">

							</ul>
						</div>
						<div class="TabbedPanelsContent">
							<ul id="boutique">

							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="about">
				<div id="Accordion1" class="Accordion" tabindex="0">
					<div class="AccordionPanel">
						<div class="AccordionPanelTab">时事焦点</div>
						<div class="AccordionPanelContent">
							<ul>
								<li><a href="#">青年志愿者协会举办招新宣传</a></li>
								<li><a href="#">计算机协会举办招新宣传</a></li>
								<li><a href="#">职业发展与创业就业协会举办招新宣传</a></li>
								<li><a href="#">文艺爱好者协会举办招新宣传</a></li>
								<li><a href="#">书画协会举办招新宣传</a></li>
								<li><a href="#">英语协会举办招新宣传</a></li>
								<li><a href="#">体育爱好者协会举办招新宣传</a></li>
							</ul>
						</div>
					</div>
					<div class="AccordionPanel">
						<div class="AccordionPanelTab" id="blink">校园新闻</div>
						<div class="AccordionPanelContent">
							<ul>
								<li><a href="#">青年志愿者协会举办招新宣传</a></li>
								<li><a href="#">计算机协会举办招新宣传</a></li>
								<li><a href="#">职业发展与创业就业协会举办招新宣传</a></li>
								<li><a href="#">文艺爱好者协会举办招新宣传</a></li>
								<li><a href="#">书画协会举办招新宣传</a></li>
								<li><a href="#">英语协会举办招新宣传</a></li>
								<li><a href="#">体育爱好者协会举办招新宣传</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="chattop">
					<b>联系我们</b>
				</div>
				<div class="chat">
					<div class="chatleft">
						<ul>
							<li><img src="images/chat5.png" width="20px" height="20px" /><a
								href="tencent://message/?uin=840191596&Site=potisoft&Menu=yes">计信学院团学老师</a></li>
							<li><img src="images/chat5.png" width="20px" height="20px" /><a
								href="tencent://message/?uin=1542376969&Site=potisoft&Menu=yes">青年志愿者协会</a></li>
							<li><img src="images/chat4.png" width="20px" height="20px" /><a
								href="tencent://message/?uin=635809507&Site=potisoft&Menu=yes">计算机协会</a></li>
							<li><img src="images/chat4.png" width="20px" height="20px" /><a
								href="tencent://message/?uin=543919061&Site=potisoft&Menu=yes">职业发展与创业就业协会</a></li>
						</ul>
					</div>
					<div class="chatright">
						<ul>
							<li><img src="images/chat4.png" width="20px" height="20px" /><a
								href="tencent://message/?uin=596430360&Site=potisoft&Menu=yes">文艺爱好者协会</a></li>
							<li><img src="images/chat4.png" width="20px" height="20px" /><a
								href="tencent://message/?uin=1371963209&Site=potisoft&Menu=yes">英语协会</a></li>
							<li><img src="images/chat4.png" width="20px" height="20px" /><a
								href="tencent://message/?uin=1096130987&Site=potisoft&Menu=yes">体育爱好者协会</a></li>
							<li><img src="images/chat4.png" width="20px" height="20px" /><a
								href="tencent://message/?uin=396411601&Site=potisoft&Menu=yes">书画协会</a></li>
						</ul>
					</div>
				</div>
				<div class="chattop">
					<b>会长信箱</b>
				</div>
				<form action="" method="post">
				<div class="mail">
					<div class="mailleft">
						<select name="shetuan" class="option" id="xiehui">
							<option value="tips">选择社团</option>
							<option value="zz5942011@163.com">青年志愿者协会</option>
							<option value="623831277@qq.com">文艺爱好者协会</option>
							<option value="1209614483@qq.com">书画协会</option>
							<option value="18216021360@163.com">体育爱好者协会</option>
							<option value="18216021360@163.com">职业发展与创业就业协会</option>
							<option value="18216021360@163.com">计算机协会</option>
							<option value="18216021360@163.com">英语协会</option>
						</select>
						<textarea class="textarea" name="email" id="emailcontent"></textarea>
					</div>
					<div class="mailright">
						<button type="button" class="mailbtn" onclick="sendemail()">发送</button>
					</div>
				</div>
			</form>
			</div>
		</div>
		<div class="footer">
			<div class="footer1">
				<p>
					帝国联盟 &copy; STLM.NET, 2016. <img src="images/QQ20160823212400.png"
						alt="STLM" /> 支持原创 翻版必究
				</p>
			</div>
			<div class="footer2">
				<p>主办单位：湖南工学院、湖南工学院青年志愿者协会</p>
				<p>协办及技术平台支持：中青在线、中青华云、国家志愿者公益服务支撑平台</p>
			</div>
		</div>
		<script type="text/javascript">
			var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
		</script>

		<!--新闻回滚-->
		<script type="text/javascript">
			(function() {
				$("#nearact").kxbdMarquee({
					direction : "up",
					isEqual : false,
				});
			})();
		</script>


		<!--图片滚动-->
		<script type="text/javascript">
			$(document).ready(function() {
				$('#myroundabout').roundabout({
					autoplay : true,//自动播放
					autoplayDuration : 3000,//时间
					autoplayPauseOnHover : true,//自动鼠标移上停滞
					shape : 'figure8', //支持属性theJuggler、figure8、waterWheel、square、conveyorBeltLeft、conveyorBeltRight、goodbyeCruelWorld、diagonalRingLeft、diagonalRingRight、rollerCoaster、tearDrop、tickingClock、flurry、nowSlide、risingEssence随便换 
					minOpacity : 1
				});
			});
			var Accordion1 = new Spry.Widget.Accordion("Accordion1");
		</script>

		<!--字体闪烁-->
		<script language="javascript">
			function changeColor() {
				var color = "#f00|#0f0|#00f|#880|#808|#088|yellow|green|blue|gray";
				color = color.split("|");
				document.getElementById("blink").style.color = color[parseInt(Math
						.random()
						* color.length)];
				;
				document.getElementsByClassName("AccordionPanelTab")[0].style.color = color[parseInt(Math
						.random()
						* color.length)];
			};

			setInterval("changeColor()", 200);
		</script>
</body>
</html>
