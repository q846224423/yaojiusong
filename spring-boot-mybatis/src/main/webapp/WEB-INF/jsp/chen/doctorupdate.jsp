<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>咨询管理-通用咨询详情页</title>
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
<!-- 	分类一变化与分类二中下拉框的联动  -->
	<script type="text/javascript">
	$(function(){
		$("#ks").change(function(){
		var id = $(this).val();

		$.ajax({
			url:"doctorkb",
			type:"post",
			data:{"id":id},
			dataType:"json", 
			success:function(data){			  
				$("#kb").text("");
				
				for(var i in data){ 
					$("#kb").append('<option value="'+data[i].kb_id+'" >'+data[i].kb_name+'</option>');			
						}
					},
					error:function(){
						
					}
		})
		})
	});
	</script>
	
	
	
</head>

<body style="background: #f6f5fa;">

	<!--content S-->

	<!--content E-->

	<form action="examine" method="post" enctype="multipart/form-data" >
	<div class="zx-dtlMain">
	<br />
		<dl>
			<dt>&nbsp;&nbsp;姓名 &nbsp; &nbsp;： &nbsp;</dt><dd><input style="border:solid skyblue; 1px" type="text" name="d_name" value="${doctor.d_name}" required="required"></dd>&nbsp;&nbsp;&nbsp;
		</dl>
		<dl>
			 <dt>年龄 &nbsp; &nbsp;   : &nbsp; &nbsp;</dt><dd><input style="border:solid skyblue; 1px" type="text" name="d_age" value="${doctor.d_age}" required="required" ></dd>
		</dl>
		<dl>
			<dt>性别 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd><input style="border:solid skyblue; 1px" type="text" name="d_sex" value="${doctor.d_sex}" required="required"></dd>
		</dl>
		<dl>
			<dt>电话 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd><input style="border:solid skyblue; 1px" type="text" name="d_tel" value="${doctor.d_tel}" required="required"></dd>
		</dl>
		<dl>
			<dt>科室 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd>
			<select id="ks" name="ks"   style="border:solid skyblue; 1px">
			<option>-请选择-</option>
             <c:forEach items="${Ks}" var="ks1">
              <option value="${ks1.ks_id }" >${ks1.ks_name}</option>
              </c:forEach>
   </select>
			
			
			</dd>
		</dl>
		<dl>
			<dt>科别 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd>
			
			<select id="kb" name="kb"><option>-请选择-</option></select>
			
			
			
			</dd>
		</dl>
		<dl>
			<dt>价格 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd><input style="border:solid skyblue; 1px" type="text" name="d_money" value="${doctor.d_money}" required="required"></dd>
		</dl>
		<dl>
			<dt>职位 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd><input style="border:solid skyblue; 1px" type="text" name="d_zc" value="${doctor.d_zc}" required="required"></dd>
		</dl>
		<dl>
			<dt>介绍&nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd><textarea  name="d_introduce" style=" border:solid skyblue; 1px " required="required">${doctor.d_introduce} </textarea></dd>
		</dl>
		<dl>
			<dt>头像 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd><input style="border: 1px" type="file" name="filename"  required="required"></dd>
		</dl>
		<center><input type="submit" value="提交"   style="width: 80px; height: 30px; background-color: #00B7EE;" /></center>
	</div>
		</form>


</body></html>