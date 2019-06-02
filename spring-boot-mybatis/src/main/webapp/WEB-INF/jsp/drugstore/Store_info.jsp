<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html class=" js csstransforms3d">

	<head>
		<meta charset="utf-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>药店信息页面</title>
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
					<h3>药店信息</h3>
					<a href="yishi_Team.html" class="backlistBtn"><i class="ico-back"></i>返回列表</a>
				</div>
			</div>
			<!--main-->
		</div>
		<!--content E-->
		<div class="zx-dtlMain">
			<dl>
				<span>药店图片：</span>
				<img src="${drugStore.yd_head }" style="vertical-align: middle;" />
			</dl>
			<dl>
				<span>药店名称：</span>
				<dd>${drugStore.yd_name }</dd>
			</dl>
			<dl>
				<span>药店信息：</span>
				<dd>${drugStore.regist_info }</dd>
			</dl>
			
			<c:choose>
			<c:when test="">
				<dl>
			<span>认证状态：</span>
				<dd>${drugStore.yd_statu }</dd>
			</dl>
			</c:when>
			<c:otherwise>
			
			
			</c:otherwise>
			</c:choose>
			
			
			
			<dl class="PD-list clearfix">
<a href="javascript:;" class="modify cg-xiugai-a"style="background:rgb(0,132,62); color: #fff;" >修改</a>			
				
			</dl>
		</div>
	<div class="xcXgBox layuiBox newPindaoBox newPindaoBox-xg">
		<div class="layer-title clearfix">
			<h2>修改</h2>
			<span class="layerClose"></span>
		</div>
		<div class="layer-content">
		<!-- 一级分类 -->
<input type="hidden" name="yd_id" value="${drugStore.yd_id }" />
<dl class="PD-list clearfix">    
<dt>一级分类：</dt>
<dd>
<select id="menu1" name="menu1" class="txt">
<option >-请选择-</option>
<c:forEach items="${allmenu1 }" var="menu1">
<option value="${menu1.menu1_id }" >${menu1.menu1_name }</option>
</c:forEach>
 </select>
 </dd>
</dl>
<!-- 二级分类 -->
<dl class="PD-list clearfix">    
<dt>二级分类：</dt>
<dd>
<select id="menu2" name="menu2" class="txt">
<option value="${sp.menu3_menu2_id }">-请选择-</option>
 </select>
 </dd>
</dl>
			<dl class="PD-list clearfix">
				<dt>商品名称：</dt>
				<dd>
				<input type="hidden" name="yd_id" value="${drugStore.yd_id }">
					<input type="text" name="menu3_name" value="${sp.menu3_name }" class="txt">
				</dd>
			</dl>
			<dl class="PD-list clearfix">
				<dt>价格：</dt>
				<dd>
					<input type="text" name="ep_price" value="${sp.ep_price }" class="txt">
				</dd>
			</dl>
			<dl class="PD-list clearfix">
				<dt>规格：</dt>
				<dd>
					<input type="text" name="ep_size"  value="${sp.ep_size }" class="txt">
				</dd>
			</dl>
			<dl class="PD-list clearfix">
				<dt>说明：</dt>
				<dd>
					<input type="text" name="ep_description"  value="${sp.ep_description }" class="txt">
				</dd>
			</dl>

			<dl class="PD-list clearfix">
				<dt>库存：</dt>
				<dd>
					<input type="text" name="ep_stock" value="${sp.ep_stock }"  class="txt">
				</dd>
			</dl>
			<dl class="PD-list clearfix">
				<dt>上传图片：</dt>
				<dd>
					<input type="file" name="file1" class="txt">
				</dd>
			</dl>
			<dl class="PD-list clearfix">
				<input type="submit" value="确定修改" class="saveBtn">
			</dl>
		</div>
	</body>

</html>