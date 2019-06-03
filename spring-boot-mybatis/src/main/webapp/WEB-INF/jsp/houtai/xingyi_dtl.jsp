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
					<h3>行医资料审核</h3>
					<a href="yishi_Team" class="backlistBtn"><i class="ico-back"></i>返回列表</a>
				</div>
			</div>
			<!--main-->
		</div>
		<!--content E-->
		<div class="zx-dtlMain">
			<dl>
				<span>医师资格认证书：</span>
				<img src="upload/chen/doctor.png" style="vertical-align: middle" />
			</dl>
			<dl>
				<span>姓名：</span>
				<dd>${weirenzhen.d_name}</dd>
			</dl>
			<dl>
				<span>医师状态：</span>
				<c:choose >
					<c:when test="${weirenzhen.d_control ==0}">
					<dd style="color: red;">未认证</dd>
					</c:when>
					<c:when test="${weirenzhen.d_control ==1}">
					<dd style="color: red;">认证中</dd>
					</c:when>
					<c:otherwise>
					<dd style="color: red;">已认证</dd>
					</c:otherwise>
				</c:choose>
			</dl>
			<dl>
				<span>医师性别：</span>
				<dd>${weirenzhen.d_sex }</dd>
			</dl>
			<dl>
				<span>医师电话：</span>
				<dd>${weirenzhen.d_tel }</dd>
			</dl>

			<dl>
				<span>问诊金额：</span>
				<dd>${weirenzhen.d_money }</dd>
			</dl>
			<dl>
				<span>医师职称：</span>
				<dd>${weirenzhen.d_zc }</dd>
			</dl>
			<dl>
				<span>医师介绍：</span>
				<dd>${weirenzhen.d_introduce }</dd>
			</dl>
			<dl class="PD-list clearfix">
				<a href="renzhenyishi" class="saveBtn" style="font-size: 22px">通过</a>
				<a href="xingyi_Team" class="saveBtn" style="font-size: 22px" >拒绝</a>
			</dl>
		</div>
	</body>

</html>