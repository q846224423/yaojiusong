<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html class=" js csstransforms3d">

	<head>
		<meta charset="utf-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>医师信息</title>
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
					<h3>行医资格</h3>
				</div>
				<div class="ctab-Main">
					<div class="ctab-Main-title">
						<ul class="clearfix">
							<li >
								<a href="yishi_guanli">医师信息</a>
							</li>
							<li >
								<a href="yishi_Team">信息审核</a>
							</li>
							<li class="cur">
								<a href="xingyi_Team">行医资格</a>
							</li>
						</ul>
					</div>
				<div class="ctab-Main">
					<div class="ctab-Mian-cont">
						<div class="Mian-cont-btn Mian-cont-btn2 clearfix">
							<div class="operateBtn">
								<div class="wd-msg">您有 <span>1</span> 条未读咨询信息！</div>
							</div>
							<div class="searchBar">
								<input type="text" id="" value="" class="form-control srhTxt" placeholder="输入子站关键字搜索">
								<input type="button" class="srhBtn" value="">
							</div>
						</div>

						<div class="Mian-cont-wrap">
							<div class="defaultTab-T">
								<table border="0" cellspacing="0" cellpadding="0" class="defaultTable">
									<tbody>
										<tr>
											<th style="width: 30%; text-align: center;">医师编号</th>
											<th style="width: 40%; text-align: center;">行医资格证书</th>
											<th>操作</th>
										</tr>
									</tbody>
								</table>
							</div>
							<table border="0" cellspacing="0" cellpadding="0" class="defaultTable defaultTable2">
								<tbody>
								<c:forEach items="${wrzyishi.list }" var="list">
									<tr class="wd">
										<td  style="width: 30%; text-align: center;">${list.d_id }</td>
										<td  style="width: 40%; text-align: center;">
											<a href="xingyi_dtl?id=${list.d_id }" class="team-a">${list.d_name }&nbsp;资格认证书</a>
										</td>
										<td class="alcenter">
											<a href="xingyi_dtl?id=${list.d_id }" class="export-a">查看</a>
										</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
							<!--pages S-->
							<div class="pageSelect">
								<span>共 <b>1</b> 条 每页 <b>5 </b>条   </span>
							<div class="pageWrap">
							<a href="xingyi_Team?pageNum=1" class="pagenumb">首页</a>
								<a href="xingyi_Team?pageNum=${wrzyishi.pageNum-1}" class="pagePre"><i class="ico-pre">&nbsp;</i></a>
								<b>${wrzyishi.pageNum}</b>/<b>${wrzyishi.pages}</b>
								<a href="xingyi_Team?pageNum=${wrzyishi.pageNum+1}" class="pagenext"><i class="ico-next">&nbsp;</i></a>
								<a href="xingyi_Team?pageNum=${wrzyishi.pages}" class="pagenumb">尾页</a>
						</div>
							<!--pages E-->
						</div>
					</div>
				</div>
			</div>
			<!--main-->
			</div>
		</div>
		<!--content E-->

	</body>

</html>