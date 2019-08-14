$(document).ready(function(){
	$("nav>ul>li").hover(function(){
		$(this).find("ul").fadeToggle(50);
	});
});
