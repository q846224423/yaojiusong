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

.cc {
	background-color: rgb(240, 245, 241);
	height: 60px;
	line-height: 50px;
	font-size: 25px;
	font-weight: 550;
}

.cc span {
	margin-left: 500px;
}

.span a {
	text-decoration: none;
	font-size: 20px;
	font-weight: 300;
	margin-left: -1050px;
}

.cla {
	margin-left: 20px;
	margin-top: 20px;
}

.tab {
	margin-left: 130px;
	margin-top: -100px;
}

.dier {
	border-top: 1px solid rgb(221, 223, 224)
}
</style>
</head>
<body>
	 <div class="cc">
		<span>医生列表</span><span class="span"><a href="ii">返回</a></span>
	</div>
	<div class="dier">
	<c:forEach items="${yishishow}" var="show">
	
		<div class="cla">
			<img src="img/${show.d_head}" style="height: 100px;">
		</div>
	
		<table class="tab">
			<tr>
				<td>${show.d_name}</td>
			</tr>
			<tr>
				<td>${show.kb_name}</td>
			</tr>
			<tr>
				<td>${show.d_zc}</td>
			</tr>
			<tr>
				<td>${show.d_money}</td>
			</tr>
		</table>
		</c:forEach>
	</div> 
</body>
</html>
