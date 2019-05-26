<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>药店名称</td>
			<td>城市id</td>
			<td>药店评价</td>
			<td>药店登记信息</td>
			<td>认证状态</td>		
		</tr>
	<c:forEach items="${fj}" var="fj">
		<tr>
			<td>${fj.yd_name }</td>
			<td>${fj.county_id }</td>
			<td>${fj.comment}</td>
			<td>${fj.regist_info}</td>
			<td>${fj.yd_statu}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>