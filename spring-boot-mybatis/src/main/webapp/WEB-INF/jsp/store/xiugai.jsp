<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改用户</title>
<style >
  table{border-collapse:collapse;border-spacing:0;border-left:1px solid #888;border-top:1px solid #888;background:#efefef;}
th,td{border-right:1px solid #888;border-bottom:1px solid #888;padding:5px 15px;}
th{font-weight:bold;background:#ccc;}
  
  </style>
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
   <div style="margin-left: 75px">
   
              <div style="font-size: 18px;  padding-top:15px ; margin-top: 30px;">修改用户</div>

      <form action="YhXiuGaiCp" method="post">
       <table border="1" cellspacing="0px" >
       <tr>
       <td  style="width: 100px; height: 50px ">用户名称</td>
       <td  style="width: 270px; "><input type="text" name="uname" value=${name} /></td>
       </tr>
        <tr>
       <td style="width: 100px; height: 50px ">电话号码</td>
       <td><input type="text" name="iphone" value=${iphone} /></td>
       </tr>
        <tr>
       <td style="width: 100px; height: 50px ">邀请人名</td>
       <td><input type="text" name="yqr" value=${tjr} /></td>
       </tr>
        <tr>
       <td style="width: 100px; height: 50px;">类型</td>
       <td>
       <select name="xlkname">
       <option value=${leixin=="管理员"?"admin":"menber"} selected = "selected">${leixin=="管理员"?"管理员":"会员"}</option>
        <option value="admin">管理员</option>
         <option value="member">会员</option>
       </select>
       
       </td>
       </tr>
        <tr>
       <td style="width: 100px; height: 50px "></td>
       <td ><div style="background-color: darkgrey;width: 100px; height: 40px; text-align: center;line-height: 40px; "><a><input value="修改信息" type="submit"  onclick="submitFrom()" /> </a></div></td>
       
       </tr>
       </table>
   </form>
   </div>
</body>
</html>