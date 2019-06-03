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
	<script type="text/javascript">
    	jQuery(function(){
			jQuery.ajax({
				"url":"getProvince",
				"type":"post",
				"data":{},
				"dataType":"json",
				"success":function(res){
					jQuery.each(res,function(){
						jQuery("#province").append('<option value="'+this.provinceCode+'" >'+this.provinceName+'</option>');
					 }) 
				}
			})
			jQuery("#province").change(function(){
				var provinceCode = jQuery(this).val();
				jQuery.ajax({
				"url":"getCity",
				"type":"post",
				"data":{"provinceCode":provinceCode},
				"dataType":"json",
				"success":function(res){
					jQuery("#city>option:gt(0)").remove();
					jQuery.each(res,function(){
						jQuery("#city").append('<option value="'+this.cityCode+'" >'+this.cityName+'</option>');
					 }) 
				}
			})
		})
		 jQuery("#city").change(function(){
				var cityCode = jQuery(this).val();
				jQuery.ajax({
				"url":"getArea",
				"type":"post",
				"data":{"cityCode":cityCode},
				"dataType":"json",
				"success":function(res){
					jQuery("#area>option:gt(0)").remove();
					jQuery.each(res,function(){
						jQuery("#area").append('<option value="'+this.areaId+'" >'+this.areaName+'</option>');
					 }) 
				}
			})
		}) 
	})
	</script>
	
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
				<img style="width: 300px;height: 210px" src="${drugStore.yd_head }" style="vertical-align: middle;" />
			</dl>
			<dl>
				<span>药店名称：</span>
				<dd>${drugStore.yd_name }</dd>
			</dl>
			<dl>
				<span>药店信息：</span>
				<dd>${drugStore.regist_info }</dd>
			</dl>
			
				<dl>
			<span>认证状态：</span>
				<dd>${drugStore.yd_statu }</dd>
			</dl>
		</div>
<div class="Mian-cont-btn clearfix">
<div class="operateBtn">
<c:choose>
<c:when test="${drugStore.yd_statu=='已认证' }">
<a href="javascript:;" class="greenbtn add sp-add">修改信息</a>
</c:when>
<c:when test="${drugStore.yd_statu=='认证中'}">
<a href="javascript:;" class="greenbtn" style="width: 136px">请耐心等待</a>
</c:when>
<c:otherwise>
<a href="javascript:;" class="greenbtn add sp-add">立即认证</a>
</c:otherwise>
</c:choose>
</div>
</div>


		<div class="addFeileibox layuiBox newPindaoBox">
	<form action="ydshenhe" method="post" enctype="multipart/form-data">
		<div class="layer-title clearfix">
			<h2>审核</h2>
			<span class="layerClose"></span>
		</div>
		<div class="layer-content">
		

<!-- 一级分类 -->
<input type="hidden" name="yd_id" value="${drugStore.yd_id }" />
<dl class="PD-list clearfix">    
<dt>省：</dt>
<dd>
<select id=province name="province" class="txt">
<option >-请选择-</option>
 </select>
 </dd>
</dl>
<!-- 二级分类 -->
<dl class="PD-list clearfix">    
<dt>市：</dt>
<dd>
<select id="city" name="city" class="txt">
<option >-请选择-</option>
 </select>
 </dd>
</dl>
<!-- 二级分类 -->
<dl class="PD-list clearfix">    
<dt>区：</dt>
<dd>
<select id="area" name="area" class="txt">
<option value="${drugStore.county_id }" >-请选择-</option>
 </select>
 </dd>
</dl>

			<dl class="PD-list clearfix">
				<dt>药店名称：</dt>
				<dd>
				<input type="hidden" name="yd_id" value="${drugStore.yd_id }">
				<input type="text" name="yd_name" value="${drugStore.yd_name }">
				<input type="hidden" name="people_id" value="${drugStore.people_id }">	
				</dd>
			</dl>
			<dl class="PD-list clearfix">
				<dt>药店信息：</dt>
				<dd>
				
			<input type="hidden" name="yd_statu" class="txt" value="${drugStore.yd_statu }">
			<input type="text" name="regist_info" class="txt" value="${drugStore.regist_info }">
				</dd>
			</dl>
			<dl class="PD-list clearfix">
				<dt>药店的相关证明</dt>
				<dd>
					<input type="file" name="yd_url" class="txt">
				</dd>
			</dl>
			<dl class="PD-list clearfix">
				<dt>门店图片：</dt>
				<dd>
					<input type="file" name="yd_head" class="txt">
				</dd>
			</dl>

			<dl class="PD-list clearfix">
			<dd>
				<input type="submit" value="提交" class="saveBtn" />
			</dd>
			</dl>
		</div>
		</form>
	</div>
	</body>

</html>