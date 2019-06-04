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
		<div class="" ">
		
      <a class="button" href="doctorupdate">
       <c:choose>
        <c:when test="${doctor.d_change == 0}">信息修改</c:when>
  <c:when test="${doctor.d_change == 1}">审核中</c:when>
        <c:otherwise>
           <c:if test="${doctor.d_change == 2}">
             信息修改
     </c:if>
      </c:otherwise>
       </c:choose> 
</a>

       
		</div>
		<!--main-->
	</div>
	<!--content E-->
	
	<div class="zx-dtlMain">
		<div style="position: relative; width: 200px; height: 200px;  left: 70px; top: 6px;">
		<img src="${doctor.d_head}" /> </div>
		
		
		<dl>
	 &nbsp;	<dt>	 &nbsp;&nbsp;姓名 &nbsp; &nbsp;： &nbsp; &nbsp;</dt><dd>${doctor.d_name}</dd>&nbsp;&nbsp;
		</dl>
		<dl>
			 <dt>年龄 &nbsp; &nbsp;   : &nbsp; &nbsp;</dt><dd>${doctor.d_age}</dd>
		</dl>
		<dl>
			<dt>性别 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd>${doctor.d_sex}</dd>
		</dl>
		<dl>
			<dt>电话 &nbsp; &nbsp;: &nbsp; &nbsp;</dt>${doctor.d_tel}<dd>

		  <%-- <%=CommonControl.phone(${doctor.d_tel})%> --%>
			
			</dd>
		</dl>
		<dl>
			<dt>科室 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd>${doctor.ks_name}</dd>
		</dl>
		<dl>
			<dt>科别 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd>${doctor.kb_name}</dd>
		</dl>
		<dl>
			<dt>价格 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd>${doctor.d_money}</dd>
		</dl>

		<dl>
			<dt>职位 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd>${doctor.d_zc}</dd>
		</dl>
				
				
		<dl>
			<dt>认证 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd>
<%-- 			
			if(${doctor.d_control}=0){                                                           
			<a href="doctorrz">点我认证</a>			
			}else if((${doctor.d_control}=1){
			认证中
			}else{			
			已认证
			}
			
			 --%>
			
			<c:choose>
         <c:when test="${doctor.d_control == 0 }">
       <span><a href="doctorrz?id=${doctor.d_id}" style=" color: red">点我认证</a></span>
        </c:when>
        <c:otherwise>
           <c:if test="${doctor.d_control == 1 }">
       <span>认证中</span>
     </c:if>
      <c:if test="${doctor.d_control == 2 }">
     <span>已认证</span>
     </c:if>
      </c:otherwise>
       </c:choose>

			
			</dd>
		</dl>
		

		<dl>
			<dt>介绍 &nbsp; &nbsp;: &nbsp; &nbsp;</dt><dd>${doctor.d_introduce}</dd>
		</dl>
		 
		
	</div>
		


</body></html>