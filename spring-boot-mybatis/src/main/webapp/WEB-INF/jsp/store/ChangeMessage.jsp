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
     <!-- 1234 -->
<base target="_self">

<meta charset="UTF-8">
<title>修改</title>
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
//分类一变化与分类二中下拉框的联动
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
	})
	})
});
//根据id查出信息,并显示在本页面，实现记住信息
$(function(){
	var id1 = window.opener.document.getElementById("hidden_id").value;	
	$.ajax({
		url:"Remember",
		type:"post",
		data:{"id":id1},
		dataType:"json",
		success:function(data){
			//通过异步刷新获取，对象信息写入input框中
			//sname file price stock description
			$("#sname").val(data.menu3name);
			//$(".file").val(data.ep_url);
			$("#price").val(data.ep_price);
			$("#stock").val(data.ep_stock);
			$("#description").val(data.ep_description);
			
				},
		error:function(){
		alert("操作有误")
		}
	})
	}) 
//分类二下拉框变化
$(function(){
	$("#menu2").change(function(){
	//在open窗口用window.opener，引用父类对象
	var menu3id = window.opener.document.getElementById("hidden_id").value;
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
//当页面刷新时，或者跳转页面更新
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
<p id="title_p">修改商品</p>
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
<tr><td width="30%">商品名称</td><td width="70%"><input type="text" name="sname" id="sname" required >(必填)</td></tr>
<tr><td width="30%">商品图片</td><td width="70%"><img src=""><input type="file" name="file" id="file" ></td></tr>
<tr><td width="30%">单价</td><td width="70%"><input type="text" name="price" id="price" ></td></tr>
<tr><td width="30%">库存</td><td width="70%"><input type="text" name="stock" id="stock" ></td></tr>
<tr><td width="30%">描述</td><td width="70%"><textarea name="description" id="description" ></textarea></td></tr>
<tr><td width="30%"></td><td><input type="image" onclick="submitFrom()" src="images/确定.png"></td></tr>
</table>
</form></div>
</body>
</html>