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
					<h3>医师信息审核</h3>
					<a href="yishi_Team" class="backlistBtn"><i class="ico-back"></i>返回列表</a>
				</div>
			</div>
			<!--main-->
		</div>
		<!--content E-->
		<div class="zx-dtlMain">
			<input type="hidden" value="${findonedoctor.d_id}" name="d_id">
				<span>修改后医师头像：</span>
				<img src="upload/chen/Cassiopeia.png" style="vertical-align: middle;"  />
				<input name="d_head" value="${findonedoctor.d_head }" type="hidden">
			<br/>
				<span>医师姓名：</span>
				<input name="d_name" value="${findonedoctor.d_name }">
			<br/>
				<span>修改后医师性别：</span>
				<input name="d_sex" value="${findonedoctor.d_sex }">
			<br/>
				<span>修改后医师年龄：</span>
				<input name="d_age" value="${findonedoctor.d_age }" >
			<br/>
				<span>修改后医师电话：</span>
				<input name="d_tel" value="${findonedoctor.d_tel }">
			<br/>
				<span>修改后科别id：</span>
				<input name="kb_id" value="${findonedoctor.kb_id }">
			<br/>
				<span>修改后医师问诊金额：</span>
				<input name="d_money" value="${findonedoctor.d_money }">
			<br/>
				<span>修改后医师职称：</span>
				<input name="d_zc" value="${findonedoctor.d_zc }">
			<br/>
				<span>审核状态：</span>
				<c:choose >
					<c:when test="${findonedoctor.d_change ==0}">
					<dd style="color: red;">未审核</dd>
					</c:when>
					<c:when test="${findonedoctor.d_change ==1}">
					<dd style="color: red;">审核中</dd>
					</c:when>
					<c:otherwise>
					<dd style="color: red;">已审核</dd>
					</c:otherwise>
				</c:choose>
			<br/>
				<span>修改后医师的介绍：</span>
				<input name="d_introduce" value="${findonedoctor.d_introduce }">
			<dl class="PD-list clearfix">
				<a href="shenheyishi?d_id=${findonedoctor.d_id }" class="saveBtn" style="font-size: 22px">通过</a>
				<a href="yishi_Team" class="saveBtn" style="font-size: 22px" >拒绝</a>
			</dl>
		</div>
	</body>

</html>