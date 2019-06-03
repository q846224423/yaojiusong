<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html class=" js csstransforms3d">

	<head>
		<meta charset="utf-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>用户信息</title>
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

	<body style="background: #f6f5fa;">

		<!--content S-->
		<div class="super-content">
			<div class="superCtab">
				<div class="ctab-title zxtop-title clearfix">
					<h3>用户信息</h3>
					<a href="yishi_Team.html" class="backlistBtn"><i class="ico-back"></i>返回列表</a>
				</div>
			</div>
			<!--main-->
		</div>
		<!--content E-->
		<div class="zx-dtlMain">
			<dl>
				<span>姓名：</span>
				<dd>${user.user_name } </dd>
			</dl>
			<dl>
				<span>性别：</span>
				<dd>${user.user_sex }</dd>
			</dl>
			<dl>
				<span>年龄：</span>
				<dd>${user.user_age }</dd>
			</dl>
			
				<dl>
			<span>所在地：</span>
				<dd>${pca.provinceName }${pca.cityName }${pca.areaName }<br>
				
				</dd>
				<dd>${user.user_address}</dd>
			</dl>
			<dl>
			<span>电话：</span>
				<dd>${user.user_tel}</dd>
			</dl>
			
		</div>


	
	</body>

</html>