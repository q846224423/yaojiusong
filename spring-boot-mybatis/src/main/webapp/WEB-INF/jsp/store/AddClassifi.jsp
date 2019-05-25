<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加分类</title>
<script type="text/javascript">
window.onunload = onbeforeunload_handler;
function onbeforeunload_handler(){
window.opener.location.href = window.opener.location.href;
window.close();
}
function submitFrom(){
//window.opener.document.getElementById("resvalue").value = "1";
//返回父窗口的值
window.opener.reload();
}



</script>
</head>
<body>
<p id="title_p">添加分类</p>
<div id="top_div">
<form action="AddClassifiServlet2" method="post">
<table class="order_tab"  style="width:500px; margin-bottom:30px;" cellspacing="0" cellpadding="6" >


<!-- 二级分类 -->
<tr><td width="25%" >父分类 </td><td width="50%">分类名称</td><td width="25%"td>操作</td></tr>
<tr>
<td><select id="menu1" name="menu1">
<option value="0">无</option>
<c:forEach items="${meu1list }" var="menu1">
<option value="${menu1.menu1id }" >${menu1.menu1name }</option>
</c:forEach>
   </select></td>
<td><input type="text" name="sname" required >(必填)</td> 
<td><input type="image" onclick="submitFrom()" src="images/确定.png"></td>
</tr>
<tr></tr>
</table>
</form></div>
</body>
</html>