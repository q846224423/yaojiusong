<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class=" js csstransforms3d"><head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>公共侧边栏</title>
	<link rel="stylesheet" href="css/base.css">
	<link rel="stylesheet" href="css/page.css">
	<!--[if lte IE 8]>
	<link href="css/ie8.css" rel="stylesheet" type="text/css"/>
	<![endif]-->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	<script type="text/javascript" src="js/modernizr.js"></script>
	<!--[if IE]>
	<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->
</head>

<body>
	<!--side S-->
	<div class="super-side-menu">
		<div class="logo"><a href="drugstore_manager" target="_parent"><img src="images/logo.png"></a></div>
		<div class="side-menu">
			<ul>
				<li class="on"><a href="Store_info" target="Mainindex"><i class="ico-7"></i>我的药店</a></li>
				<li><a href="sp_guanli?yd_id=${drugStore.yd_id }" target="Mainindex"><i class="ico-8"></i>商品管理</a></li>
				<li><a href="Order_gl?yd_id=${drugStore.yd_id }" target="Mainindex"><i class="ico-1"></i>订单管理</a></li>
				<li><a href="Order_gl1?yd_id=${drugStore.yd_id }" target="Mainindex"><i class="ico-1"></i>处方管理</a></li>
			</ul>
		</div>
	</div>
	<!--side E-->

<script type="text/javascript">
	$(function(){
		$('.side-menu li').click(function(){
			$(this).addClass('on').siblings().removeClass('on');
		})
	})
</script>

</body></html>