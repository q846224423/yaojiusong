<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	 <div class="logo"><a href="public_super_cg" target="_parent"><img src="images/logo.png"></a></div>
		
		<div class="side-menu">
			<ul>
				<li class="on"><a href="zixun_dtl" target="Mainindex"><i class="ico-3"></i>个人信息</a></li>
				<li class=""><a href="wenzhang_xinwen" target="Mainindex"><i class="ico-8"></i>在线问诊</a></li>
				<li><a href="doctorwzjlu" target="Mainindex"><i class="ico-1"></i>问诊记录</a></li>
				
				
				
<!--				
				<li><a href="tupian_pc_index.html" target="Mainindex"><i class="ico-4"></i>图片管理</a></li>
				<li><a href="zixun_Team.html" target="Mainindex"><i class="ico-5"></i>咨询管理</a></li>
				<li><a href="muban_Guanli.html" target="Mainindex"><i class="ico-6"></i>模板管理</a></li>
				<li><a href="xitong_set.html" target="Mainindex"><i class="ico-7"></i>系统设置</a></li>-->
				
				
				
				
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