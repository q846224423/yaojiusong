<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
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
					<h3>门店审核</h3>
				</div>
				<div class="ctab-Main">
					<div class="ctab-Main-title">
						<ul class="clearfix">
							<li >
								<a href="mendian_guanli">门店信息</a>
							</li>
							<li class="cur">
								<a href="mendian_Team">门店审核</a>
							</li>
						</ul>
					</div>
				<div class="ctab-Main">
					<div class="ctab-Mian-cont">
						<div class="Mian-cont-btn Mian-cont-btn2 clearfix">
							<div class="operateBtn">
								<div class="wd-msg">您有 <span>${NumAll}</span> 条未处理信息！</div>
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
											<th class="t_1">门店编号</th>
											<th class="t_2_1">申请药店</th>
										</tr>
									</tbody>
								</table>
							</div>
							<table border="0" cellspacing="0" cellpadding="0" class="defaultTable defaultTable2">
								<tbody>
								<c:forEach items="${selectAllDS.list}" var="list">
									<tr class="wd">
										<td class="t_1">${list.yd_id}</td>
										<td class="t_2_1">
											<a href="mendian_dtl?id=${list.dc_id}" class="team-a">${list.yd_name}</a>
										</td>
									</tr>
								</c:forEach>
								</tbody>
							</table>
							<!--pages S-->
							<div class="pageSelect">
							<span>共 <b>${NumAll}</b> 条 每页 <b>5 </b>条 </span>
							<div class="pageWrap">
								<a href="mendian_Team?pageNum=1" class="pagenumb">首页</a>
								<a href="mendian_Team?pageNum=${selectAllDS.pageNum-1}" class="pagePre"><i class="ico-pre">&nbsp;</i></a>
								<b>${selectAllDS.pageNum}</b>/<b>${selectAllDS.pages}</b>
								<a href="mendian_Team?pageNum=${selectAllDS.pageNum+1}" class="pagenext"><i class="ico-next">&nbsp;</i></a>
								<a href="mendian_Team?pageNum=${selectAllDS.pages}" class="pagenumb">尾页</a>
							</div>
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