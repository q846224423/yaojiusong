<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加新闻</title>
<script type="text/javascript">
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
<form action="addnewsservlet" method="post">
<center> <h2 style="color: red"> 新闻资讯添加</h2>               </center>
<center> 标题: <input     type="text"  name="bt" required/>         </center> <br>
<center> 内容: <textarea  name="nr"     required></textarea>       </center><br>
<center>       <input    type="submit" value="确定"  onclick="submitFrom()" />          </center>
</form>
</body>
</html>