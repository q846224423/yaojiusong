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
<c:forEach items="${pageInfo.list}" var="a" varStatus="vstatus">
<img src="img/${list.d_head}" style="height: 80px;">
<td>${list.d_name}</td>
</c:forEach>
</body>
</html>