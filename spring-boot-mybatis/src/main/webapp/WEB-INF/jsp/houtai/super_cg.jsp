<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class=" js csstransforms3d">

	<head>
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
					<h2>用户管理</h2>
				<div class="head-right">
					<i class="ico-user"></i>当前用户：
					<div class="userslideDown">
						<a href="javascript:;" class="superUser">Admin<i class="ico-tri"></i></a>
						<div class="slidedownBox">
							<ul>
								<li>
									<a href="#">修改密码</a>
								</li>
								<li>
									<a href="#">退出</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="superCtab">
				<div class="cg-title clearfix">
					<a href="javascript:;" class="default-add-btn newPdBtn"><i class="ico-add"></i>添加用户</a>
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
									<tr>
										<th class="td_6">用户姓名</th>
										<th class="td_7">性别</th>
										<th class="td_12">年龄</th>
										<th class="td_8">联系电话</th>
										<th class="td_11">收货地址</th>
										<th class="td_12">身份证号码</th>
										<th class="td_10">操作</th>
									</tr>
								</tbody>
							</table>
						</div>
						<table border="0" cellspacing="0" cellpadding="0" class="defaultTable defaultTable2">
							<tbody>
								<c:forEach items="${selectAllUsers.list}" var="list">
								<tr>
									<td class="td_6">${list.user_name}</td>
									<td class="td_7">
										<a href="#">${list.user_sex}</a>
									</td>
									<td class="td_12">${list.user_age}</td>
									<td class="td_8">
										<a href="#" class="txdoc">${list.user_tel}</a>
									</td>
									<td class="td_11">
										<a href="#" class="txdoc">${list.user_address}</a>
									</td>
									<td class="td_12">${list.user_card}</td>
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
							<span>共 <b>${NumAll}</b> 条 每页 <b>5 </b>条    <b>${selectAllUsers.pageNum}</b>/<b>${selectAllUsers.pages}</b></span>
							<div class="pageWrap">
								<a href="super_cg?pageNum=1" class="pagenumb">首页</a>
								<a href="super_cg?pageNum=${selectAllUsers.pageNum-1}" class="pagePre"><i class="ico-pre">&nbsp;</i></a>
								<a href="super_cg?pageNum=${selectAllUsers.pageNum+1}" class="pagenext"><i class="ico-next">&nbsp;</i></a>
								<a href="super_cg?pageNum=${selectAllUsers.pages}" class="pagenumb">尾页</a>
							</div>
						</div>
						<!--pages E-->
					</div>

				</div>
			</div>
			<!--main-->

		</div>
		<!--content E-->

		
		<!--公共遮罩-->
		<div class="layuiBg"></div>
		<!--点击新建频道弹出-->
		<div class="addFeileibox layuiBox newPindaoBox">
			<div class="layer-title clearfix">
				<h2>新建用户</h2><span class="layerClose"></span></div>
			<div class="layer-content">
				<dl class="PD-list clearfix">
					<dt>用户姓名：</dt>
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
					<dt>身份证号：</dt>
					<dd><input type="text" class="txt">
					</dd>
				</dl>
				<dl class="PD-list clearfix">
					<input type="submit" value="保存" class="saveBtn">
				</dl>
			</div>
		</div>
		<!--点击修改弹出-->
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