<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<base href="/Corporation/">
<meta charset="utf-8">
<title>青年志愿者协会</title>
<link href="css/qingxie.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/highslide-with-gallery.js"></script>
<link rel="stylesheet" type="text/css" href="css/highslide.css" />
<script src="js/show&unshow.js" type="text/jscript"></script>
<script src="js/showhero.js" type="text/jscript"></script>

<script src="js/d7regular.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jq-main.js"></script>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/active.js"></script>
<script type="text/javascript" src="newPage/js/ajaxfileupload.js"></script>


</head>
<body>
<div class="top"> 	
 <img class="logopic" src='images/toplogo.png' width="100%" height="100%"/>
</div>
<div class="menu">
  <ul id="MenuBar">
    <li><a href="#" class="menuclass">协会首页</a></li>
    <li><a href="#" class="menuclass">协会概况</a></li>
    <li><a href="#" class="menuclass">协会架构</a></li>
    <li><a href="#" class="menuclass">近期活动</a></li>
    <li><a href="#" class="menuclass">文档专区</a></li>
    <li><a href="#" class="menuclass">媒体报道</a></li>
    <li><a href="#" class="menuclass">协会名人</a></li>
    <li><a href="#" class="menuclass">赞助合作</a></li>
    <li><a href="#" class="menuclass">联系我们</a></li>
  </ul>
</div>
	<div class="content">
	<div class="left">
        <ul class="association">
            <li onClick="data()"><span  onClick="show('d1')"><img src="images/qingxielogo.png" class="left_logo" />协会介绍</span></li>
            <li onClick="hero()"><span  onClick="show('d2')"><img src="images/qingxielogo.png" class="left_logo"/>名&nbsp;人&nbsp;堂</span></li>
            <li><span  onClick="show('d3')"><img src="images/qingxielogo.png" class="left_logo"/>协会相册</span></li>
            <li><span  onClick="show('d4')"><img src="images/qingxielogo.png" class="left_logo"/>协会部门</span></li>
            <li><span  onClick="show('d5')"><img src="images/qingxielogo.png" class="left_logo"/>协会活动</span></li>
            <li><span  onClick="show('d6')"><img src="images/qingxielogo.png" class="left_logo"/>协会文档</span></li>
            <li><span  onClick="show('d7')"><img src="images/qingxielogo.png" class="left_logo"/>活动报名</span></li>
            <li><span  onClick="show('d8')"><img src="images/qingxielogo.png" class="left_logo"/>活动赞助</span></li>
            <li><span  onClick="show('d9')"><img src="images/qingxielogo.png" class="left_logo"/>会员缴费</span></li>
            <li onclick="message()"><span  onClick="show('d10')"><img src="images/qingxielogo.png" class="left_logo"/>留&nbsp;言&nbsp;区</span></li>
        </ul>
    </div>
    <div class="right">
    <!--------------------------------------------------协会介绍--------------------------------------------------------------->
   	  <div class="clubrightshow" id="d1">
      	<span id="cintroduce" style="margin-right:30px;"><img src="page/qingxielogo.png"/></span>
      </div>
      
    <!--------------------------------------------------名人堂----------------------------------------------------------------->
      <div class="clubrightshow" id="d2">
      	<div class="star">
        	<div class="starmin">
            	<div class="starleft">
                	<ul>
                	
                	</ul>
                </div>
         	 </div>
        </div>
      </div>

         
    <!--------------------------------------------------协会相册---------------------------------------------------------------->
   	  <div class="clubrightshow" id="d3">
          <div class="highslide-gallery">
          	<a class='highslide' id="thumb1" href='images/thumbstrip11.jpg' onclick="return hs.expand(this, miniGalleryOptions1)" title="Two cabins">
            	<img src='images/thumbstrip09.thumb.png' alt='' class="photoimg"/>
            </a>
    
           <div class="hidden-container">
            <a class='highslide' href='images/thumbstrip09.jpg' onclick="return hs.expand(this)"
                    title="Ptarmigan">
                <img src='images/thumbstrip11.thumb.png' alt=''/>
            </a>
    
            <a class='highslide' href='images/thumbstrip12.jpg' title="Patterns in the snow"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip12.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip13.jpg' title="Cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip13.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip14.jpg' title="Old stone cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip14.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip15.jpg' title="A litte open water"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip15.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip16.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip16.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip17.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip17.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip18.jpg' title="Mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip18.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip19.jpg' title="Birch trees"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip19.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip20.jpg' title="Highland woods"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip20.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip21.jpg' title="Frozen lake"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip21.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip22.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip22.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip23.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip23.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip24.jpg' title="Fjord landscape"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip24.thumb.png' alt=''/></a>

		</div>	<a class='highslide' id="thumb1" href='images/thumbstrip11.jpg' onclick="return hs.expand(this, miniGalleryOptions1)" title="Two cabins">
            	<img src='images/thumbstrip09.thumb.png' alt='' class="photoimg"/>
            </a>
    
           <div class="hidden-container">
            <a class='highslide' href='images/thumbstrip09.jpg' onclick="return hs.expand(this)"
                    title="Ptarmigan">
                <img src='images/thumbstrip11.thumb.png' alt=''/>
            </a>
    
            <a class='highslide' href='images/thumbstrip12.jpg' title="Patterns in the snow"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip12.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip13.jpg' title="Cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip13.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip14.jpg' title="Old stone cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip14.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip15.jpg' title="A litte open water"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip15.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip16.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip16.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip17.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip17.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip18.jpg' title="Mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip18.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip19.jpg' title="Birch trees"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip19.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip20.jpg' title="Highland woods"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip20.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip21.jpg' title="Frozen lake"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip21.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip22.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip22.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip23.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip23.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip24.jpg' title="Fjord landscape"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip24.thumb.png' alt=''/></a>

		</div>	<a class='highslide' id="thumb1" href='images/thumbstrip11.jpg' onclick="return hs.expand(this, miniGalleryOptions1)" title="Two cabins">
            	<img src='images/thumbstrip09.thumb.png' alt='' class="photoimg"/>
            </a>
    
           <div class="hidden-container">
            <a class='highslide' href='images/thumbstrip09.jpg' onclick="return hs.expand(this)"
                    title="Ptarmigan">
                <img src='images/thumbstrip11.thumb.png' alt=''/>
            </a>
    
            <a class='highslide' href='images/thumbstrip12.jpg' title="Patterns in the snow"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip12.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip13.jpg' title="Cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip13.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip14.jpg' title="Old stone cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip14.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip15.jpg' title="A litte open water"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip15.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip16.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip16.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip17.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip17.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip18.jpg' title="Mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip18.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip19.jpg' title="Birch trees"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip19.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip20.jpg' title="Highland woods"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip20.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip21.jpg' title="Frozen lake"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip21.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip22.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip22.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip23.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip23.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip24.jpg' title="Fjord landscape"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip24.thumb.png' alt=''/></a>

		</div>	<a class='highslide' id="thumb1" href='images/thumbstrip11.jpg' onclick="return hs.expand(this, miniGalleryOptions1)" title="Two cabins">
            	<img src='images/thumbstrip09.thumb.png' alt='' class="photoimg"/>
            </a>
    
           <div class="hidden-container">
            <a class='highslide' href='images/thumbstrip09.jpg' onclick="return hs.expand(this)"
                    title="Ptarmigan">
                <img src='images/thumbstrip11.thumb.png' alt=''/>
            </a>
    
            <a class='highslide' href='images/thumbstrip12.jpg' title="Patterns in the snow"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip12.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip13.jpg' title="Cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip13.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip14.jpg' title="Old stone cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip14.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip15.jpg' title="A litte open water"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip15.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip16.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip16.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip17.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip17.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip18.jpg' title="Mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip18.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip19.jpg' title="Birch trees"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip19.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip20.jpg' title="Highland woods"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip20.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip21.jpg' title="Frozen lake"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip21.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip22.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip22.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip23.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip23.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip24.jpg' title="Fjord landscape"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip24.thumb.png' alt=''/></a>

		</div>	<a class='highslide' id="thumb1" href='images/thumbstrip11.jpg' onclick="return hs.expand(this, miniGalleryOptions1)" title="Two cabins">
            	<img src='images/thumbstrip09.thumb.png' alt='' class="photoimg"/>
            </a>
    
           <div class="hidden-container">
            <a class='highslide' href='images/thumbstrip09.jpg' onclick="return hs.expand(this)"
                    title="Ptarmigan">
                <img src='images/thumbstrip11.thumb.png' alt=''/>
            </a>
    
            <a class='highslide' href='images/thumbstrip12.jpg' title="Patterns in the snow"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip12.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip13.jpg' title="Cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip13.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip14.jpg' title="Old stone cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip14.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip15.jpg' title="A litte open water"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip15.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip16.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip16.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip17.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip17.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip18.jpg' title="Mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip18.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip19.jpg' title="Birch trees"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip19.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip20.jpg' title="Highland woods"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip20.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip21.jpg' title="Frozen lake"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip21.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip22.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip22.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip23.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip23.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip24.jpg' title="Fjord landscape"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip24.thumb.png' alt=''/></a>

		</div>	<a class='highslide' id="thumb1" href='images/thumbstrip11.jpg' onclick="return hs.expand(this, miniGalleryOptions1)" title="Two cabins">
            	<img src='images/thumbstrip09.thumb.png' alt='' class="photoimg"/>
            </a>
    
           <div class="hidden-container">
            <a class='highslide' href='images/thumbstrip09.jpg' onclick="return hs.expand(this)"
                    title="Ptarmigan">
                <img src='images/thumbstrip11.thumb.png' alt=''/>
            </a>
    
            <a class='highslide' href='images/thumbstrip12.jpg' title="Patterns in the snow"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip12.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip13.jpg' title="Cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip13.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip14.jpg' title="Old stone cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip14.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip15.jpg' title="A litte open water"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip15.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip16.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip16.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip17.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip17.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip18.jpg' title="Mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip18.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip19.jpg' title="Birch trees"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip19.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip20.jpg' title="Highland woods"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip20.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip21.jpg' title="Frozen lake"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip21.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip22.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip22.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip23.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip23.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip24.jpg' title="Fjord landscape"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip24.thumb.png' alt=''/></a>

		</div>	<a class='highslide' id="thumb1" href='images/thumbstrip11.jpg' onclick="return hs.expand(this, miniGalleryOptions1)" title="Two cabins">
            	<img src='images/thumbstrip09.thumb.png' alt='' class="photoimg"/>
            </a>
    
           <div class="hidden-container">
            <a class='highslide' href='images/thumbstrip09.jpg' onclick="return hs.expand(this)"
                    title="Ptarmigan">
                <img src='images/thumbstrip11.thumb.png' alt=''/>
            </a>
    
            <a class='highslide' href='images/thumbstrip12.jpg' title="Patterns in the snow"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip12.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip13.jpg' title="Cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip13.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip14.jpg' title="Old stone cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip14.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip15.jpg' title="A litte open water"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip15.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip16.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip16.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip17.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip17.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip18.jpg' title="Mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip18.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip19.jpg' title="Birch trees"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip19.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip20.jpg' title="Highland woods"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip20.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip21.jpg' title="Frozen lake"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip21.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip22.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip22.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip23.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip23.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip24.jpg' title="Fjord landscape"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip24.thumb.png' alt=''/></a>

		</div>	<a class='highslide' id="thumb1" href='images/thumbstrip11.jpg' onclick="return hs.expand(this, miniGalleryOptions1)" title="Two cabins">
            	<img src='images/thumbstrip09.thumb.png' alt='' class="photoimg"/>
            </a>
    
           <div class="hidden-container">
            <a class='highslide' href='images/thumbstrip09.jpg' onclick="return hs.expand(this)"
                    title="Ptarmigan">
                <img src='images/thumbstrip11.thumb.png' alt=''/>
            </a>
    
            <a class='highslide' href='images/thumbstrip12.jpg' title="Patterns in the snow"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip12.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip13.jpg' title="Cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip13.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip14.jpg' title="Old stone cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip14.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip15.jpg' title="A litte open water"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip15.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip16.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip16.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip17.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip17.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip18.jpg' title="Mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip18.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip19.jpg' title="Birch trees"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip19.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip20.jpg' title="Highland woods"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip20.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip21.jpg' title="Frozen lake"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip21.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip22.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip22.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip23.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip23.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip24.jpg' title="Fjord landscape"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip24.thumb.png' alt=''/></a>

		</div>	<a class='highslide' id="thumb1" href='images/thumbstrip11.jpg' onclick="return hs.expand(this, miniGalleryOptions1)" title="Two cabins">
            	<img src='images/thumbstrip09.thumb.png' alt='' class="photoimg"/>
            </a>
    
           <div class="hidden-container">
            <a class='highslide' href='images/thumbstrip09.jpg' onclick="return hs.expand(this)"
                    title="Ptarmigan">
                <img src='images/thumbstrip11.thumb.png' alt=''/>
            </a>
    
            <a class='highslide' href='images/thumbstrip12.jpg' title="Patterns in the snow"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip12.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip13.jpg' title="Cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip13.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip14.jpg' title="Old stone cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip14.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip15.jpg' title="A litte open water"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip15.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip16.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip16.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip17.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip17.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip18.jpg' title="Mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip18.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip19.jpg' title="Birch trees"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip19.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip20.jpg' title="Highland woods"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip20.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip21.jpg' title="Frozen lake"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip21.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip22.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip22.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip23.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip23.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip24.jpg' title="Fjord landscape"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip24.thumb.png' alt=''/></a>

		</div>	<a class='highslide' id="thumb1" href='images/thumbstrip11.jpg' onclick="return hs.expand(this, miniGalleryOptions1)" title="Two cabins">
            	<img src='images/thumbstrip09.thumb.png' alt='' class="photoimg"/>
            </a>
    
           <div class="hidden-container">
            <a class='highslide' href='images/thumbstrip09.jpg' onclick="return hs.expand(this)"
                    title="Ptarmigan">
                <img src='images/thumbstrip11.thumb.png' alt=''/>
            </a>
    
            <a class='highslide' href='images/thumbstrip12.jpg' title="Patterns in the snow"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip12.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip13.jpg' title="Cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip13.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip14.jpg' title="Old stone cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip14.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip15.jpg' title="A litte open water"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip15.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip16.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip16.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip17.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip17.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip18.jpg' title="Mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip18.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip19.jpg' title="Birch trees"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip19.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip20.jpg' title="Highland woods"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip20.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip21.jpg' title="Frozen lake"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip21.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip22.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip22.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip23.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip23.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip24.jpg' title="Fjord landscape"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip24.thumb.png' alt=''/></a>

		</div>	<a class='highslide' id="thumb1" href='images/thumbstrip11.jpg' onclick="return hs.expand(this, miniGalleryOptions1)" title="Two cabins">
            	<img src='images/thumbstrip09.thumb.png' alt='' class="photoimg"/>
            </a>
    
           <div class="hidden-container">
            <a class='highslide' href='images/thumbstrip09.jpg' onclick="return hs.expand(this)"
                    title="Ptarmigan">
                <img src='images/thumbstrip11.thumb.png' alt=''/>
            </a>
    
            <a class='highslide' href='images/thumbstrip12.jpg' title="Patterns in the snow"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip12.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip13.jpg' title="Cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip13.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip14.jpg' title="Old stone cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip14.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip15.jpg' title="A litte open water"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip15.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip16.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip16.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip17.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip17.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip18.jpg' title="Mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip18.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip19.jpg' title="Birch trees"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip19.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip20.jpg' title="Highland woods"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip20.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip21.jpg' title="Frozen lake"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip21.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip22.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip22.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip23.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip23.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip24.jpg' title="Fjord landscape"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip24.thumb.png' alt=''/></a>

		</div>	<a class='highslide' id="thumb1" href='images/thumbstrip11.jpg' onclick="return hs.expand(this, miniGalleryOptions1)" title="Two cabins">
            	<img src='images/thumbstrip09.thumb.png' alt='' class="photoimg"/>
            </a>
    
           <div class="hidden-container">
            <a class='highslide' href='images/thumbstrip09.jpg' onclick="return hs.expand(this)"
                    title="Ptarmigan">
                <img src='images/thumbstrip11.thumb.png' alt=''/>
            </a>
    
            <a class='highslide' href='images/thumbstrip12.jpg' title="Patterns in the snow"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip12.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip13.jpg' title="Cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip13.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip14.jpg' title="Old stone cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip14.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip15.jpg' title="A litte open water"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip15.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip16.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip16.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip17.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip17.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip18.jpg' title="Mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip18.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip19.jpg' title="Birch trees"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip19.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip20.jpg' title="Highland woods"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip20.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip21.jpg' title="Frozen lake"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip21.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip22.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip22.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip23.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip23.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip24.jpg' title="Fjord landscape"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip24.thumb.png' alt=''/></a>

		</div>	<a class='highslide' id="thumb1" href='images/thumbstrip11.jpg' onclick="return hs.expand(this, miniGalleryOptions1)" title="Two cabins">
            	<img src='images/thumbstrip09.thumb.png' alt='' class="photoimg"/>
            </a>
    
           <div class="hidden-container">
            <a class='highslide' href='images/thumbstrip09.jpg' onclick="return hs.expand(this)"
                    title="Ptarmigan">
                <img src='images/thumbstrip11.thumb.png' alt=''/>
            </a>
    
            <a class='highslide' href='images/thumbstrip12.jpg' title="Patterns in the snow"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip12.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip13.jpg' title="Cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip13.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip14.jpg' title="Old stone cabins"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip14.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip15.jpg' title="A litte open water"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip15.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip16.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip16.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip17.jpg' title="Dipper"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip17.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip18.jpg' title="Mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip18.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip19.jpg' title="Birch trees"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip19.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip20.jpg' title="Highland woods"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip20.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip21.jpg' title="Frozen lake"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip21.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip22.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip22.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip23.jpg' title="Spring in the mountains"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip23.thumb.png' alt=''/></a>
    
            <a class='highslide' href='images/thumbstrip24.jpg' title="Fjord landscape"
                    onclick="return hs.expand(this, miniGalleryOptions1)">
                <img src='images/thumbstrip24.thumb.png' alt=''/></a>

		</div>
    	<a class='highslide' id="thumb1" href='images/thumbstrip11.jpg' onclick="return hs.expand(this, miniGalleryOptions1)" title="Two cabins">
		<img src='images/thumbstrip11.thumb.png' alt='' class="photoimg"/></a>

	<div class="hidden-container">
        <a class='highslide' href='images/thumbstrip09.jpg' onclick="return hs.expand(this)"
        		title="Ptarmigan">
			<img src='images/thumbstrip09.thumb.png' alt=''/></a>

		<a class='highslide' href='images/thumbstrip12.jpg' title="Patterns in the snow"
				onclick="return hs.expand(this, miniGalleryOptions1)">
			<img src='images/thumbstrip12.thumb.png' alt=''/></a>

		<a class='highslide' href='images/thumbstrip13.jpg' title="Cabins"
				onclick="return hs.expand(this, miniGalleryOptions1)">
			<img src='images/thumbstrip13.thumb.png' alt=''/></a>

		<a class='highslide' href='images/thumbstrip14.jpg' title="Old stone cabins"
				onclick="return hs.expand(this, miniGalleryOptions1)">
			<img src='images/thumbstrip14.thumb.png' alt=''/></a>

		<a class='highslide' href='images/thumbstrip15.jpg' title="A litte open water"
				onclick="return hs.expand(this, miniGalleryOptions1)">
			<img src='images/thumbstrip15.thumb.png' alt=''/></a>

		<a class='highslide' href='images/thumbstrip16.jpg' title="Dipper"
				onclick="return hs.expand(this, miniGalleryOptions1)">
			<img src='images/thumbstrip16.thumb.png' alt=''/></a>

		<a class='highslide' href='images/thumbstrip17.jpg' title="Dipper"
				onclick="return hs.expand(this, miniGalleryOptions1)">
			<img src='images/thumbstrip17.thumb.png' alt=''/></a>

		<a class='highslide' href='images/thumbstrip18.jpg' title="Mountains"
				onclick="return hs.expand(this, miniGalleryOptions1)">
			<img src='images/thumbstrip18.thumb.png' alt=''/></a>

		<a class='highslide' href='images/thumbstrip19.jpg' title="Birch trees"
				onclick="return hs.expand(this, miniGalleryOptions1)">
			<img src='images/thumbstrip19.thumb.png' alt=''/></a>

		<a class='highslide' href='images/thumbstrip20.jpg' title="Highland woods"
				onclick="return hs.expand(this, miniGalleryOptions1)">
			<img src='images/thumbstrip20.thumb.png' alt=''/></a>

		<a class='highslide' href='images/thumbstrip21.jpg' title="Frozen lake"
				onclick="return hs.expand(this, miniGalleryOptions1)">
			<img src='images/thumbstrip21.thumb.png' alt=''/></a>

		<a class='highslide' href='images/thumbstrip22.jpg' title="Spring in the mountains"
				onclick="return hs.expand(this, miniGalleryOptions1)">
			<img src='images/thumbstrip22.thumb.png' alt=''/></a>

		<a class='highslide' href='images/thumbstrip23.jpg' title="Spring in the mountains"
				onclick="return hs.expand(this, miniGalleryOptions1)">
			<img src='images/thumbstrip23.thumb.png' alt=''/></a>

		<a class='highslide' href='images/thumbstrip24.jpg' title="Fjord landscape"
				onclick="return hs.expand(this, miniGalleryOptions1)">
			<img src='images/thumbstrip24.thumb.png' alt=''/></a>

	</div>
        </div>
       </div>
    
    <!--------------------------------------------------协会部门---------------------------------------------------------------->
       <div class="clubrightshow" id="d4">
      	<div class="department">
        	<div class="departmenttop"><h3>办公室</h3></div>
            <h4>部门工作：</h4><p>1、起草文件及各规章制度;管理本协会资料,做好建档工作；负责协会的日志制定；负责各种材料的拟定、整理和发布；负责对协会干部（直属部门）进行日常量化考核及管理；做好协会的会议记录并及时的将各部门的活动情况向执委会汇报。<br>
2、负责管理好协会的所有基金；做好基金收支记录，做到经费的使用合理、节约。整理和管理各种档案资料，编写协会评优资料；对协会的资金进行管理；协调各直属部门之间的关系保证各部门联系畅通；对于协会的各种活动进行备案，要求有文字影像资料。<br>
3、每次活动开展前须完成好各种有关活动的相关材料，如（宣传单等），活动开展完后，须及时写好活动通讯稿及活动总结；<br>
4、大型会议，要做好会议PPT、安排布置好会场。资料档案管理，协会的收发文件，交流材料，日常活动资料，协会成员资料，活动感想，活动照片,活动录像，活动新闻报道，活动人员名单，感谢信等。管理好日常用品，协调和规划协会所需物品。
</p><br>
            <div class="departmentbottom">
            	<ul>
                	<li><h4>部门成员：</h4></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                    <li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                </ul>
            </div>
        </div>
        
        <div class="department">
        	<div class="departmenttop"><h3>宣传部</h3></div>
            <h4>部门工作：</h4><p>1、负责协会内部的传播媒介；负责在网上宣传协会及各协会举办的相关工作；负责对协会活动进行影视资料的采集及活动宣传稿的撰写；负责活动宣传版面的内容、形式的制定；负责协会的对内、对外宣传；负责协会宣传活动的策划；负责宣传板的借用、发放和收回；在举办晚会或公益活动时担任主持人、解说员。<br>
2、负责协会在不同时期的宣传工作，加强宣传的规范性、全面性；负责以标志物、海报、宣传牌、印刷品、POP、广播、电视等形式，开展对外宣传，树立健康良好的青年志愿者形象，扩大协会的社会影响。 </p><br>
    <div class="departmentbottom">
            	<ul>
                	<li><h4>部门成员：</h4></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                    <li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                </ul>
            </div>
        </div>
        <div class="department">
        	<div class="departmenttop"><h3>组织部</h3></div>
            <h4>部门工作：</h4><p>1、对协会的工作进行全面的监督；协会开展比赛性质的活动时，组织部负责进行监督与公证.；及时了解到协会的会员的动态及协会中存在的问题并及时的反馈到执委会；对参加活动的人员准确及时的登记并汇总成电子版；协助执委会负责部门理事、会员的年度评比工作；组织各种讲座丰富协会生活；在协会活动中进行参与者名单的收集以及负责人员调配。<br>2、负责活动计划的起草及具体活动的组织和实施；负责将协会各成员的工作落实到基层；负责协会成员会牌的管理；<br>
</p><br>
            <div class="departmentbottom">
            	<ul>
                	<li><h4>部门成员：</h4></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                    <li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                </ul>
            </div>
        </div>
        <div class="department">
        	<div class="departmenttop"><h3>外联部</h3></div>
            <h4>部门工作：</h4><p>1、与各大高校的青年志愿者协会建立友好关系,经常保持联系；了解外校青协的工作方式及其走向；向外界推介协会，并进行工作上的交流，寻求共同举办活动的可能性；加强与各企业间的联络，为协会的优秀活动寻求商业赞助并寻求长期合作伙伴；与校内各级组织保持良好的关系，加强沟通交流，共同促进学校文化建设。<br>
2、负责联系校外的一些单位和企业，为协会举行的活动寻求赞助经费，并努力与他们保持长期合作关系；负责协会的外事工作，与兄弟协会保持联系；担负着与校内外各媒体和企业间的联系与合作的任务，做连接社会与协会的纽带。<br>
3、每次活动，要负责申请活动地点；大型会议前，要申请好教室，及邀请各到场嘉宾。<br>
</p><br>
            <div class="departmentbottom">
            	<ul>
                	<li><h4>部门成员：</h4></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                    <li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                </ul>
            </div>
        </div>
        <div class="department">
        	<div class="departmenttop"><h3>网络编辑部</h3></div>
            <h4>部门工作：</h4><p>1、负责做好每次大型会议协会用来展现精彩活动的会声会影；编辑简报，协助宣传部做好宣传；<br>
2、负责有关信息和资料的搜集。协会信息化的规划与协会网络的管理和维护。网络编辑部日常工作管理。<br>
3、负责青协网站的建立与维护，及时在网站上发布青协有关信息。做好网上宣传工作、收集有关活动资料，为活动提高理论支持。<br>
</p><br>
            <div class="departmentbottom">
            	<ul>
                	<li><h4>部门成员：</h4></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                    <li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                </ul>
            </div>
        </div>
        <div class="department">
        	<div class="departmenttop"><h3>策划部</h3></div>
            <h4>部门工作：</h4><p>1、协会举办活动的主要力量。负责协会整体的素质拓展培训（团队精神、责任心等）；负责联系校内外的活动场地；对协会的重大活动进行策划和安排；加强并增进协会对外公共关系方面的有关工作的管理和发展，为协会各项工作的顺利开展营造一个和谐的人文环境。<br>2、每次活动举行前，要写好活动策划书；策划并拟定活动的主题思想、策划文案、实施细则，及为实现活动计划而进行沟通、商讨等再实施工作。<br>
</p><br>
            <div class="departmentbottom">
            	<ul>
                	<li><h4>部门成员：</h4></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                    <li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                </ul>
            </div>
        </div>
        <div class="department">
        	<div class="departmenttop"><h3>支教分队</h3></div>
            <h4>部门工作：</h4><p>1、负责做好支教老师的招聘，并安排支教老师老师的具体执教日期以及陪同的协会工作人员，保证每周的支教活动顺利开展。<br>
2、负责与支教站点（衡阳县松林小学）的交流联系，及时向理事会反馈松林小学的意见和建议，并及时询问松林小学的需求情况，了解支教站点的老师变动情况。<br>
3、负责开展松林小学与其他学校的交流合作及一对一辅导情况，使得学校能得到更多的帮助。<br>
</p><br>
            <div class="departmentbottom">
            	<ul>
                	<li><h4>部门成员：</h4></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                    <li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                	<li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                </ul>
            </div>
        </div>
      </div>
      
      
   <!---------------------------------------------------协会活动---------------------------------------------------------------->  
       <div class="clubrightshow" id="d5">
      <div class="clubrightshowleft">
      	  <ul>
              	<li><a href="#" >1.阿里巴巴首页导航菜单设计制作</a></li>
                <li><a href="#" >2.marquee实现图片向上滚动并带停止功能</a></li>
                <li><a href="#" >3.MSN男人栏目幻灯片鼠标划过显示小图列表</a></li>
                <li><a href="#" >4.jquery实现鼠标划过小图变大图(可实现多张)</a></li>
                <li><a href="#" >5.jquery.cycle循环带数字按钮动画设计</a></li>
                <li><a href="#" >6.themeforest模板带控制按钮滑动文字设计</a></li>
                <li><a href="#" >7.苹果mac栏目动画设计制作</a></li>
                <li><a href="#" >8.jQuery实现很漂亮的背景切换动画设计</a></li>
                <li><a href="#" >1.阿里巴巴首页导航菜单设计制作</a></li>
                <li><a href="#" >2.marquee实现图片向上滚动并带停止功能</a></li>
                <li><a href="#" >3.MSN男人栏目幻灯片鼠标划过显示小图列表</a></li>
                <li><a href="#" >4.jquery实现鼠标划过小图变大图(可实现多张)</a></li>
                <li><a href="#" >5.jquery.cycle循环带数字按钮动画设计</a></li>
                <li><a href="#" >6.themeforest模板带控制按钮滑动文字设计</a></li>
                <li><a href="#" >7.苹果mac栏目动画设计制作</a></li>
                <li><a href="#" >8.jQuery实现很漂亮的背景切换动画设计</a></li>
                <li><a href="#" >1.阿里巴巴首页导航菜单设计制作</a></li>
                <li><a href="#" >2.marquee实现图片向上滚动并带停止功能</a></li>
                <li><a href="#" >3.MSN男人栏目幻灯片鼠标划过显示小图列表</a></li>
                <li><a href="#" >4.jquery实现鼠标划过小图变大图(可实现多张)</a></li>
                <li><a href="#" >5.jquery.cycle循环带数字按钮动画设计</a></li>
                <li><a href="#" >6.themeforest模板带控制按钮滑动文字设计</a></li>
                <li><a href="#" >7.苹果mac栏目动画设计制作</a></li>
                <li><a href="#" >8.jQuery实现很漂亮的背景切换动画设计</a></li>
                <li><a href="#" >1.阿里巴巴首页导航菜单设计制作</a></li>
                <li><a href="#" >2.marquee实现图片向上滚动并带停止功能</a></li>
                <li><a href="#" >3.MSN男人栏目幻灯片鼠标划过显示小图列表</a></li>
                <li><a href="#" >4.jquery实现鼠标划过小图变大图(可实现多张)</a></li>
                <li><a href="#" >5.jquery.cycle循环带数字按钮动画设计</a></li>
                <li><a href="#" >6.themeforest模板带控制按钮滑动文字设计</a></li>
                <li><a href="#" >7.苹果mac栏目动画设计制作</a></li>
                <li><a href="#" >8.jQuery实现很漂亮的背景切换动画设计</a></li>
                <li><a href="#" >1.阿里巴巴首页导航菜单设计制作</a></li>
                <li><a href="#" >2.marquee实现图片向上滚动并带停止功能</a></li>
                <li><a href="#" >3.MSN男人栏目幻灯片鼠标划过显示小图列表</a></li>
                <li><a href="#" >4.jquery实现鼠标划过小图变大图(可实现多张)</a></li>
                <li><a href="#" >5.jquery.cycle循环带数字按钮动画设计</a></li>
                <li><a href="#" >6.themeforest模板带控制按钮滑动文字设计</a></li>
                <li><a href="#" >7.苹果mac栏目动画设计制作</a></li>
                <li><a href="#" >8.jQuery实现很漂亮的背景切换动画设计</a></li>
                <li><a href="#" >1.阿里巴巴首页导航菜单设计制作</a></li>
                <li><a href="#" >2.marquee实现图片向上滚动并带停止功能</a></li>
                <li><a href="#" >3.MSN男人栏目幻灯片鼠标划过显示小图列表</a></li>
                <li><a href="#" >4.jquery实现鼠标划过小图变大图(可实现多张)</a></li>
                <li><a href="#" >5.jquery.cycle循环带数字按钮动画设计</a></li>
                <li><a href="#" >6.themeforest模板带控制按钮滑动文字设计</a></li>
                <li><a href="#" >7.苹果mac栏目动画设计制作</a></li>
                <li><a href="#" >8.jQuery实现很漂亮的背景切换动画设计</a></li>
                <li><a href="#" >1.阿里巴巴首页导航菜单设计制作</a></li>
                <li><a href="#" >2.marquee实现图片向上滚动并带停止功能</a></li>
                <li><a href="#" >3.MSN男人栏目幻灯片鼠标划过显示小图列表</a></li>
                <li><a href="#" >4.jquery实现鼠标划过小图变大图(可实现多张)</a></li>
                <li><a href="#" >5.jquery.cycle循环带数字按钮动画设计</a></li>
                <li><a href="#" >6.themeforest模板带控制按钮滑动文字设计</a></li>
                <li><a href="#" >7.苹果mac栏目动画设计制作</a></li>
                <li><a href="#" >8.jQuery实现很漂亮的背景切换动画设计</a></li>
               
        </ul>
       </div>
       <div class="clubrightshowright">
        	<ul>
       	   <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
            <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
            <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
            <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
            <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
            <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
            <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
           <li>2016-08-31</li>
        </ul>
       </div>
      </div>
   <!---------------------------------------------------协会文档---------------------------------------------------------------->  
      
              <div class="clubrightshow" id="d6">
                  <img src="images/excel.jpg" class="excel"/><a href="#" >1.阿里巴巴首页导航菜单设计制作</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/excel.jpg" class="excel"/><a href="#" >2.marquee实现图片向上滚动并带停止功能</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/excel.jpg" class="excel"/><a href="#" >3.MSN男人栏目幻灯片鼠标划过显示小图列表</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/excel.jpg" class="excel"/><a href="#" >4.jquery实现鼠标划过小图变大图(可实现多张)</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/excel.jpg" class="excel"/><a href="#" >5.jquery.cycle循环带数字按钮动画设计</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/excel.jpg" class="excel"/><a href="#" >6.themeforest模板带控制按钮滑动文字设计</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/excel.jpg" class="excel"/><a href="#" >1.阿里巴巴首页导航菜单设计制作</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/excel.jpg" class="excel"/><a href="#" >2.marquee实现图片向上滚动并带停止功能</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/excel.jpg" class="excel"/><a href="#" >3.MSN男人栏目幻灯片鼠标划过显示小图列表</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/excel.jpg" class="excel"/><a href="#" >4.jquery实现鼠标划过小图变大图(可实现多张)</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/excel.jpg" class="excel"/><a href="#" >5.jquery.cycle循环带数字按钮动画设计</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/excel.jpg" class="excel"/><a href="#" >6.themeforest模板带控制按钮滑动文字设计</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/word.png" class="excel"/><a href="#">7.苹果mac栏目动画设计制作</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/word.png" class="excel"/><a href="#">8.jQuery实现很漂亮的背景切换动画设计</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/word.png" class="excel"/><a href="#">7.苹果mac栏目动画设计制作</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/word.png" class="excel"/><a href="#">8.jQuery实现很漂亮的背景切换动画设计</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/word.png" class="excel"/><a href="#" >1.阿里巴巴首页导航菜单设计制作</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/word.png" class="excel"/><a href="#" >2.marquee实现图片向上滚动并带停止功能</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/word.png" class="excel"/><a href="#" >1.阿里巴巴首页导航菜单设计制作</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/word.png" class="excel"/><a href="#" >2.marquee实现图片向上滚动并带停止功能</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/ppt.png" class="excel"/><a href="#" >3.MSN男人栏目幻灯片鼠标划过显示小图列表</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/ppt.png" class="excel"/><a href="#" >4.jquery实现鼠标划过小图变大图(可实现多张)</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/ppt.png" class="excel"/><a href="#" >5.jquery.cycle循环带数字按钮动画设计</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/ppt.png" class="excel"/><a href="#" >6.themeforest模板带控制按钮滑动文字设计</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/ppt.png" class="excel"/><a href="#">7.苹果mac栏目动画设计制作</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/ppt.png" class="excel"/><a href="#">8.jQuery实现很漂亮的背景切换动画设计</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/ppt.png" class="excel"/><a href="#" >3.MSN男人栏目幻灯片鼠标划过显示小图列表</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/ppt.png" class="excel"/><a href="#" >4.jquery实现鼠标划过小图变大图(可实现多张)</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/ppt.png" class="excel"/><a href="#" >5.jquery.cycle循环带数字按钮动画设计</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/ppt.png" class="excel"/><a href="#" >6.themeforest模板带控制按钮滑动文字设计</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/ppt.png" class="excel"/><a href="#">7.苹果mac栏目动画设计制作</a><span class="rightfloat">2016-08-31</span><br>
                  <img src="images/ppt.png" class="excel"/><a href="#">8.jQuery实现很漂亮的背景切换动画设计</a><span class="rightfloat">2016-08-31</span><br>
              </div>
   <!---------------------------------------------------活动报名---------------------------------------------------------------->  
      <div class="clubrightshow" id="d7">
      	<div class="actregister">
        <form method="post" action="infomation/baoming">
           <select name="bclass">
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
            </select> <br>
            <input name="bname" type="text" placeholder="${user.username}" value="${user.username}"  /><span></span><br>
            <input name="tel" type="text"  value="${user.phone}"/><br>
            <select name="aname" class="aname"  onchange="showactiver()">
             	<option>请选择活动</option>
               
            </select><br>
            <input type="submit" value="提交" style="width:100px;margin-left:120px;"/><!--提交样式-->
            <input type="reset" value="重置" style="width:100px;"/><!--重置样式-->
             </form>
             <div class="departmentbottom">
             <h4>已经报名此活动的人员：</h4>
            	<ul id="activer">
                </ul>
            </div>
        </div>
      </div>
   <!---------------------------------------------------活动赞助---------------------------------------------------------------->
   	  <div class="clubrightshow" id="d8">
                <form>
                    <input type="text" placeholder="请输入公司名称或本人姓名" style="width:283px; height:25px; margin-top:10px; margin-left:150px;"/><span></span><br>
                    <input type="text" placeholder="请输入公司邮箱账号或者个人邮箱" style="width:283px;  height:25px; margin-top:10px; margin-left:150px;"/><br>
                    <input type="text" placeholder="请输入公司联系方式或个人手机号" style="width:283px;  height:25px; margin-top:10px; margin-left:150px;"/><br>
                    <select style=" height:30px; margin-top:10px;margin-left:150px;">
                        <option>请选择赞助的活动</option>
                        <option>敬老院之行（长期）</option>
                        <option>松林小学支教（长期）</option>
                        <option>贫困生助学（长期）</option>
                        <option>2016-09-13新生入学（短期）</option>
                        <option>2016-10-15协会聚餐（短期）</option>
                        <option>2016-10-10野炊（短期）</option>
                        <option>2016-11-01助学募捐（短期）</option>
                        <option>2016-11-15毅行（短期）</option>
                        <option>2016-11-20活动月闭幕式（短期）</option>
                        <option>2016-12-30协会换届大会（短期）</option>
                        <option>2016-12-30学期总结大会暨表彰大会（短期）</option>
                    </select><br>
               	  <select name="" class="change"  onChange="change()"  style="width:283px;height:30px; margin-top:10px; margin-left:150px;">
                    	<option >请选择赞助的方式</option>
                        <option >现金或网上转账</option>
                        <option id="change2">物资</option>
                        
                    </select><br>
                   
<span id="change"></span><br>
                    <textarea placeholder="请附带上一句话或一段话" style="width:60%;height:100px;margin-left:150px;"></textarea>
        </form>
         <input type="submit" value="提交" style="width:100px; height:30px;margin-left:150px;"/><!--提交样式-->
         <input type="reset" value="重置" style="width:100px; height:30px;"/><!--重置样式-->
                     <div class="departmentbottom" id="d8min">
                        <ul>
                            <li><h4>已经赞助此活动的公司或个人：</h4></li>
                            <li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                            <li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                            <li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                            <li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                            <li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                            <li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                            <li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                            <li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                            <li><div class="departmentbottommin"><a href="#"><img src="images/chat3.png"/></a></div></li>
                        </ul>
                    </div>
			</div>
   <!---------------------------------------------------会员缴费---------------------------------------------------------------->   
      <div class="clubrightshow" id="d9">
      		   	<div class="actregister">
        <form>
        	<input type="text" placeholder="请输入姓名" style="width:170px;" id="d9name"/><span></span><br>
           <select name="" style="width:173px;" id="d9class">
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
            </select> <br>
            
            <select style="width:173px;" id="d9club">
             	<option>选择社团</option>
                <option>青年志愿者协会</option>
                <option>文艺爱好者协会</option>
                <option>书画协会</option>
                <option>体育爱好者协会</option>
                <option>职业发展与创业就业协会</option>
                <option>计算机协会</option>
                <option>英语协会</option>
            </select><br>
             <select style="width:173px;" id="d9money">
             	<option>缴费金额</option>
                <option>25元</option>
            </select><br>
            <input  type="submit" value="确定" style="width:60px; margin-left:20px; margin-right:5px;" onClick="moneyalert()"/>
            <input  type="reset" value="取消" style="width:60px;"/>
            </form>
            <div>${msg }</div>
        </div>
      </div>
   <!---------------------------------------------------留言区----------------------------------------------------------------> 
    <div class="clubrightshow" id="d10">
    
    <p>输入留言内容</p>
    <textarea style="width:676px;height:120px;" id="message"></textarea>
    <input type="button" value="提交留言" style="width:200px;height:30px;" onclick="messageSubmit()"/>
    <input type="reset" value="撤销编辑" style="width:200px;height:30px;"/>
    <script type="text/javascript">
    	function messageSubmit(){
    		if("${user.username}"==null){
    			alert("请先登录系统");
    		}else{
    			var date=new Date();
    			var lname="${user.username}";
    			var lclass="${user.userclass}";
    			var lsex="${user.sex}";
    			var lpic="${user.pic}";
    			var lmessage= document.getElementById('message').value;
    			var ldate=date.toLocaleString();
    			$.ajaxFileUpload({		
    				url : "message/register",
    				secureuri : false,
    				dataType : "json",
    				data:{lname:lname,lclass:lclass,lsex:lsex,lpic:lpic,lmessage:lmessage,ldate:ldate},
    				success : function(data, status) {
    					if (data) {
    						alert("注冊成功","点击确定返回登录界面");
    						location.href = "page/qingxie.jsp";
    					} else {
    						alert("注冊成功","点击确定返回登录界面");
    						location.href = "page/register.jsp";
    					}
    				}
    			});
    		}
    		
			
    	}
    </script>
    
    <script type="text/javascript">
	    function message(){
	    	debugger;
	    $.get("message/findAll", function(data) {
	    	
	    	var listStr = "";
	    	var sex = "";
	    	for (var i = 0; i < data.length; i++) {
	    		if(data[i].lsex=='男'){
	    			sex = "boy";
	    		}else{
	    			sex = "girl";
	    		}
	    		listStr += '<div class="d10word">'
	    	    	+'<div class="d10left">'
	    		+'<img src="../../'+data[i].lpic+'" style="border-radius:50%" class="d10img"/>'
	    	+'</div>'
	        +'<div class="d10right">'
	    		+'<ul>'
	            	+'<li class="d10name">'+data[i].lname+'</li>'
	            	+'<li class="d10sex"><span><img src="images/'+sex+'.png" class="sex">'+data[i].lclass+'</span></li>'
	            	+'<li class="d10date">'+data[i].ldate+'</li>'
	            	+'<li class="d10doc">'+data[i].lmessage+'</li>'
	            	+'</ul>'
	            	+'</div>'
	            	+' </div><br><br>';
	    		}
	    	$("#d10").append(listStr);
	    }, "json");
	    }
    </script>
  
    <div class="d10word">
    	<div class="d10left">
    		<img src="images/8.jpg" class="d10img"/>
    	</div>
        <div class="d10right">
    		<ul>
            	<li class="d10name">长木</li>
                <li class="d10sex"><span><img src="images/boy.png" class="sex">青年志愿者协会    会员</span></li>
                <li class="d10date">16年9月2日会  05:07</li>
                <li class="d10doc">福建江夏学院 福建师范大学 福建商业高等专院 闽江学院 福建医科大学 莆田学院 福建中医药大学 福州大学阳光学院 仰恩大学 集美大学...</li>
            </ul>
    	</div>
       </div>
    <div class="d10word">
    	<div class="d10left">
    		<img src="images/8.jpg" class="d10img"/>
    	</div>
        <div class="d10right">
    		<ul>
            	<li class="d10name">长木</li>
                <li class="d10sex"><span><img src="images/boy.png" class="sex">青年志愿者协会    会员</span></li>
                <li class="d10date">16年9月2日会  05:07</li>
                <li class="d10doc">福建江夏学院 福建师范大学 福建商业高等专科学校 闽江师范高等专科学校 福建农林大学 华侨大学 福州大学 福建工程学院 闽江学院 福建医科大学 莆田学院 福建中医药大学 福州大学阳光学院 仰恩大学 集美大学...</li>
            </ul>
    	</div>
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
	hs.graphicsDir = 'images/graphics/';
	hs.align = 'center';
	hs.transitions = ['expand', 'crossfade'];
	hs.fadeInOut = true;
	hs.outlineType = 'rounded-white';
	hs.headingEval = 'this.a.title';
	hs.numberPosition = 'heading';
	hs.useBox = true;
	hs.width = 600;
	hs.height = 400;
	hs.showCredits = false;
	//hs.dimmingOpacity = 0.8;

	// Add the slideshow providing the controlbar and the thumbstrip
	hs.addSlideshow({
		//slideshowGroup: 'group1',
		interval: 5000,
		repeat: false,
		useControls: true,
		fixedControls: 'fit',
		overlayOptions: {
			position: 'top right',
			offsetX: 200,
			offsetY: -65
		},
		thumbstrip: {
			position: 'rightpanel',
			mode: 'float',
			relativeTo: 'expander',
			width: '210px'
		}
	});

	// Make all images animate to the one visible thumbnail
	var miniGalleryOptions1 = {
		thumbnailId: 'thumb1'
	}
</script>
</body>
</html>