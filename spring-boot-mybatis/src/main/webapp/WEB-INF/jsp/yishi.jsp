<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}
   .biaoge{
   background-color:rgb(240, 245, 241);
   height: 80px;
   	
    border-top:1px solid  rgb(175, 174, 174);
   }
.cc {
	background-color: rgb(240, 245, 241);
	height: 45px;
	line-height: 35px;
	font-size: 20px;
	font-weight: 500;
}

.cc span {
	margin-left: 400px;
}

.span a {
	text-decoration: none;
	font-size: 15px;
	font-weight: 600px;
	margin-left: -870px;
	color:rgb(175,175,175);
	
}

.cla {
	margin-left: 20px;
	margin-top: 1px;
	
}

.tab {
	margin-left: 106px;
	margin-top: -80px;
	font-size: 13px;
}

.sss{
				height: 35px;
				width: 65px;
				background-color: rgb(8,194,207);
				 text-align:center;
				 line-height: 35px;
				  border-radius: 8px;
				  color: white;
				 position: relative;
				  left: 1100px;
				   top:-60px;
				   font-size:13px;
				   
				  
			}
		.sss	a{
				text-decoration: none;
				 color: white;
			}
			.sss:hover{
				background-color: rgb(4,176,188)
				}
.sss1{
    display: inline-block;	
	height: 35px;
				width: 65px;
				background-color: rgb(8,194,207);
				 text-align:center;
				 line-height: 35px;
				  border-radius: 8px;
				  color: white;
				 position: relative;
				  left: 1100px;
				   top:-60px;
				   font-size:13px;
}
.sss1	a{
				text-decoration: none;
				 color: white;
			}
		.qwe{
		margin-top: 75px;
		margin-left: -160px;
		}
</style>
</head>
<body>
	 <div class="cc">
		<span>医生列表</span><span class="span"><a href="ii">返回</a></span>
	</div>
	<c:forEach items="${pageInfo.list}" var="list">
	<div class="biaoge">
	
		<div class="cla">
			<img src="img/${list.d_head}" style="height: 80px;">
		</div>
	
		<table class="tab">
			<tr>
				<td>${list.d_name}</td>
			</tr>
			<tr>
				<td>${list.kb_name}</td>
			</tr>
			 <tr>
				<td>${list.d_zc}</td>
			</tr> 
			<tr>
				<td>￥${list.d_money}</td>
			</tr>
		</table>
		<div class="sss">
			<a href="yishengone?ks_id=${list.ks_id}&d_id=${list.d_id}&pageNum=${pageInfo.pageNum}">
			${list.d_state==0?"忙碌中":"在线"}</a>
		</div>
		</div>
		</c:forEach>
		<div class="qwe">
	<div class="sss1">	<a href="yisheng?pageNum=1&id=${id}">首页</a></div>
	<div class="sss1"><a href="yisheng?pageNum=${pageInfo.pageNum-1}&id=${id}">上一页</a></div>
	<div class="sss1"><a href="yisheng?pageNum=${pageInfo.pageNum+1}&id=${id}">下一页</a></div>
	<div class="sss1"><a href="yisheng?pageNum=${pageInfo.pages}&id=${id}">尾页</a></div>
	</div>
</body>
</html>
