<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					<h3>行医资格</h3>
				</div>
				<div class="ctab-Main">
					<div class="ctab-Main-title">
						<ul class="clearfix">
							<li >
								<a href="yishi_guanli.html">医师信息</a>
							</li>
							<li >
								<a href="yishi_Team.html">信息审核</a>
							</li>
							<li class="cur">
								<a href="xingyi_Team.html">行医资料</a>
							</li>
						</ul>
					</div>
				<div class="ctab-Main">
					<div class="ctab-Mian-cont">
						<div class="Mian-cont-btn Mian-cont-btn2 clearfix">
							<div class="operateBtn">
								<div class="wd-msg">您有 <span>2</span> 条未读咨询信息！</div>
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
											<th class="t_1">医师编号</th>
											<th class="t_2_1">行医资料</th>
											<th>操作</th>
										</tr>
									</tbody>
								</table>
							</div>
							<table border="0" cellspacing="0" cellpadding="0" class="defaultTable defaultTable2">
								<tbody>
									<tr class="wd">
										<td class="t_1">2015001</td>
										<td class="t_2_1">
											<a href="xingyi_dtl.html" class="team-a">张三行医资料</a>
										</td>
										<td class="alcenter">
											<a href="xingyi_dtl.html" class="export-a">查看修改信息</a>
										</td>
									</tr>
								</tbody>
							</table>
							<!--pages S-->
							<div class="pageSelect">
								<span>共 <b>188</b> 条 每页 <b>10 </b>条   1/18</span>
								<div class="pageWrap">
									<a class="pagePre"><i class="ico-pre">&nbsp;</i></a>
									<a href="#" class="pagenumb cur">1</a>
									<a href="#" class="pagenumb">2</a>
									<a href="#" class="pagenumb">3</a>
									<a href="#" class="pagenext"><i class="ico-next">&nbsp;</i></a>
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