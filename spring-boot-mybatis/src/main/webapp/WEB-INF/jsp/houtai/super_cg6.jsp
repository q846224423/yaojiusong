<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class=" js csstransforms3d"><head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>科别</title>
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
				<a href="javascript:;" class="default-add-btn newPdBtn"><i
					class="ico-add"></i>添加科别</a>
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
								<tr><th style="width: 40%; text-align: center;">科别号</th>
								<th style="width: 40%; text-align: center;">科别名</th>
									<th style="width: 20%; text-align: center;">操作</th>
								</tr>
							</tbody>
						</table>
					</div>
					<table border="0" cellspacing="0" cellpadding="0" class="defaultTable defaultTable2">
						<tbody>
						 <c:forEach items="${selectAllkb.list }" var="list">
							<tr>
								<td style="width: 40%; text-align: center;">${list.kb_id }</td>
								<td style="width: 40%; text-align: center;">${list.kb_name }</td>
								<td style="width: 20%; text-align: center;"><div class="btn"><a href="deletekb?id=${list.kb_id}&ksid=${list.ks_id}" style="background: #ff980b; color: #fff;">删除</a></div></td>
							</tr>
						 </c:forEach>
						</tbody>
					</table>
					<!--pages S-->
					<!--pages E-->
				</div>
				
			</div>	
		</div>
		<!--main-->
		
	</div>
	<!--content E-->
	
	<div class="layuiBg"></div><!--公共遮罩-->
	<!--点击新建频道弹出-->
	<form action="tianjiakebie" method="post">
	<div class="addFeileibox layuiBox newPindaoBox">
		<div class="layer-title clearfix"><h2>新建科别</h2><span class="layerClose"></span></div>
		<div class="layer-content">
			<dl class="PD-list clearfix">
				<dt>科别名称：</dt>
				<dd><input type="text" class="txt" name="kb_name">
				<input type="hidden"  name="ks_id" value="${id }">
				</dd>
			</dl>
			
			<dl class="PD-list clearfix">
				<input type="submit" value="保存" class="saveBtn">
			</dl>
		</div>
	</div>
	</form>
	<!--点击修改弹出-->
	<div class="xcXgBox layuiBox newPindaoBox newPindaoBox-xg">
		<div class="layer-title clearfix"><h2>修改</h2><span class="layerClose"></span></div>
		<div class="layer-content">
			<dl class="PD-list clearfix">
					<dt>科别：</dt>
					<dd>
						<select id="kebie" class="txt">
							<option>小儿皮肤科</option>
							<option>中医皮肤科</option>
						</select>
					</dd>
				</dl>
			<dl class="PD-list clearfix">
				<input type="button" value="保存" class="saveBtn">
			</dl>
		</div>
	</div>
	


</body></html>