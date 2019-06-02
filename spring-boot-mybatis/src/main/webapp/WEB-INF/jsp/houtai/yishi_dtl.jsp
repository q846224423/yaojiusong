<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="" %>
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
					<h3>医师信息审核</h3>
					<a href="yishi_Team" class="backlistBtn"><i class="ico-back"></i>返回列表</a>
				</div>
			</div>
			<!--main-->
		</div>
		<!--content E-->
		<div class="zx-dtlMain">
			<dl>
				<span>修改后医师头像：</span>
				<img src="upload/chen/Cassiopeia.png" style="vertical-align: middle;" />
			</dl>
			<dl>
				<span>医师姓名：</span>
				<dd>${findonedoctor.d_name }</dd>
			</dl>
			<dl>
				<span>修改后医师性别：</span>
				<dd>${findonedoctor.d_age }</dd>
			</dl>
			<dl>
				<span>修改后医师电话：</span>
				<dd>${findonedoctor.d_tel }</dd>
			</dl>
			<dl>
				<span>修改后科别id：</span>
				<dd>${findonedoctor.kb_id }</dd>
			</dl>
			<dl>
				<span>修改后医师问诊金额：</span>
				<dd>${findonedoctor.d_money }</dd>
			</dl>
			<dl>
				<span>修改后医师职称：</span>
				<dd>${findonedoctor.d_zc }</dd>
			</dl>
			<dl>
				<span>修改后医师的介绍：</span>
				<dd>${findonedoctor.d_introduce }</dd>
			</dl>
			<dl class="PD-list clearfix">
				<input type="submit" value="通过" class="saveBtn">
				<input type="submit" value="拒绝" class="saveBtn">
			</dl>
		</div>

	</body>

</html>