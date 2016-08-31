<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<base href="/Corporation/">
<meta charset="utf-8">
<title>协会联盟--首页</title>
<<<<<<< HEAD
<link   type="text/css" href="css/login.css" rel="stylesheet" >
<link   type="text/css"href="css/SpryAccordion.css" rel="stylesheet" >
<link   type="text/css" href="css/SpryTabbedPanels.css" rel="stylesheet">
<script type="text/javascript" src="js/SpryAccordion.js" ></script>
<script type="text/javascript" src="js/SpryTabbedPanels.js" ></script>
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
=======
<script type="text/javascript" src="js/infomation.js"></script>


<link href="css/login.css" rel="stylesheet" type="text/css">

<link href="css/SpryAccordion.css" rel="stylesheet" type="text/css">
<script src="js/SpryAccordion.js" type="text/javascript"></script>
<link href="css/SpryTabbedPanels.css" rel="stylesheet" type="text/css">
<script src="js/SpryTabbedPanels.js" type="text/javascript"></script>

<script src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/jquery.kxbdmarquee.js"></script>


<script type="text/javascript" src="js/jquery.roundabout.js"></script>
<script type="text/javascript" src="js/jquery.roundabout-shapes.js"></script>
<script type="text/javascript" src="js/jq-main.js" ></script>
<script type="text/javascript">
  function showzc(){
	  
	  
  }

</script>
<script src="js/jq-main.js" type="text/javascript"></script>

</head>
<body>
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
		<img class="logopic" src="images/logopic.png" width="100%" height="100%" />
	</div>
	<div class="menu">
		<ul id="MenuBar1" class="Menu">
		  <li><a href="#">社团首页</a></li>
		  <li><a href="#">社团概况</a></li>
		  <li><a href="#">社团架构</a></li>
		  <li><a href="#">协会详情</a></li>
		  <li><a href="#">近期活动</a></li>
		  <li><a href="#">文档专区</a></li>
		  <li><a href="#">媒体报道</a></li>
		  <li><a href="#">赞助合作</a></li>
		  <li><a href="#">联系我们</a></li>
		</ul>
	</div>
	<div class="menubottom">
   	  <div class="login">
				<h2>用户登录</h2>
				<!-- 登录之前显示 -->
				<form method="post" action="user/login" id="loginfrom" >
					<p>&nbsp;&nbsp;用户名:&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="loginform"type="text" name="username">
					</p>
					<p>&nbsp;&nbsp;密&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="loginform" type="password" name="password">
					</p>
					<button id="btnOK" type="submit">登录</button>
					<input id="btnRE" type="reset" value="重置">
					<p id="hre">
						<a href="javascript:showzc()"> 免费注册</a><a href="#"> 忘记密码</a>
					</p>
				</form>
				<!-- 登录之后显示 -->
				<div type="hidden" id="logined">
					<a href="#">${userName}</a>
				</div>
				<div class="error">${msg}</div>
			</div>
      <div class="picrotate">
                <ul class="roundabout" id="myroundabout">
                       <li><img src="images/slide1.jpg"height="280%"></li>
                        <li><img src="images/slide2.jpg"height="280%"></li>
                        <li><img src="images/slide3.jpg"height="280%"></li>
                        <li><img src="images/slide4.jpg"height="280%"></li>
                        <li><img src="images/slide5.jpg"height="280%"></li>
                        <li><img src="images/slide6.jpg"height="280%"></li>
                        <li><img src="images/slide7.jpg"height="280%"></li>
                        <li><img src="images/slide8.jpg"height="280%"></li>
                        <li><img src="images/slide9.jpg"height="280%"></li>
                        <li><img src="images/slide10.jpg" height="280%"></li>
                        <li><img src="images/slide1.jpg"height="280%"></li>
                        <li><img src="images/slide2.jpg"height="280%"></li>
                        <li><img src="images/slide3.jpg"height="280%"></li>
                        <li><img src="images/slide4.jpg"height="280%"></li>
                        <li><img src="images/slide5.jpg"height="280%"></li>
                        <li><img src="images/slide6.jpg"height="280%"></li>
                        <li><img src="images/slide7.jpg"height="280%"></li>
                        <li><img src="images/slide8.jpg"height="280%"></li>
                        <li><img src="images/slide9.jpg"height="280%"></li>
                        <li><img src="images/slide10.jpg" height="280%"></li>
                </ul>
            </div>
    </div>
<div class="content">
		<div class="welcome">
            <div class="neartop">
				<b>快捷通道</b>
			</div>
            <div class="fastshow">
            	<ul>
                	<li><div class="fastshowdiv"><a href="#">查询成绩</a></div></li>
                    <li><div class="fastshowdiv"><a href="#">缴纳会费</a></div></li>
                    <li><div class="fastshowdiv"><a href="#">会长专区</a></div></li>
                    <li><div class="fastshowdiv"><a href="#">协会留言</a></div></li>
                    <li><div class="fastshowdiv"><a href="#">社团荣誉</a></div></li>
                    <li><div class="fastshowdiv"><a href="#">赞助交流</a></div></li>
                    <li><div class="fastshowdiv"><a href="#">文档视频</a></div></li>
                    <li><div class="fastshowdiv"><a href="#">活动报名</a></div></li>
                    <li><div class="fastshowdiv"><a href="#">湖工官网</a></div></li>

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
				<div class="newsshowright">
					<ul>
						<li>2016/8/22</li>
						<li>2016/8/22</li>
						<li>2016/8/22</li>
						<li>2016/8/22</li>
						<li>2016/8/22</li>
						<li>2016/8/22</li>
						<li>2016/8/22</li>
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
						<ul>
							<li><a href="#">青年志愿者协会举办招新宣传</a></li>
							<li><a href="#">计算机协会举办招新宣传</a></li>
							<li><a href="#">职业发展与创业就业协会举办招新宣传</a></li>
							<li><a href="#">文艺爱好者协会举办招新宣传</a></li>
							<li><a href="#">书画协会举办招新宣传</a></li>
							<li><a href="#">英语协会举办招新宣传</a></li>
							<li><a href="#">体育爱好者协会举办招新宣传</a></li>
                            <li><a href="#">青年志愿者协会举办招新宣传</a></li>
							<li><a href="#">计算机协会举办招新宣传</a></li>
							<li><a href="#">职业发展与创业就业协会举办招新宣传</a></li>
							<li><a href="#">文艺爱好者协会举办招新宣传</a></li>
							<li><a href="#">书画协会举办招新宣传</a></li>
							<li><a href="#">英语协会举办招新宣传</a></li>
							<li><a href="#">体育爱好者协会举办招新宣传</a></li>
						</ul>
					</div>
					<div class="TabbedPanelsContent">
						<ul>
							<li><a href="#">青年志愿者协会举办招新宣传</a></li>
							<li><a href="#">计算机协会举办招新宣传</a></li>
							<li><a href="#">职业发展与创业就业协会举办招新宣传</a></li>
							<li><a href="#">文艺爱好者协会举办招新宣传</a></li>
							<li><a href="#">书画协会举办招新宣传</a></li>
							<li><a href="#">英语协会举办招新宣传</a></li>
							<li><a href="#">体育爱好者协会举办招新宣传</a></li>
                            <li><a href="#">青年志愿者协会举办招新宣传</a></li>
							<li><a href="#">计算机协会举办招新宣传</a></li>
							<li><a href="#">职业发展与创业就业协会举办招新宣传</a></li>
							<li><a href="#">文艺爱好者协会举办招新宣传</a></li>
							<li><a href="#">书画协会举办招新宣传</a></li>
							<li><a href="#">英语协会举办招新宣传</a></li>
							<li><a href="#">体育爱好者协会举办招新宣传</a></li>
						</ul>
					</div>
					<div class="TabbedPanelsContent">
						<ul>
							<li><a href="#">青年志愿者协会举办招新宣传</a></li>
							<li><a href="#">计算机协会举办招新宣传</a></li>
							<li><a href="#">职业发展与创业就业协会举办招新宣传</a></li>
							<li><a href="#">文艺爱好者协会举办招新宣传</a></li>
							<li><a href="#">书画协会举办招新宣传</a></li>
							<li><a href="#">英语协会举办招新宣传</a></li>
							<li><a href="#">体育爱好者协会举办招新宣传</a></li>
                            <li><a href="#">青年志愿者协会举办招新宣传</a></li>
							<li><a href="#">计算机协会举办招新宣传</a></li>
							<li><a href="#">职业发展与创业就业协会举办招新宣传</a></li>
							<li><a href="#">文艺爱好者协会举办招新宣传</a></li>
							<li><a href="#">书画协会举办招新宣传</a></li>
							<li><a href="#">英语协会举办招新宣传</a></li>
							<li><a href="#">体育爱好者协会举办招新宣传</a></li>
						</ul>
					</div>
					<div class="TabbedPanelsContent">
						<ul>
							<li><a href="#">青年志愿者协会举办招新宣传</a></li>
							<li><a href="#">计算机协会举办招新宣传</a></li>
							<li><a href="#">职业发展与创业就业协会举办招新宣传</a></li>
							<li><a href="#">文艺爱好者协会举办招新宣传</a></li>
							<li><a href="#">书画协会举办招新宣传</a></li>
							<li><a href="#">英语协会举办招新宣传</a></li>
							<li><a href="#">体育爱好者协会举办招新宣传</a></li>
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
                        <li><img src="images/chat5.png" width="20px" height="20px"/><a href="#">计信学院团学老师</a></li>
                        <li><img src="images/chat5.png" width="20px" height="20px"/><a href="#">青年志愿者协会</a></li>
                        <li><img src="images/chat4.png" width="20px" height="20px"/><a href="#">计算机协会</a></li>
                        <li><img src="images/chat4.png" width="20px" height="20px"/><a href="#">职业发展与创业就业协会</a></li>
                    </ul>
            </div>
            <div class="chatright">
                    <ul>
                        <li><img src="images/chat4.png" width="20px" height="20px"/><a href="#">文艺爱好者协会</a></li>
                        <li><img src="images/chat4.png" width="20px" height="20px"/><a href="#">英语协会</a></li>
                        <li><img src="images/chat4.png" width="20px" height="20px"/><a href="#">体育爱好者协会</a></li>
                        <li><img src="images/chat4.png" width="20px" height="20px"/><a href="#">书画协会</a></li>
                    </ul>
            </div>
          </div>
            <div class="chattop">
                <b>会长信箱</b>
            </div>
          <div class="mail">
          	<div  class="mailleft">
           	  <select name="" class="option">
                	<option>选择社团</option>
                    <option>青年志愿者协会</option>
                    <option>文艺爱好者协会</option>
                    <option>书画协会</option>
                    <option>体育爱好者协会</option>
                    <option>职业发展与创业就业协会</option>
                    <option>计算机协会</option>
                    <option>英语协会</option>
              </select>
              <textarea class="textarea"></textarea>
            </div>
            <div class="mailright">
            	<form>
            		<input type="button" value="发送" class="mailbtn"/>
            	</form>
            </div>
            
          </div>
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

    
    
    
    
    
<script type="text/javascript">
		var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
	</script>
    
<!--新闻回滚-->
<script type="text/javascript">
					(function() {
						$("#nearact").kxbdMarquee({
							direction : "up",
							isEqual : false
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
function changeColor(){ 
var color="#f00|#0f0|#00f|#880|#808|#088|yellow|green|blue|gray"; 
color=color.split("|"); 
document.getElementById("blink").style.color=color[parseInt(Math.random() * color.length)]; 
 ;
document.getElementsByClassName("AccordionPanelTab")[0].style.color=color[parseInt(Math.random() * color.length)]; 
} ;

setInterval("changeColor()",200); 
</script>
</body>
</html>
