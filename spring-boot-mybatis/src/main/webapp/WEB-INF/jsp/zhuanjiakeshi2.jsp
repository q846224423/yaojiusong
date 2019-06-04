<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<style>
			*{
				margin: 0px;
				padding: 0px;
			}
			.cc{
				height: 75px;
				background-color:rgb(240,245,241);
			}
			.input{
				line-height:70px;
				margin-left:30px;
			}
			.img{
				margin-left: 1050px;
				margin-top: -55px;
			}
			a{
			 text-decoration: none;	
			 color: rgb(51,51,51);
			}
			.table tr td{
				width: 337px;
				height: 130px;
				 text-align: center;vertical-align:middle;
				border:solid 1px white;
				font-size: 20px;
				
			background-image: linear-gradient(to top, rgb(235,241,241), rgb(241,247,247));
			}
			.ta{
				padding-top: 80px;
				width="1348px";
			}
			.ta tr td{
				width:670px;
				height: 60px;
				text-align: center;vertical-align:middle;
				border:solid 1px rgb(223,223,223);
				font-size: 20px;
			}
		</style>
	</head>
	<body>
		<div class="cc">
			<div class="input"><input type="text" style="height: 34px; width: 1000px; "placeholder="输入科室名查找" /></div>
			<div class="img"><img src="img/1558498361(1).jpg"></div>
		</div>
		<img src="img/123.jpg" width="1270px"/>
		<div class="table">
			<table  border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse;">
			<tr>
					<td><a href="yisheng?id=${keshi[0].ks_id}">${keshi[0].ks_name}</a></td>
					<td><a href="yisheng?id=${keshi[1].ks_id}">${keshi[1].ks_name}</a></td>
					<td><a href="yisheng?id=${keshi[2].ks_id}">${keshi[2].ks_name}</a></td>
					<td><a href="yisheng?id=${keshi[3].ks_id}">${keshi[3].ks_name}</a></td>
				</tr> 
				<tr>
					<td><a href="yisheng?id=${keshi[4].ks_id}">${keshi[4].ks_name}</a></td>
					<td><a href="yisheng?id=${keshi[5].ks_id}">${keshi[5].ks_name}</a></td>
					<td><a href="yisheng?id=${keshi[6].ks_id}">${keshi[6].ks_name}</a></td>
					<td><a href="yisheng?id=10">其他</a></td>
				</tr> 
				
			</table>
			
		</div>
		<div class="ta">
			<table border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse;">
			<tr>
				<td>我的预约</td>
				<td>使用帮助</td>
			</tr>
			</table>
		</div>
	</body>
</html>
