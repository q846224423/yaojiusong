<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class=" js csstransforms3d"><head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>超管后台</title>
	<link rel="stylesheet" href="css/base.css">
	<link rel="stylesheet" href="css/page.css">
	<!--[if lte IE 8]>
	<link href="css/ie8.css" rel="stylesheet" type="text/css"/>
	<![endif]-->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/modernizr.js"></script>
	<!--[if IE]>
	<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->
</head>

<body>
<div class="superWrap clearfix" style="height: 754px;">
	<!--side S-->
	<div class="super-side-menu">
		<iframe src="public_left_cg" width="205" height="100%" marginheight="0" marginwidth="0" frameborder="0" scrolling="no"></iframe>
	</div>
	<!--side E-->
	<!--content S-->
	<div class="superContent">
		<div class="superCtab superCtabBot" style="height: 754px;">
			<iframe src="super_cg" id="Mainindex" name="Mainindex" width="100%" height="100%" marginheight="0" marginwidth="0" frameborder="0"></iframe>
		</div>
		<!--main-->
		
	</div>
	<!--content E-->
	
</div>

<script>
window.onresize = function(){
	var winH=$(window).height();
	$('.superWrap').height(winH);
	$('.superCtabBot').height(winH);
};
$(window).resize();
</script>

</body></html>