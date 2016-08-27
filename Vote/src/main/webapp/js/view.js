$(function(){
	$.post("subject/view?vsId="+$("#vsId").val(),function(data){
		alert(data);
	},"json");
});