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
				<h3>商品管理</h3>
				<a href="javascript:;" class="sp-column"><i class="ico-mng"></i>栏目管理</a>
			</div>

			<div class="ctab-Main">
				<div class="ctab-Main-title">
					<ul class="clearfix">
						<li class="cur"><a href="sp_guanli">商品信息</a></li>
						<li><a href="Flag_gl">广告信息</a></li>
						<li><a href="TopShow_gl">商品置顶</a></li>
					</ul>
				</div>

				<div class="ctab-Mian-cont">
					<div class="Mian-cont-btn clearfix">
					<c:choose>
					<c:when test="${drugStore.yd_statu=='已认证' }">
					<div class="operateBtn">
							<a href="javascript:;" class="greenbtn add sp-add">添加商品</a>
					</div>
					</c:when>
					<c:otherwise>
					<div class="operateBtn">
							<a href="javascript:;" class="greenbtn" onclick="tishispan();">添加商品</a>
					</div><span id="tishispan"></span>
					
					</c:otherwise>
					</c:choose>
						
						<div class="searchBar">
						<form action="ydByName" method="post">
						<input type="hidden" name="yd_id" value="${drugStore.yd_id }"/>
							<input type="text" name="name"  class="form-control srhTxt"
								placeholder="输入标题关键字搜索"> 
								<input type="submit" class="srhBtn" value="">
							</form>	
						</div>
					</div>
					<div class="Mian-cont-wrap">
						<div class="defaultTab-T">
							<table border="0" cellspacing="0" cellpadding="0"
								class="defaultTable">
								<tbody>
									<tr>
										<th class="td_6">商品名称</th>
										<th class="td_7">价格</th>
										<th class="td_12">规格</th>
										<th class="td_11">说明</th>
										<th class="td_8">库存</th>
										<th class="td_12">图片</th>
										<th class="td_13">是否置顶</th>
										<th class="td_14">修改</th>
										<th class="td_10">删除</th>
									</tr>
								</tbody>
							</table>
						</div>
						<table border="0" cellspacing="0" cellpadding="0"
							class="defaultTable defaultTable2">
							<tbody>
								<c:forEach items="${allmenu3 }" var="menu3">
									<tr>
										<td class="td_6">${menu3.menu3_name }</td>
										<td class="td_7"><a href="#">${menu3.ep_price }</a></td>
										<td class="td_12">${menu3.ep_size }</td>
										<td class="td_11"><a href="#" class="txdoc">${menu3.ep_description}</a>
										</td>
										<td class="td_8"><a href="super_cg_PinDao.html"
											>${menu3.ep_stock }</a></td>
										<td class="td_12">
										
										<img alt="${menu3.menu3_name }" src="${menu3.ep_url }">
										</td>
										<td class="td_13">
										<c:choose>
										<c:when test="${menu3.ep_stick==0 }">
						<a href="zdsp?yd_id=${drugStore.yd_id}&menu3_id=${menu3.menu3_id}" >否</a></c:when>
										<c:otherwise>
										<a href="qxzd?yd_id=${drugStore.yd_id}&menu3_id=${menu3.menu3_id}" >是</a>
										</c:otherwise>
										
										</c:choose>
										</td>
										<td class="td_14">
										<a href="remenberSp?yd_id=${drugStore.yd_id}&menu3_id=${menu3.menu3_id}" >&nbsp;</a><br />
											<div class="btn">
                                         <a href="javascript:;" class="modify cg-xiugai-a"style="background: #ff980b; color: #fff;" > 修改</a><br />
											</div>
											</td>
											<td class="td_10">
											<div class="btn">
												<a href="yddelSp?yd_id=${drugStore.yd_id}&menu3_id=${menu3.menu3_id}" style="background: #ff980b; color: #fff;">删除</a>
											</div>

										</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
						<!--pages S-->
						<div class="pageSelect">
							<span>共 <b>188</b> 条 每页 <b>10 </b>条 1/18
							</span>
							<div class="pageWrap">
								<a class="pagePre"><i class="ico-pre">&nbsp;</i></a> <a href="#"
									class="pagenumb cur">1</a> <a href="#" class="pagenumb">2</a> <a
									href="#" class="pagenumb">3</a> <a href="#" class="pagenext"><i
									class="ico-next">&nbsp;</i></a>
							</div>
						</div>
						<!--pages E-->
					</div>
				</div>
			</div>
		</div>
		<!--main-->

	</div>
	<!--content E-->
	<!--点击修改弹出层-->
	<div class="layuiBg" style="display: none; height: 757px;"></div>
	<!--公共遮罩-->
	<!--点击添加分类弹出-->
	<div class="addFeileibox layuiBox">
		<div class="layer-title clearfix">
			<h2>添加分类</h2>
			<span class="layerClose"></span>
		</div>
		<div class="layer-content">
			<div class="aFllink clearfix" style="margin-top: 38px;">
				<span>二级栏目：</span><input type="text" value="">
			</div>
			<div class="aFlBtn">
				<input type="button" value="保存" class="saveBtn">
			</div>
		</div>
	</div>
	<!--栏目管理-->
	<div class="Columnbox hdColumnbox layuiBox"
		style="left: 476.5px; top: 261.5px; display: none;">
		<div class="layer-title clearfix">
			<h2>栏目管理</h2>
			<span class="layerClose"></span>
		</div>
		<div class="layer-content">
			<ul class="colu-title clearfix">
				<li class="li-1">栏目名称</li>
				<li class="li-2">英文名称</li>
				<li class="li-5">栏目类型</li>
				<li class="li-3">操作</li>
				<li class="li-4">同步开关</li>
			</ul>
			<div class="colu-list">
				<ul class="colu-cont clearfix active">
					<li class="li-1"><i class="ico"></i>活动发布</li>
					<li class="li-2">English</li>
					<li class="li-5">列表页</li>
					<li class="li-3"><a href="javascript:;" class="colu-xg">修改</a>
					</li>
					<li class="li-4"><input type="checkbox" id="checkbox_d1"
						class="chk_4"><label for="checkbox_d1"></label></li>
				</ul>
				<div class="colunext" style="display: block;">
					<ul class="colu-next clearfix">
						<li class="li-1"><i class="ico"></i>公司活动</li>
						<li class="li-2"></li>
						<li class="li-5">列表页</li>
						<li class="li-3"><a href="javascript:;" class="colu-xg">修改</a>
						</li>
					</ul>
					<ul class="colu-next clearfix">
						<li class="li-1"><i class="ico"></i>团队活动</li>
						<li class="li-2"></li>
						<li class="li-5">列表页</li>
						<li class="li-3"><a href="javascript:;" class="colu-xg">修改</a>
						</li>
					</ul>
				</div>
			</div>
			<!--新闻动态-->

		</div>
	</div>
	<!--栏目管理－修改-->
	<div class="ColumnXgbox layuiBox">
	
		<div class="layer-title clearfix">
			<h2>添加商品</h2>
			<span class="layerClose"></span>
		</div>
		<div class="layer-content">
			<div class="aFllink clearfix">
				<span>修改名称：</span><input type="text" value="">
			</div>
			<div class="aFllink clearfix">
				<span>英文名称：</span><input type="text" value="">
			</div>
			<div class="aFlBtn">
				<input type="button" value="保存" class="saveBtn">
			</div>
		</div>
	</div>
	<div class="addFeileibox layuiBox newPindaoBox">
	<form action="addSp" method="post" enctype="multipart/form-data">
		<div class="layer-title clearfix">
			<h2>上架药品</h2>
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
<option>-请选择-</option>
 </select>
 </dd>
</dl>
			<dl class="PD-list clearfix">
				<dt>商品名称：</dt>
				<dd>
				<input type="hidden" name="yd_id" value="${drugStore.yd_id }">
					<input type="text" name="menu3_name" class="txt">
				</dd>
			</dl>
			<dl class="PD-list clearfix">
				<dt>价格：</dt>
				<dd>
					<input type="text" name="ep_price" class="txt">
				</dd>
			</dl>
			<dl class="PD-list clearfix">
				<dt>规格：</dt>
				<dd>
					<input type="text" name="ep_size" class="txt">
				</dd>
			</dl>
			<dl class="PD-list clearfix">
				<dt>说明：</dt>
				<dd>
					<input type="text" name="ep_description" class="txt">
				</dd>
			</dl>

			<dl class="PD-list clearfix">
				<dt>库存：</dt>
				<dd>
					<input type="text" name="ep_stock" class="txt">
				</dd>
			</dl>
			<dl class="PD-list clearfix">
				<dt>上传图片：</dt>
				<dd>
					<input type="file" name="file1" class="txt">
				</dd>
			</dl>
			<dl class="PD-list clearfix">
				<input type="submit" value="提交" class="saveBtn">
			</dl>
		</div>
		</form>
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
	</div>
</body>

</html>