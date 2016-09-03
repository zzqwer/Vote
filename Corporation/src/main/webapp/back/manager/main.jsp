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
	<link rel="stylesheet" type="text/css" href="easyui/css/main.css">
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
    <div  iconCls="icon-home" data-options="region:'north',title:'欢迎使用湖南工学院计信学院社团联盟网后台',split:true" style="height:100px;">头部logo</div>   
    <div data-options="region:'east',iconCls:'icon-large-clipart' ,title:'工具箱',split:true" style="width:100px;">
    	右侧隐藏小工具栏
    </div>  
    
    <!-- 左边菜单栏 -->
    <div iconCls="icon-large-clipart"  data-options="region:'west',title:'管理内容',split:true" style="width:200px;">
    	<div id="aa" class="easyui-accordion" style="width:100%;height:100%;">
		<div title="社团" iconCls="icon-search" style="overflow:auto;padding:10px;">
			<button class="easyui-linkbutton" onclick="javascript:alert('青年志愿者协会')">青年志愿者协会</button>
			<button class="easyui-linkbutton" onclick="javascript:alert('青年志愿者协会')">青年志愿者协会</button>
			<button class="easyui-linkbutton" onclick="javascript:alert('青年志愿者协会')">文艺爱好者协会</button>
			<button class="easyui-linkbutton" onclick="javascript:alert('书画协会')">书画协会</button>
			<button class="easyui-linkbutton" onclick="javascript:alert('体育爱好者协会')">体育爱好者协会</button>
			<button class="easyui-linkbutton" onclick="javascript:alert('职业发展与创业就业协会')">职业发展与创业就业协会</button>
			<button class="easyui-linkbutton" onclick="javascript:alert('计算机协会')">计算机协会</button>
			<button class="easyui-linkbutton" onclick="javascript:alert('英语协会')">英语协会</button>
		</div>
		<div title="管理员管理" iconCls="icon-user_group" style="padding:10px;">
			<button class="easyui-linkbutton" onclick="javascript:alert('查看所有管理员')">查看所有管理员</button>
			<button class="easyui-linkbutton" onclick="javascript:alert('增加管理员账号')">增加管理员账号</button>
			<button class="easyui-linkbutton" onclick="javascript:alert('修改管理员信息')">修改管理员信息</button>
			<button class="easyui-linkbutton" onclick="javascript:alert('删除管理员账号')">删除管理员账号</button>
		</div>
		<div title="Title3" selected="true" >
			content3
		</div>
	</div>
    	
    </div>  
    <div iconCls="icon-folder" data-options="region:'center',title:'当前位置-->首页'" style="padding:5px;background:#eee;">
   
    	 <div class="easyui-layout" data-options="fit:true">  
           <div data-options="region:'center'">中间具体内容</div>  
        </div>  
    </div>
    <!-- 底部版权部分 -->
    <div iconCls="icon-globe" data-options="region:'south',title:'版权 所有',split:true" style="height:150px;display:none;" >
		 <iframe src="back/manager/footer.html" style="width:100%;height:100%;"></iframe>
	</div>   
</body>  

</html>