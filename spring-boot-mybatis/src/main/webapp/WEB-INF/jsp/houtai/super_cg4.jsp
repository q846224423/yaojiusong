<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html> 
<html class=" js csstransforms3d"><head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>超管－超管</title>
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
			<h2>科室科别管理</h2>
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
		<!--header-->
		<div class="superCtab">
			<div class="cg-title clearfix">
				<div class="searchBar">
					<input type="text" id="" value="" class="form-control srhTxt" placeholder="输入标题关键字搜索">
					<input type="button" class="srhBtn" value="">
				</div>
			</div>
			<div class="cgsuperCtab">
				<div class="Mian-cont-wrap">
					<div class="defaultTab-T">
						<table border="0" cellspacing="0" cellpadding="0" class="defaultTable">
							<tbody>
								<tr><th style="width: 40%; text-align: center;">科室号</th><th style="width: 40%; text-align: center;">科室名</th><th class="td_10">操作</th></tr>
							</tbody>
						</table>
					</div>
					<table border="0" cellspacing="0" cellpadding="0" class="defaultTable defaultTable2">
						<tbody>
						<c:forEach items="${ks.list }" var="list">
							<tr>
								<td style="width: 40%; text-align: center;">${list.ks_id }</td>
								<td style="width: 40%; text-align: center;"><a href="super_cg6?id=${list.ks_id }" style="color: red;">${list.ks_name }</a></td>
								<td class="td_10"><div class="btn">
												<a href="javascript:;" class="modify cg-xiugai-a">添加科科室</a>
												<a href="#" style="background: #ff980b; color: #fff;">删除科室</a>
												</div>
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<!--pages S-->
					<div class="pageSelect">
						<span>共 <b>${NumAll }</b> 条 每页 <b>5 </b>条   </span>
						<div class="pageWrap">
							<a href="super_cg4?pageNum=1" class="pagenumb">首页</a>
								<a href="super_cg4?pageNum=${ks.pageNum-1}" class="pagePre"><i class="ico-pre">&nbsp;</i></a>
								<b>${ks.pageNum}</b>/<b>${ks.pages}</b>
								<a href="super_cg4?pageNum=${ks.pageNum+1}" class="pagenext"><i class="ico-next">&nbsp;</i></a>
								<a href="super_cg4?pageNum=${ks.pages}" class="pagenumb">尾页</a>
						</div>
					</div>
					<!--pages E-->
				</div>
				
			</div>	
		</div>
		<!--main-->
		
	</div>
	<!--content E-->
	
	<div class="layuiBg"></div><!--公共遮罩-->
	<!--点击修改弹出-->
	<div class="xcXgBox layuiBox newPindaoBox newPindaoBox-xg">
		<div class="layer-title clearfix"><h2>修改</h2><span class="layerClose"></span></div>
		<div class="layer-content">
			<dl class="PD-list clearfix">
					<dt>科室：</dt>
					<dd><input type="text" class="txt">
					</dd>
				</dl>
			<dl class="PD-list clearfix">
				<input type="submit" value="保存" class="saveBtn">
			</dl>
		</div>
	</div>
	


</body></html>