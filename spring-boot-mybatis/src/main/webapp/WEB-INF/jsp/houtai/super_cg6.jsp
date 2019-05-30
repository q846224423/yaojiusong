<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class=" js csstransforms3d"><head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>科别</title>
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
			<h2>科室科别管理</h2>
			<div class="head-right">
				<i class="ico-user"></i>当前用户：
				<div class="userslideDown">
					<a href="javascript:;" class="superUser">Admin<i class="ico-tri"></i></a>
					<div class="slidedownBox">
						<ul>
							<li><a href="#">修改密码</a></li>
							<li><a href="#">退出</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!--header-->
		<div class="superCtab">
			<div class="cg-title clearfix">
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
								<tr><th style="width: 40%; text-align: center;">科别号</th><th style="width: 40%; text-align: center;">科别名</th></tr>
							</tbody>
						</table>
					</div>
					<table border="0" cellspacing="0" cellpadding="0" class="defaultTable defaultTable2">
						<tbody>
							<tr>
								<td style="width: 40%; text-align: center;">1</td>
								<td style="width: 40%; text-align: center;">中医皮肤科</td>
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
		<!--main-->
		
	</div>
	<!--content E-->
	
	<div class="layuiBg"></div><!--公共遮罩-->
	<!--点击新建频道弹出-->
	<div class="addFeileibox layuiBox newPindaoBox">
		<div class="layer-title clearfix"><h2>新建科室</h2><span class="layerClose"></span></div>
		<div class="layer-content">
			<dl class="PD-list clearfix">
				<dt>科室号：</dt>
				<dd><input type="text" class="txt">
				</dd>
			</dl>
			<dl class="PD-list clearfix">
				<dt>科室名称：</dt>
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
		<div class="layer-title clearfix"><h2>修改</h2><span class="layerClose"></span></div>
		<div class="layer-content">
			<dl class="PD-list clearfix">
					<dt>科别：</dt>
					<dd>
						<select id="kebie" class="txt">
							<option>小儿皮肤科</option>
							<option>中医皮肤科</option>
						</select>
					</dd>
				</dl>
			<dl class="PD-list clearfix">
				<input type="button" value="保存" class="saveBtn">
			</dl>
		</div>
	</div>
	


</body></html>