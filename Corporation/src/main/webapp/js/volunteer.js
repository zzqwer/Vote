  
 /*--------------------标题效果------------------------*/
 var title="协会联盟--青年志愿者协会--";
  function show(){
	  title=title.substr(1,title.length)+title.substring(0,1);	
	  document.title=title;
  }
  window.setInterval("show()",300);