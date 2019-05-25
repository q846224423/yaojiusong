<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
  function chakan(){
	  alert(123);
	  $("#asd").html("你是个傻逼吧");
  }

</script>
</head>
<body>
<input type="password" name="password"  id="id1" />
<input type="password" name="password"  id="id2" /><span id="asd"></span>
<input type="button" value="提交" onclick="chakan()" />
</body>
</html>