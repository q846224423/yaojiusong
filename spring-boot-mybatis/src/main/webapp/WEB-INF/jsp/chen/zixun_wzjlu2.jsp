<%@page import="com.java.controller.*"%>
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
	
	<style type="text/css">
	.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    position: relative;
    top: 128px;
    left: 1495px;
}
	
	
	</style>
</head>

<body style="background: #f6f5fa;">

	<!--content S-->
	<div class="">

		<!--main-->
	</div>
	<!--content E-->
	
	<div class="zx-dtlMain">
<br>
		<dl>
		<dt></dt>
		
		</dl>
		
		<dl>
	 &nbsp;	<dd>&nbsp;&nbsp;医生姓名 &nbsp; &nbsp;： &nbsp; </dd><dd>${userone.d_name}</dd>&nbsp;&nbsp;
		</dl>
		<dl>
			 <dt>用户姓名 &nbsp; &nbsp;   : &nbsp; &nbsp;</dt><dd>${userone.user_name}</dd>
		</dl>
		<dl>
			<dt>用户性别 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd>${userone.user_sex}</dd>
		</dl>
		<dl>
			<dt>用户电话 &nbsp; &nbsp;: &nbsp; &nbsp;</dt>${userone.user_tel}<dd>

			
			</dd>
		</dl>
  
		<dl>
			<dd>
						<c:choose>
         <c:when test="${userone.isOpenDrug==0}">
       &nbsp;    &nbsp;  是否开处方     &nbsp;     :&nbsp;  &nbsp; 是
        </c:when>
           <c:otherwise>
         
       &nbsp;     &nbsp;  是否开处方 &nbsp;:&nbsp;&nbsp;  否
        
         </c:otherwise>
          </c:choose>
						
			
			
			
			
			
			
			
		</dd>
		</dl>

		 
		
	</div>
		


</body></html>