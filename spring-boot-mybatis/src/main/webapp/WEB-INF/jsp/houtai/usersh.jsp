<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class=" js csstransforms3d">

	<head>
		<meta charset="utf-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>医师修改信息界面</title>
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
					<h3>实名认证</h3>
					<a href="mendian_Team" class="backlistBtn"><i class="ico-back"></i>返回列表</a>
				</div>
			</div>
			<!--main-->
		</div>
		<!--content E-->
		<div class="zx-dtlMain">
			<dl>
				<span>用户姓名：</span>
				<dd>${selectOneUC.user_name}</dd>
			</dl>
			<dl>
				<span>身份证号：</span>
				<dd>${selectOneUC.user_card }</dd>
			</dl>
			<dl>
				<span>身份证图片：</span>
				<img alt="" src="${selectOneUC.user_url }">
			</dl>
			
			<dl class="PD-list clearfix">
				<a href="tgsm?id=${selectOneUC.user_id}"><input type="submit" value="通过" class="saveBtn"></a>
				<a href="jjsm?id=${selectOneUC.user_id}"><input type="submit" value="拒绝" class="saveBtn"></a>
			</dl>
		</div>

	</body>

</html>