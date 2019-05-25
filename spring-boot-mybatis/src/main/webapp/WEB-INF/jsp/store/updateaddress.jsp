<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改收货地址</title>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript">
    	$(function(){
			$.ajax({
				"url":"PositionServlet",
				"type":"post",
				"data":{"demo":"province"},
				"dataType":"json",
				"success":function(res){
					 $.each(res,function(){
						$("#province").append('<option value="'+this.provinceCode+'" >'+this.provinceName+'</option>');
					 }) 
				}
			})
			$("#province").change(function(){
				var provinceCode = $(this).val();
				$.ajax({
				"url":"PositionServlet",
				"type":"post",
				"data":{"demo":"city","provinceCode":provinceCode},
				"dataType":"json",
				"success":function(res){
					$("#city>option:gt(0)").remove();
					 $.each(res,function(){
						$("#city").append('<option value="'+this.cityCode+'" >'+this.cityName+'</option>');
					 }) 
				}
			})
		})
		 $("#city").change(function(){
				var cityCode = $(this).val();
				$.ajax({
				"url":"PositionServlet",
				"type":"post",
				"data":{"demo":"area","cityCode":cityCode},
				"dataType":"json",
				"success":function(res){
					$("#area>option:gt(0)").remove();
					 $.each(res,function(){
						$("#area").append('<option value="'+this.areaCode+'" >'+this.areaName+'</option>');
					 }) 
				}
			})
		}) 
	})
	</script>
	<script>
	//当页面刷新时，或者跳转页面更新
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

	<form action="FjtupdateAddressServlet" method="post">
	<table border="0" class="add_t" align="center" style="width:98%; margin:30px 20px;" cellspacing="0" cellpadding="5">
                  <tr>
                    <td colspan="2" style="font-size:14px; color:#ff4e00;">繁星公司</td>
                  </tr>
                  <tr>
                    <td align="right" width="100">收货人姓名：</td>
                    <td><%-- ${requestScope.li.shopName} --%>
                    	<input type="text" value="${requestScope.li.shopName}" name="shopName"/>
                    </td>
                  </tr>
                  <td width="135" align="right">配送地区：</td>
                   <td colspan="3" style="font-family:'宋体';">
                	<select id="province" style="font-size: 14px;" name="province" >
					<option value="0">请选择省...</option>
					</select> <br/>
                	<select  id="city" style="font-size: 14px" name="city">
                      <option value="0" >请选择市...</option>
                    </select><br/>
                    <select   id="area" style="font-size: 14px;" name="area">
                      <option value="0" >请选择区(县)...</option>
                    </select>
                    （必填）
                </td>
                	<%-- <tr>
                    <td align="right">省：</td>
                    <td>${requestScope.li.shopXxaddress}<input type="text" value="${requestScope.li.provinceName}"/></td>
                  </tr>
                  <tr>
                    <td align="right">市：</td>
                    <td>${requestScope.li.shopXxaddress}<input type="text" value="${requestScope.li.cityName}"/></td>
                  </tr>
                  <tr>
                    <td align="right">：县（区）</td>
                    <td>${requestScope.li.shopXxaddress}<input type="text" value="${requestScope.li.areaName}"/></td>
                  </tr> --%>
                  <tr>
                  <input type="hidden" value="${requestScope.addid}" name="addid"/>
                    <td align="right">详细地址：</td>
                    <td><%-- ${requestScope.li.shopXxaddress} --%><input type="text" value="${requestScope.li.shopXxaddress}" name="shopXxaddress"/></td>
                  </tr>
                  <tr>
                    <td align="right">手机：</td>
                    <td><%-- ${requestScope.li.shopPhone} --%><input type="text" value="${requestScope.li.shopPhone}" name="shopPhone"/></td>
                  </tr>
                  <tr>
                    <td align="right">电话：</td>
                    <td><%-- ${requestScope.li.shopIPhoen} --%><input type="text" value="${requestScope.li.shopIPhoen}" name="shopIPhoen"/></td>
                  </tr>
                  <tr>
                    <td align="right">电子邮箱：</td>
                    <td><%-- ${requestScope.li.shopEmail} --%><input type="text" value="${requestScope.li.shopEmail}" name="shopEmail"/></td>
                  </tr>
                  <tr>
                    <td align="right">标志建筑：</td>
                    <td><%-- ${requestScope.li.shopBuild} --%><input type="text" value="${requestScope.li.shopBuild}" name="shopBuild"/></td>
                  </tr>
                  <tr>
                  	<td><input type="submit" onclick="submitFrom()" value="修改"/></td>
                  </tr>
                </table>
                </form>
</body>
</html>