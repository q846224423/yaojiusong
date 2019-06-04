<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class=" js csstransforms3d"><head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
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
			<h2>订单管理</h2>
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
							<tr><th class="td_6">处方订单号</th>
							<th class="td_7">用户姓名</th>
							<th class="td_12">医生姓名</th>
							<th class="td_12">医生电话</th>
							<th class="td_12">处方笺</th>
							<th class="td_8">下单时间</th>
							<th class="td_11">配送状态</th>
							<th class="td_10">操作</th>
							</tr>
						</tbody></table>
					</div>
					<table border="0" cellspacing="0" cellpadding="0" class="defaultTable defaultTable2">
						<tbody>
					<c:forEach items="${ydcfOrder }" var="cf">
						<tr>
							<td class="td_6">${cf.r_id }</td>
							<td class="td_7"><a href="userxq?user_id=${cf.user_id }">${cf.user_name }</a></td>
							<td class="td_12">${cf.d_name }</a></td>
							<td class="td_12">${cf.d_tel }</a></td>
						    <td class="td_12">
						<div class="btn">
                         <a href="orderxxx?r_id=${cf.r_id }" style="background: #ff980b; color: #fff;" > 查看</a><br />
                         
						</div>
						    
						    
						    </td>
							<td class="td_8"><a href="#" >${cf.r_time }</a></td> 
							<td class="td_11">
							<c:choose>
							<c:when test="${cf.isGetMedicine==0 }">未发货</c:when>
							<c:when test="${cf.isGetMedicine==1 }">已发货</c:when>
							<c:when test="${cf.isGetMedicine==2 }">已签收</c:when>
							<c:otherwise></c:otherwise>
							</c:choose>
							</td> 	
							<td class="td_10"><div class="btn"><a href="ydcfwyfh?r_id=${cf.r_id }&yd_id=${cf.yd_id }" class="modify">发货</a></div></td>
						</tr>
						
					</c:forEach>	
					</tbody></table>
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

	<!--点击修改弹出-->
	<div class="xcXgBox layuiBox newPindaoBox newPindaoBox-xg">
		<div class="layer-title clearfix"><h2>修改</h2><span class="layerClose"></span></div>
		<div class="layer-content">
			<img src="${cf.r_tel }" />
		</div>
	</div>
	


</body></html>