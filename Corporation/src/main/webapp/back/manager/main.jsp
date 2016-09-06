<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
	<base href="/Corporation/">
	<meta charset="utf-8">
	<title>学生社团联盟--后台</title>
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
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
	
	<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
	<script type="text/javascript" src="ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" src="ueditor/lang/zh-cn/zh-cn.js"></script>
	<script type="text/javascript">
	
	
	</script>
</head>
<body class="easyui-layout">  
    <div  iconCls="icon-home" data-options="region:'north',title:'欢迎使用湖南工学院计信学院社团联盟网后台',split:true" style="height:95px;">
    	<p id="back_top">欢迎使用湖南工学院计信学院社团联盟后台</>
	</div>   
    <div data-options="region:'east',iconCls:'icon-large-clipart' ,title:'工具箱',split:true" style="width:100px;">
    	右侧隐藏小工具栏
    </div>  
    
    <!-- 左边菜单栏 -->
    <div iconCls="icon-large-clipart"  data-options="region:'west',title:'操作菜单',split:true" style="width:200px;">
    	<div id="aa" class="easyui-accordion" style="width:100%;height:100%;">
		<div title="社团管理" iconCls="icon-search" style="overflow:auto;padding:10px;" selected="false"  ><!-- selected="true"  -->
			<button class="easyui-linkbutton" onclick="javascript:alert('点击查看所有社团')">所有社团</button>
		</div>
		<div title="成员管理" iconCls="icon-user_group" style="padding:10px;">
			<button class="easyui-linkbutton" onclick="javascript:alert('后台管理员管理')">后台管理员管理</button>
			<button class="easyui-linkbutton" onclick="javascript:alert('理事会管理')">理事会管理</button>
			<button class="easyui-linkbutton" onclick="javascript:alert('会员管理')">会员管理</button>
		</div>
		<div title="新闻管理" >
			<button class="easyui-linkbutton" onclick="javascript:alert('近期活动')">近期活动</button>
			<button class="easyui-linkbutton" onclick="javascript:alert('所有活动')">所有活动</button>
			<button class="easyui-linkbutton" onclick="javascript:alert('媒体报道')">媒体报道</button>
			<button class="easyui-linkbutton" onclick="javascript:alert('校园新闻')">校园新闻</button>
		</div>
		<div title="社团资料" style="padding:10px;">
			<button class="easyui-linkbutton" onclick="javascript:alert('文档专区')">文档专区</button>
			<button class="easyui-linkbutton" onclick="javascript:alert('留影相册')">留影相册</button>
		</div>
		<div title="荣誉奖项" style="padding:10px;" >
			<button class="easyui-linkbutton" onclick="javascript:alert('社团荣誉')">社团荣誉</button>
			<button class="easyui-linkbutton" onclick="javascript:alert('社团名人')">社团名人</button>
		</div>
		<div title="赞助合作" style="padding:10px;" >
			<button class="easyui-linkbutton" onclick="javascript:alert('赞助商')">赞助商</button>
		</div>
		<div title="留言专区" style="padding:10px;" >
			<button class="easyui-linkbutton" onclick="javascript:alert('社团联系方式')">社团联系方式</button>
			<button class="easyui-linkbutton" onclick="javascript:alert('社团留言')">社团留言</button>
		</div>
	</div>
    	
    </div>  
    <div iconCls="icon-folder" data-options="region:'center',title:'当前位置-->首页'" style="padding:5px;background:#eee;">
    	 <div class="easyui-layout" data-options="fit:true">  
	     	<div data-options="region:'center'" style="width:100%;height:100%;">
				<div id="tt" class="easyui-tabs" style="width:100%;height:100%;">
					<div title="Tab1" closable="true"  style="padding:20px;">
						面板1
					</div>
					<div title="Tab2" closable="true" style="overflow:auto;padding:20px;">
						tab2
					</div>
					<div title="Tab3" iconCls="icon-reload" closable="true" style="padding:20px;">
						tab3
					</div>
				</div>
			</div>  
        </div>  
    </div>
    <!-- 底部版权部分 -->
    <div iconCls="icon-globe" data-options="region:'south',title:'版权 所有',split:true" style="height:150px;display:none;" >
		 <iframe src="back/manager/footer.html" style="width:100%;height:100%;" id="back_footer"></iframe>
	</div>   
</body>  

</html>