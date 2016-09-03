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
    <div data-options="region:'north',title:'North Title',split:true" style="height:100px;">头部logo</div>   
    <div data-options="region:'east',iconCls:'icon-reload',title:'East',split:true" style="width:100px;">右侧隐藏小工具栏</div>  
    
    <!-- 左边菜单栏 -->
    <div data-options="region:'west',title:'West',split:true" style="width:100px;">
    	<div id="aa" class="easyui-accordion" style="width:100%;height:100%;">
		<div title="Title1" iconCls="icon-save" style="overflow:auto;padding:10px;">
			<h3 style="color:#0099FF;">Accordion for jQuery</h3>
			<p>Accordion is a part of easyui framework for jQuery. 
			It lets you define your accordion component on web page more easily.</p>
		</div>
		<div title="Title2" iconCls="icon-reload" selected="true" style="padding:10px;">
			content2
		</div>
		<div title="Title3">
			content3
		</div>
	</div>
    	
    </div>  
    <div data-options="region:'center',title:'center title'" style="padding:5px;background:#eee;">
    <a href="#" id="btn" iconCls="icon-search">easyui</a>
    	 <div class="easyui-layout" data-options="fit:true">  
            <div data-options="region:'west',collapsed:true,split:true" style="width:100px">主面板具体功能按钮</div>  
            <div data-options="region:'center'">中间具体内容</div>  
        </div>  
    </div>
    <!-- 底部版权部分 -->
    <div data-options="region:'south',title:'版权 所有',split:true" style="height:150px;">
		 <iframe src="back/manager/footer.html" style="width:100%;height:100%;"></iframe>
	</div>   
</body>  

</html>