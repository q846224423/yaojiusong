<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加用户</title>
</head>
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
<body>
 <div style="margin-left: 75px">
   
              <div style="font-size: 18px;  padding-top:15px ; ">添加用户</div>

      <form action="InsertServlet" method="post">
       <table border="1" cellspacing="0px" >
       <tr>
       <td  style="width: 100px; height:47px ">用户名称</td>
       <td  style="width: 270px; "><input type="text" name="uname"  /></td>
       </tr>
        <tr>
       <td style="width: 100px; height: 47px ">帐户密码</td>
       <td><input type="password" name="upwd"  /></td>
       </tr>
        <tr>
       <td style="width: 100px; height: 47px ">帐户电话</td>
       <td><input type="text" name="uiphone"/></td>
       </tr>
        <tr>
       <td style="width: 100px; height: 47px;">邀请人</td>
       <td><input type="text" name="utjr"/></td>
       </tr>
       <tr>
       <td style="width: 100px; height: 47px;">类型</td>
       <td>
       <select name="xlkname">
        <option value="admin">管理员</option>
         <option value="member">会员</option>
       </select>
       </td>
       </tr>
        <tr>
       <td style="width: 100px; height: 47px "></td>
       <td ><div style="background-color: darkgrey;width: 100px; height: 40px; text-align: center;line-height: 40px; "><a><input value="确认增加" type="submit"  onclick="submitFrom()" /> </a></div></td>
       
       </tr>
       </table>
   </form>
   </div>
</body>
</html>