<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>用户登录</title>
	<link rel="stylesheet" href="css/base.css" />
	<link rel="stylesheet" href="css/login.css" />
</head>
<body>
<div class="superlogin"></div>
<div class="loginBox">
	<div class="loginMain">
		<div class="tabwrap">
		<table border="0" cellspacing="0" cellpadding="0">
			<tr><td class="title">用户名：</td><td><input type="text" class="form-control txt" /></td></tr>
			<tr><td class="title">密   码：</td><td><input type="password" class="form-control txt" /></td></tr>
			<tr><td class="title">验证码：</td><td><input type="text" class="form-control txt txt2" /><span class="yzm"><img src="images/yzm.jpg"/></span></td></tr>
			<tr class="errortd"><td>&nbsp;</td><td><i class="ico-error"></i><span class="errorword">用户名或密码错误，请重新输入！</span></td></tr>		
			<tr><td>&nbsp;</td><td><input type="button" class="loginbtn" value="登录" onclick="location.href='index.html'"/><input type="button" class="resetbtn" value="重置" onclick="location.href=''"/></td></tr>		
			<tr><td>&nbsp;</td><td class="forgetpsw"></td></tr>	
		</table>
		</div>
	</div>
</div>
<div class="footer">Copyright © 2016-2017 jianet  All Rights Reserved.</div>
</body>
</html>