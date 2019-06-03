<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class=" js csstransforms3d"><head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
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
	<div class="super-content RightMain" id="RightMain">
			<div class="super-header clearfix">
			<h2>处方笺</h2>
			<div class="head-right">
				<i class="ico-user"></i>当前用户：
				<div class="userslideDown">
					<a href="javascript:;" class="superUser">Admin<i class="ico-tri"></i></a>
					<div class="slidedownBox">
						<ul>
							<li><a href="#">修改密码</a></li>
							<li><a href="#">退出</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	
	<!--点击修改弹出-->
	<div >
	     	<table border="0" cellspacing="0" cellpadding="0" class="defaultTable defaultTable2">
						<tbody>
						<tr><td width=10%>医生姓名：<td class="td_12">${ub.d_name }</td><td width="70%"></td></tr>
						<tr><td width=10%>医生电话：<td class="td_12">${ub.d_tel }</td><td width="70%"></td></tr>
						<tr><td>用户电话：<td class="td_12">${ub.user_tel }</td></tr>	
						<tr><td>用户姓名：<td class="td_12">${ub.user_name }</td></tr>	
						<tr><td>药店：<td class="td_12">${ub.yd_name }</td></tr>	
						<tr><td>处方图片：<td class="td_12"><img style="width:100px;height: 80px" src="${ub.r_tel }"/></td></tr>	
					</tbody></table>
	</div>
	


</body></html>