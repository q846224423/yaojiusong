<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
		<form action="Tojump" method="post" >
		<table border="0" cellspacing="0" cellpadding="0">
			<tr><td class="title">用户名：</td><td><input type="text" class="form-control txt" name="username" /></td></tr>
			<tr><td class="title">密   码：</td><td><input type="password" class="form-control txt" name="pwd" /></td></tr>
			<tr><td class="title">验证码：</td><td><input type="text" class="form-control txt txt2" /><span class="yzm"><img src="images/yzm.jpg"/></span></td></tr>
			<tr><td>&nbsp;</td><td><input type="submit" class="loginbtn" value="登录" />
			<input type="button" class="resetbtn" value="立即注册" onclick="location.href='userzc' "/>
			</td></tr>		
			<tr><td>&nbsp;</td><td class="forgetpsw"></td></tr>	
		</table>
		</form>
		</div>
	</div>
</div>
<div class="footer">Copyright © 2016-2017 jianet  All Rights Reserved.</div>
</body>
</html>
