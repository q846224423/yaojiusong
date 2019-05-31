<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class=" js csstransforms3d">

	<head>
		<meta charset="utf-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>活动管理</title>
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
				<div class="ctab-title clearfix">
					<h3>门店管理</h3>
				</div>

				<div class="ctab-Main">
					<div class="ctab-Main-title">
						<ul class="clearfix">
							<li class="cur">
								<a href="mendian_guanli">门店信息</a>
							</li>
							<li>
								<a href="mendian_Team">门店审核</a>
							</li>
							<li>
								<a href="mendianzl_Team">门店资格</a>
							</li>
						</ul>
					</div>

					<div class="ctab-Mian-cont">
						<div class="Mian-cont-btn clearfix">
							<div class="operateBtn">
								<a href="javascript:;" class="greenbtn add sp-add">添加门店</a>
							</div>
							<div class="searchBar">
								<input type="text" id="" value="" class="form-control srhTxt" placeholder="输入标题关键字搜索">
								<input type="button" class="srhBtn" value="">
							</div>
						</div>
						<div class="Mian-cont-wrap">
							<div class="defaultTab-T">
								<table border="0" cellspacing="0" cellpadding="0" class="defaultTable">
									<tbody>
										<tr>
											<th class="td_6">药店名称</th>
											<th class="td_7"></th>
											<th class="td_7">所在地区</th>
											<th class="td_7"></th>
											<th class="td_8">药店登记信息</th>
											<th class="td_11">认证状态</th>
											<th class="td_10">操作</th>
										</tr>
									</tbody>
								</table>
							</div>
							<table border="0" cellspacing="0" cellpadding="0" class="defaultTable defaultTable2">
								<tbody>
									<c:forEach items="${selectAllDS.list}" var="list">
									<tr>
										<td class="td_6">${list.yd_name }</td>
										<td class="td_7">
											<a href="#">${list.provinceName }</a>
										</td>
										<td class="td_7">
											<a href="#">${list.cityName }</a>
										</td>
										<td class="td_7">
											<a href="#">${list.areaName }</a>
										</td>
										<td class="td_8">
											<a href="#" class="txdoc">${list.regist_info }</a>
										</td>
										<td class="td_11">${list.yd_statu }</td>
										<td class="td_10">
											<div class="btn">
												<a href="#" style="background: #ff980b; color: #fff;">删除</a>
												</div>
										</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
							<!--pages S-->
							<div class="pageSelect">
							<span>共 <b>${NumAll}</b> 条 每页 <b>5 </b>条 </span>
							<div class="pageWrap">
								<a href="mendian_guanli?pageNum=1" class="pagenumb">首页</a>
								<a href="mendian_guanli?pageNum=${selectAllDS.pageNum-1}" class="pagePre"><i class="ico-pre">&nbsp;</i></a>
								<b>${selectAllDS.pageNum}</b>/<b>${selectAllDS.pages}</b>
								<a href="mendian_guanli?pageNum=${selectAllDS.pageNum+1}" class="pagenext"><i class="ico-next">&nbsp;</i></a>
								<a href="mendian_guanli?pageNum=${selectAllDS.pages}" class="pagenumb">尾页</a>
							</div>
						</div>
							<!--pages E-->
						</div>
					</div>
				</div>
			</div>
			<!--main-->

		</div>
		
		<!--栏目管理-->
		<div class="layuiBg"></div>
		<div class="addFeileibox layuiBox newPindaoBox">
			<div class="layer-title clearfix">
				<h2>新建用户</h2><span class="layerClose"></span></div>
			<div class="layer-content">
				<dl class="PD-list clearfix">
					<dt>药店名：</dt>
					<dd><input type="text" class="txt">
					</dd>
				</dl>
				<dl class="PD-list clearfix">
					<dt>药店所在区域：</dt>
					<dd>
						<select name="city">
							<option value="wuhan">武汉</option>
							<option value="huangshi">黄石</option>
							<option value="huanggang">黄冈</option>
							<option value="xianning">咸宁</option>
						</select>
						<select name="area">
							<option value="hongshan">洪山区</option>
							<option value="jiangxia">江夏区</option>
							<option value="jiangan">江岸区</option>
							<option value="xinzhou">新洲区</option>
						</select>
						<dd>
				</dl>
				<dl class="PD-list clearfix">
					<dt>药店登记信息：</dt>
					<dd><input type="text" class="txt">
					</dd>
				</dl>

				<dl class="PD-list clearfix">
					<dt>认证状态：</dt>
					<dd><input type="text" class="txt">
					</dd>
				</dl>
				<dl class="PD-list clearfix">
					<input type="submit" value="保存" class="saveBtn">
				</dl>
			</div>
		</div>
	</body>

</html>