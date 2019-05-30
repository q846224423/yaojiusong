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
					<h3>医师管理</h3>
				</div>

				<div class="ctab-Main">
					<div class="ctab-Main-title">
						<ul class="clearfix">
							<li class="cur">
								<a href="yishi_guanli">医师信息</a>
							</li>
							<li>
								<a href="yishi_Team">信息审核</a>
							</li>
							<li>
								<a href="xingyi_Team">行医资料</a>
							</li>
						</ul>
					</div>

					<div class="ctab-Mian-cont">
						<div class="Mian-cont-btn clearfix">
							<div class="operateBtn">
								<a href="javascript:;" class="greenbtn add sp-add">添加医师</a>
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
											<th class="td_6">医师姓名</th>
											<th class="td_7">性别</th>
											<th class="td_12">年龄</th>
											<th class="td_8">联系电话</th>
											<th class="td_11">医师介绍</th>
											<th class="td_12">医师职称</th>
											<th class="td_13">科室科别</th>
											<th class="td_14">医生状态</th>
											<th class="td_10">操作</th>
										</tr>
										
									</tbody>
								</table>
							</div>
							<table border="0" cellspacing="0" cellpadding="0" class="defaultTable defaultTable2">
								<tbody>
								<c:forEach items="${selectAllDoctor.list}" var="list">
									<tr>
										<td class="td_6">${list.d_name }</td>
										<td class="td_7">
											<a href="#">${list.d_sex }</a>
										</td>
										<td class="td_12">${list.d_age }</td>
										<td class="td_8">
											<a href="#" class="txdoc">${list.d_tel }</a>
										</td>
										<td class="td_11">
											<a href="#" class="txdoc">${list.d_introduce }</a>
										</td>
										<td class="td_12">${list.d_zc }</td>
										<td class="td_13">${list.kb_id }</td>
										<td class="td_14">${list.d_state }</td>
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
								<span>共 <b>${allDoctorNum }</b> 条 每页 <b>5 </b>条   <b>${selectAllDoctor.pageNum }</b>/<b>${selectAllDoctor.pages }</b></span>
							<div class="pageWrap">
								<a href="yishi_guanli?pageNum=1" class="pagenumb">首页</a>
								<a href="yishi_guanli?pageNum=${selectAllDoctor.pageNum-1}" class="pagePre"><i class="ico-pre">&nbsp;</i></a>
								<a href="yishi_guanli?pageNum=${selectAllDoctor.pageNum+1}" class="pagenext"><i class="ico-next">&nbsp;</i></a>
								<a href="yishi_guanli?pageNum=${selectAllDoctor.pages}" class="pagenumb">尾页</a>
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
		
		<!--栏目管理－修改-->
		<div class="addFeileibox layuiBox newPindaoBox">
			<div class="layer-title clearfix">
				<h2>新建用户</h2><span class="layerClose"></span></div>
			<div class="layer-content">
				<dl class="PD-list clearfix">
					<dt>医师姓名：</dt>
					<dd><input type="text" class="txt">
					</dd>
				</dl>
				<dl class="PD-list clearfix">
					<dt>性别：</dt>
					<dd>
						<select id="sex" class="txt">
							<option>男</option>
							<option>女</option>
						</select>
					</dd>
				</dl>
				<dl class="PD-list clearfix">
					<dt>年龄：</dt>
					<dd><input type="text" class="txt">
					</dd>
				</dl>
				<dl class="PD-list clearfix">
					<dt>联系电话：</dt>
					<dd><input type="text" class="txt">
					</dd>
				</dl>

				<dl class="PD-list clearfix">
					<dt>医师介绍：</dt>
					<dd><input type="text" class="txt">
					</dd>
				</dl>
				<dl class="PD-list clearfix">
					<dt>医师职称：</dt>
					<dd><input type="text" class="txt">
					</dd>
				</dl>
				<dl class="PD-list clearfix">
					<dt>科室科别：</dt>
					<dd><input type="text" class="txt">
					</dd>
				</dl>
				<dl class="PD-list clearfix">
					<input type="submit" value="保存" class="saveBtn">
				</dl>
			</div>
		</div>
		<div class="xcXgBox layuiBox newPindaoBox newPindaoBox-xg">
			<div class="layer-title clearfix">
				<h2>修改</h2><span class="layerClose"></span></div>
			<div class="layer-content">
				<dl class="PD-list clearfix">
					<dt>姓名：</dt>
					<dd><input type="text" class="txt">
					</dd>
				</dl>
				<dl class="PD-list clearfix">
					<dt>性别：</dt>
					<dd>
						<select id="sex" class="txt">
							<option>男</option>
							<option>女</option>
						</select>
					</dd>
				</dl>
				<dl class="PD-list clearfix">
					<dt>年龄：</dt>
					<dd><input type="text" class="txt">
					</dd>
				</dl>
				<dl class="PD-list clearfix">
					<dt>联系电话：</dt>
					<dd><input type="text" class="txt">
					</dd>
				</dl>
				<dl class="PD-list clearfix">
					<dt>收货地址：</dt>
					<dd><input type="text" class="txt">
					</dd>
				</dl>
				<dl class="PD-list clearfix">
					<dt>身份号：</dt>
					<dd><input type="text" class="txt">
					</dd>
				</dl>
				<dl class="PD-list clearfix">
					<input type="button" value="保存" class="saveBtn">
				</dl>
			</div>
		</div>
	</body>

</html>