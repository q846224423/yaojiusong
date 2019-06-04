<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class=" js csstransforms3d">

<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>商品管理</title>
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
<style>
tbody img{
width:100px;
hight:80px
}
</style>	
<script>
$(function(){
	//var yd_id = ${"#yd_id"}.val();
	$("#menu1").change(function(){
	var id = $(this).val();
	$.ajax({
		url:"yd2By1id",
		type:"post",
		data:{"menu1_id":id},
		dataType:"json",
		success:function(data){
			$("#menu2").text("");
			$("#menu2").append("<option>-请选择-</option>");
			for(var i in data){//'<option value="'+data[i].menu2id+'" >'+data[i].menu2name+'</option>'
				$("#menu2").append('<option value="'+data[i].menu2_id+'" >'+data[i].menu2_name+'</option>');			
					}
					
				},
				error:function(){
					alert("操作有误")
				}
	});
	})
});	
function tishispan(){
	$("#tishispan").text("尚未认证，无法添加商品");
}
</script>
</head>

<body style="background: #f6f5fa;">

	<!--content S-->
	<div class="super-content">
		<div class="superCtab">
			<div class="ctab-title clearfix">
				<h3>修改商品</h3>
				<a href="javascript:;" class="sp-column"><i class="ico-mng"></i>栏目管理</a>
			</div>
			<div>
	<form action="xiugaisp" method="post" enctype="multipart/form-data">
		<div class="layer-content">
		<!-- 一级分类 -->
<input type="hidden" name="menu3_id" value="${sp.menu3_id }" />		
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
		</form>	
		</div>
	</div>	
			
				
				
				
				
			</div>
		</div>
		<!--main-->

	
			
</body>

</html>