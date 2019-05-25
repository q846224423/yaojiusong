<%@page import="com.shop.entity.Menu3"%>
<%@page import="com.shop.entity.Menu2"%>
<%@page import="com.shop.entity.Menu1"%>
<%@page import="java.util.List"%>
<%@page import="com.shop.daoimpl.MenuDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加商品</title>
<style>
#title_p{
font-size: 20px;
font-weight:bold;
margin-bottom: 35px;
}
.order_tab{
width:500px; margin-bottom:30px;position: absolute;left: 40px;
}
table{border-collapse:collapse;border-spacing:0;border-left:1px solid #888;border-top:1px solid #888;background:#efefef;}
th,td{border-right:1px solid #888;border-bottom:1px solid #888;padding:5px 15px;}
th{font-weight:bold;background:#ccc;}
</style>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script>
$(function(){
	$("#menu1").change(function(){
	var id = $(this).val();
	$.ajax({
		url:"OptionServlet",
		type:"post",
		data:{"type":"menu1","id":id},
		dataType:"json",
		success:function(data){
			
			$("#menu2").text("");
			$("#menu2").append("<option>-请选择-</option>");
			for(var i in data){//'<option value="'+data[i].menu2id+'" >'+data[i].menu2name+'</option>'
				$("#menu2").append('<option value="'+data[i].menu2id+'" >'+data[i].menu2name+'</option>');			
					}
					
				},
				error:function(){
					alert("操作有误")
				}
	});
	})
});
/* 利用ajax实现修改,给隐藏表单传值 */
/* $("document").ready(function(){
	//alert(window.dialogArguments);
	var menu3id = window.dialogArguments.document.getElementById("hidden_id").value;
	
	//alert("分类id:"+menu1id+menu2id+menu3id);
	$("#menu3id").attr("value",menu3id);
	$("#menu3id").attr("value",menu3id);
	$("#menu3id").attr("value",menu3id);
		
}); */
$(function(){
	$("#menu2").change(function(){
	var menu3id = 0;
	var menu2id = $("#menu2").val();
	var menu1id = $("#menu1").val();
	/* alert(menu1id);
	alert(menu2id);
	alert(menu3id); */ 
	$("#menu3id").attr("value",menu3id);
	$("#menu2id").attr("value",menu2id);
	$("#menu1id").attr("value",menu1id);
	//alert("123:"+$("#menu1id").val()+($("#menu2id").val())+($("#menu3id").val()));
	})
});
//实现关闭子窗口，刷新父窗口，更新数据
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
<%
MenuDaoImpl mdi = new MenuDaoImpl();
List<Menu1> list1 =mdi.selectA1();
%>
<c:set var="list1" value="<%=list1 %>" ></c:set>
<p id="title_p">添加商品</p>
<div id="top_div">
<form action="RemoveMenu3" method="post" enctype="multipart/form-data"  >
<table class="order_tab"  style="width:500px; margin-bottom:30px;" cellspacing="0" cellpadding="6" >
<!-- 一级分类 -->
<tr>         
<td width="30%">一级分类：</td>
<td width="70%"><select id="menu1" name="menu1">
<option value="">-请选择-</option>
<c:forEach items="${list1 }" var="menu1">
<option value="${menu1.menu1id }" >${menu1.menu1name }</option>
</c:forEach>
   </select></td>
</tr>

<!-- 二级分类 -->
<tr>         
<td width="30%">二级分类：</td><td width="70%">
<select id="menu2" name="menu2"><option>-请选择-</option></select></td>
</tr>
<input id="menu1id" type="hidden" name="menu1id" />
<input id="menu2id" type="hidden" name="menu2id" />
<input id="menu3id" type="hidden" name="menu3id" />
<tr><td width="30%">商品名称</td><td width="70%"><input type="text" name="sname" required >(必填)</td></tr>
<tr><td width="30%">商品图片</td><td width="70%"><img src=""><input type="file" name="file"></td></tr>
<tr><td width="30%">单价</td><td width="70%"><input type="text" name="price" ></td></tr>
<tr><td width="30%">库存</td><td width="70%"><input type="text" name="stock" ></td></tr>
<tr><td width="30%">描述</td><td width="70%"><textarea name="description"></textarea></td></tr>
<tr><td width="30%"></td><td><input type="image" onclick="submitFrom()" src="images/确定.png"></td></tr>
</table>
</form></div>
</body>
</html>