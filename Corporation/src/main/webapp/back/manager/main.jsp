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
    <div  iconCls="icon-home" data-options="region:'north',title:'欢迎使用湖南工学院计信学院社团联盟网后台',split:true" style="height:95px;">
    	<p id="back_top">欢迎使用湖南工学院计信学院社团联盟后台</>
	</div>   
    <div data-options="region:'east',iconCls:'icon-large-clipart' ,title:'工具',split:true" style="width:75px;">
    	<!--主要功能: 打印   当前时间  导出为word excel格式文件 字体选择  消息 刷新  退出 重新登录  回到首页 截屏 -->
    	<div class="east_tool"><img alt="字体" title="选择字体" src="back/images/A.png"></div>
    	<div class="east_tool"><img alt="字体大小" title="字体大小" src="back/images/B.png"></div>
    	<div class="east_tool"><img alt="截屏" title="截屏工具" src="back/images/cut.png"></div>
    	<div class="east_tool"><img alt="时间" title="当前时间" src="back/images/time.png"></div>
    	<div class="east_tool"><img alt="播放背景音乐" title="播放背景音乐" src="back/images/music.png"></div>
    	<div class="east_tool"><img alt="导出" title="导出WSP" src="back/images/To2.png"></div>
    	<div class="east_tool"><img alt="消息" title="消息" src="back/images/news.png"></div>
    	<div class="east_tool"><img alt="刷新" title="刷新" src="back/images/flash.png"></div>
    	<div class="east_tool"><img alt="返回首页" title="返回首页" src="back/images/home.png"></div>
    	<div class="east_tool"><img alt="退出登录" title="退出登录" src="back/images/close.png"></div>
    </div>  
    
    <!-- 左边菜单栏 -->
    <div iconCls="icon-large-clipart"  data-options="region:'west',title:'操作菜单',split:true" style="width:200px;">
    	<div id="aa" class="easyui-accordion" style="width:100%;height:100%;">
		<div title="社团管理" iconCls="icon-search" style="overflow:auto;padding:10px;" ><!-- selected="true"  -->
			<button class="easyui-linkbutton" onclick="javascript:show('所有社团')">所有社团</button>
		</div>
		<div title="成员管理" iconCls="icon-user_group" style="padding:10px;">
			<button class="easyui-linkbutton" onclick="javascript:show('管理员管理')">管理员管理</button>
			<button class="easyui-linkbutton" onclick="javascript:show('理事会管理')">理事会管理</button>
			<button class="easyui-linkbutton" onclick="javascript:show('会员管理')">会员管理</button>
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
		<div title="留言专区" iconCls="icon-pencil" style="padding:10px;" >
			<button class="easyui-linkbutton" onclick="javascript:show('社团联系方式')">社团联系方式</button>
			<button class="easyui-linkbutton" onclick="javascript:show('社团留言')">社团留言</button>
		</div>
	</div>
    	
    </div>  
    <div iconCls="icon-filter" data-options="region:'center',title:'当前位置-->首页'" style="padding:5px;background:#eee;">
    	 <div class="easyui-layout" data-options="fit:true">  
	     	<div data-options="region:'center'" style="width:100%;height:100%;">
				<div id="tt" class="easyui-tabs" style="width:100%;height:100%;">
					<div title="首页" closable="true">
						<img alt="首页" src="images/year.jpg" style="width:100%;height:100%">
					</div>
				</div>
			</div>  
         
         <!-- 底部版权部分 -->
    <div iconCls="icon-globe" data-options="region:'south',title:'版权 所有',split:true" style="height:150px;display:none;" >
		 <iframe src="back/manager/footer.html" style="width:100%;height:100%;" id="back_footer"></iframe>
	</div>   
    </div>
   </div> 
</body>  

</html>