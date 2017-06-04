<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
	<base href="/Corporation/">
	<meta charset="utf-8">
	<title>学生社团联盟--后台</title>
	<link rel="shortcut icon" href="images/shuhua.png" type="image/x-icon" />
	<link rel="stylesheet" type="text/css" href="easyui/css/easyui.css">
	<link rel="stylesheet" type="text/css" href="easyui/css/icon.css">
	<link rel="stylesheet" type="text/css" href="easyui/css/demo.css">
	<link rel="stylesheet" type="text/css" href="back/css/main.css">
	<script type="text/javascript" src="easyui/js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="easyui/js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/js/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="easyui/js/index.js"></script>

	<script type="text/javascript" src="js/showpic.js"></script>
	<script type="text/javascript" src="js/ajaxfileupload.js"></script>
	<script type="text/javascript" src="back/js/main.js"></script>
	
	<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
	<script type="text/javascript" src="ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" src="ueditor/lang/zh-cn/zh-cn.js"></script>
	
</head>
<body class="easyui-layout">  
    <div  iconCls="icon-home" data-options="region:'north',title:'欢迎使用湖南工学院社团管理系统',split:true" style="height:95px;">
    	<h3 id="back_top">欢迎使用湖南工学院社团管理系统</h3>
	</div>   
 
    
    <!-- 左边菜单栏 -->
    <div iconCls="icon-large-clipart"  data-options="region:'west',title:'操作菜单',split:true" style="width:200px;">
    	<div id="aa" class="easyui-accordion" style="width:100%;height:100%;">
		<div title="社团管理" iconCls="icon-search" style="overflow:auto;padding:10px;" ><!-- selected="true"  -->
			<button class="easyui-linkbutton" onclick="javascript:show('所有社团')">所有社团</button>
			<button class="easyui-linkbutton" onclick="javascript:show('部门管理')">部门管理</button>
		</div>
		<div title="成员管理" iconCls="icon-user_group" style="padding:10px;">
			<button class="easyui-linkbutton" onclick="javascript:show('管理员管理')">管理员管理</button>
			<button class="easyui-linkbutton" onclick="javascript:show('理事会管理')">理事会管理</button>
			<button class="easyui-linkbutton" onclick="javascript:show('会员管理')">会员管理</button>
			<button class="easyui-linkbutton" onclick="javascript:show('用户管理')">用户管理</button>
			<button class="easyui-linkbutton" onclick="javascript:show('活动管理')">活动管理</button>
		</div>
		<div title="新闻管理" iconCls="icon-network" style="padding:10px;">
			<button class="easyui-linkbutton" onclick="javascript:show('近期活动')">近期活动</button>
			<button class="easyui-linkbutton" onclick="javascript:show('所有活动')">所有活动</button>
			<button class="easyui-linkbutton" onclick="javascript:show('媒体报道')">媒体报道</button>
			<button class="easyui-linkbutton" onclick="javascript:show('校园新闻')">校园新闻</button>
		</div>
		<div title="社团资料" iconCls="icon-folder" style="padding:10px;">
			<button class="easyui-linkbutton" onclick="javascript:show('文档专区')">文档专区</button>
			<button class="easyui-linkbutton" onclick="javascript:show('留影相册')">留影相册</button>
		</div>
		<div title="荣誉奖项" iconCls="icon-finger" style="padding:10px;" >
			<button class="easyui-linkbutton" onclick="javascript:show('社团荣誉')">社团荣誉</button>
			<button class="easyui-linkbutton" onclick="javascript:show('社团名人')">社团名人</button>
		</div>
		<div title="赞助合作" iconCls="icon-tip" style="padding:10px;" >
			<button class="easyui-linkbutton" onclick="javascript:show('赞助商')">赞助商</button>
		</div>

	</div>
    	
    </div>  
    <div iconCls="icon-filter" data-options="region:'center',title:'当前位置-->首页'" style="padding:5px;background:#eee;">
    	 <div class="easyui-layout" data-options="fit:true">  
	     	<div data-options="region:'center'" style="width:100%;height:100%;">
				<div id="tt" class="easyui-tabs" style="width:100%;height:100%;">
					<div title="首页" closable="true">
						<img alt="首页" src="images/picMain.jpg" style="width:100%;height:100%">
					</div>
				</div>
			</div>  
         
         <!-- 底部版权部分 -->
<!--     <div iconCls="icon-globe" data-options="region:'south',title:'版权 所有',split:true" style="height:150px;display:none;" >
		 <iframe src="back/manager/footer.html" style="width:100%;height:100%;" id="back_footer"></iframe>
	</div>   --> 
    </div>
   </div> 
</body>  

</html>