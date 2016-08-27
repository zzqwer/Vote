$(function(){
	$("#loginBox input").focus(function(){
		this.className+="input-text-over";
	});
	$("#loginBox input").blur(function(){
		this.className+=this.className.replace(/input-text-over/,"");
	});
	$("#loginBox button").hover(function(){
		$(this).addClass("input-text-over");
	},function(){
		$(this).removeclass("input-button-over");
	});
	
});