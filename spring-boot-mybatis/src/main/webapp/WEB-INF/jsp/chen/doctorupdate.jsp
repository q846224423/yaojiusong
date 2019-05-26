<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>

<body style="background: #f6f5fa;">

	<!--content S-->

	<!--content E-->

	<form action="fileUploadController" method="post" enctype="multipart/form-data" >
	<div class="zx-dtlMain">
	<br />
		<dl>
			<dt>&nbsp;&nbsp;姓名 &nbsp; &nbsp;： &nbsp;</dt><dd><input style="border:solid skyblue; 1px" type="text" name="id" value=""required="required"></dd>&nbsp;&nbsp;&nbsp;
		</dl>
		<dl>
			 <dt>年龄 &nbsp; &nbsp;   : &nbsp; &nbsp;</dt><dd><input style="border:solid skyblue; 1px" type="text" name="id" value="" required="required" ></dd>
		</dl>
		<dl>
			<dt>性别 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd><input style="border:solid skyblue; 1px" type="text" name="id" value="" required="required"></dd>
		</dl>
		<dl>
			<dt>电话 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd><input style="border:solid skyblue; 1px" type="text" name="id" value="" required="required"></dd>
		</dl>

		<dl>
			<dt>科别 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd><input style="border:solid skyblue; 1px" type="text" name="id" value="" required="required"></dd>
		</dl>
		<dl>
			<dt>职位 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd><input style="border:solid skyblue; 1px" type="text" name="id" value="" required="required"></dd>
		</dl>
		<dl>
			<dt>头像 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd><input style="border: 1px" type="file" name="filename" value="" required="required"></dd>
		</dl>
		<center><input type="submit" value="提交"   style="width: 80px; height: 30px; background-color: #00B7EE;" /></center>
	</div>
		<form></form>


</body></html>