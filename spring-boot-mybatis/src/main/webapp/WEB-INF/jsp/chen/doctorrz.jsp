<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<title>认证界面</title>
	</head>
	<body>
		<center>
		 <div style="width:500px ; height: 500px; position: relative; top: 20px; left: 20px; border: 	;">
		<form action="fileUploadController" method="post" enctype="multipart/form-data" >
  <center> 
  	<br />
  	<br />
  		<br />
  			<br />
  				<br />
  					<br />
     行医资格：<input style="border: 1px" type="file" name="filename" value="" required="required"><br/>
     <br />
       身份证 ：<input style="border: 1px" type="file" name="filename" value="" required="required"><br/>
            <br />

       
   <input type="submit" value="提交"   style="width: 80px; height: 30px; "/>
    </center> 
</form>
		</div></center>
		
		
		
	</body>
</html>