<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/index/style.css" />
<!--[if IE 6]>
    <script src="js/index/iepng.js" type="text/javascript"></script>
        <script type="text/javascript">
           EvPNG.fix('div, ul, img, li, input, a'); 
        </script>
    <![endif]-->

<script type="text/javascript" src="js/index/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/index/menu.js"></script>
 <script type="text/javascript" src="js/index/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="js/index/menu.js"></script>    
        
	<script type="text/javascript" src="js/index/select.js"></script>
	<script type="text/javascript">
    	jQuery(function(){
			jQuery.ajax({
				"url":"getProvince",
				"type":"post",
				"data":{},
				"dataType":"json",
				"success":function(res){
					jQuery.each(res,function(){
						jQuery("#province").append('<option value="'+this.provinceCode+'" >'+this.provinceName+'</option>');
					 }) 
				}
			})
			jQuery("#province").change(function(){
				var provinceCode = jQuery(this).val();
				jQuery.ajax({
				"url":"getCity",
				"type":"post",
				"data":{"provinceCode":provinceCode},
				"dataType":"json",
				"success":function(res){
					jQuery("#city>option:gt(0)").remove();
					jQuery.each(res,function(){
						jQuery("#city").append('<option value="'+this.cityCode+'" >'+this.cityName+'</option>');
					 }) 
				}
			})
		})
		 jQuery("#city").change(function(){
				var cityCode = jQuery(this).val();
				jQuery.ajax({
				"url":"getArea",
				"type":"post",
				"data":{"cityCode":cityCode},
				"dataType":"json",
				"success":function(res){
					jQuery("#area>option:gt(0)").remove();
					jQuery.each(res,function(){
						jQuery("#area").append('<option value="'+this.areaId+'" >'+this.areaName+'</option>');
					 }) 
				}
			})
		}) 
		
		
		
		 jQuery("#area").change(function(){
				var cit = jQuery(this).val();
				jQuery.ajax({
				"url":"yaodian",
				"type":"post",
				"data":{"cit":cit},
				"dataType":"json",
				"success":function(res){
					jQuery("#yao>option:gt(0)").remove();
					jQuery.each(res,function(){
						jQuery("#yao").append('<option value="'+this.yd_id+'" >'+this.yd_name+'</option>');
					 }) 
				}
			})
		}) 
		
		
	})
	</script>
<script type="text/javascript" src="js/index/select.js"></script>
<style> 
        .black_overlay{ 
            display: none; 
            position: absolute; 
            top: 0%; 
            left: 0%; 
            width: 100%; 
            height: 100%; 
            background-color: black; 
            z-index:1001; 
            -moz-opacity: 0.8; 
            opacity:.80; 
            filter: alpha(opacity=88); 
        } 
        .white_content { 
            display: none; 
            position: absolute; 
            top: 25%; 
            left: 43%; 
            width: 54%; 
            height: 55%; 
            padding: 20px; 
            border: 10px solid peachpuff; 
            background-color: white; 
            z-index:1002; 
            overflow: auto; 
        } 
        .cont{
				  display: none; 
    position: fixed; 
    top: 25%; 
    left: 25%; 
    width: 50%; 
    height: 50%; 
    padding: 20px; 
    border: 1px solid rgb(205,205,205); 
    background-color: rgb(246,246,246);
    color:#004680;
    z-index:1; 
    overflow: auto; 
			}
			.cont1{
				  display: none; 
    position: fixed; 
    top: 25%; 
    left: 25%; 
    width: 50%; 
    height: 50%; 
    padding: 20px; 
    border: 1px solid rgb(205,205,205); 
    background-color: rgb(246,246,246);
    color:#004680;
    z-index:1; 
    overflow: auto; 
			}
		#xiala{
		margin-top: 0px;
		}
				#address{
				text-align: center;
				font-size: 20px;
				font-weight: 600;
			}
			select{
				width: 80px;
				height: 20px;
			}
			.sanji{
				padding-bottom: 20px;
			}
			#sss{
				height: 40px;
				width: 85px;
				background-color: rgb(8,194,207);
				 text-align:center;
				 line-height: 40px;
				  border-radius: 8px;
				  color: white;
 	margin-left: 250px;	
			}
			a{
				text-decoration: none;
			}
			
			.sss:hover{
				background-color: rgb(4,176,188)
				}
				
				#gb{
					margin-left: 590px;
				}
    </style> 

<script>
function openDialog(){
    document.getElementById('light').style.display='block';
    document.getElementById('fade').style.display='block'
}
function closeDialog(){
    document.getElementById('light').style.display='none';
    document.getElementById('fade').style.display='none'
}



	function change_pwd() {
		jQuery("#input_pwd").show();
	}

	function change_message() {
		window.location.href = "toupdateMessage";
	}
	function check() {
		if (document.form2.pwd.value == "") {
			jQuery("#tishi").text("请输入登录密码!");
			return false;
		}
		if (document.form2.pwds.value == "") {
			jQuery("#tishi").text("请输入重复密码!");
			return false;
		}
		if (document.form2.pwd.value != document.form2.pwds.value) {
			jQuery("#tishi").text("密码不一致!");
			return false;
		} else {
			jQuery("#tishi").text("");
			return true;
		}

	}
</script>

<title>我的信息</title>
</head>
<body>
   <div id="cont_b" class="cont">
		  	
		  	<div id="gb"><a href = "javascript:void(0)"  onclick = "document.getElementById('cont_b').style.display='none'">关闭</a></div>
           <div id="address">选择药店</div>
              <div id="xiala">
         	<div class="sanji">选择相应的省：<select id="province" style="font-size: 14px;" name="province" >
					<option value="0">请选择</option>
					</select> <br/></div>
              <div  class="sanji">选择相应的市：<select  id="city" style="font-size: 14px" name="city">
                      <option value="0" >请选择</option>
                    </select><br/></div>
                  <div  class="sanji"> 选择相应的区： <select   id="area" style="font-size: 14px;" name="user_countyid">
                      <option value="${user.user_countyid }" >请选择</option>
                    </select><br/></div>
                 <div  class="sanji"> 选择相应的药店：   <select   id="yao" style="font-size: 14px;" name="yaodian">
                      <option value="药店" >请选择</option>
                    </select>
                    </div></div>
                 <div id="sss"><a href="">
			确定
		
		</a></div>
        
    </div>
	<!--Begin Header Begin-->
	<div class="soubg">
		<div class="sou">
				
			<!--End 所在收货地区 End-->
			<span class="fr"> <c:choose>
					<c:when test="${user==null}">
						<span class="fl">你好，请<a href="loginb.html">登录</a>&nbsp; <a
							href="Regist.html" style="color: #ff4e00;">免费注册</a>
					</c:when>
					<c:otherwise>
						<span class="fl">${user.user_name},你好&nbsp;<a
							href="loginb.html">登录</a>
					</c:otherwise>
				</c:choose> &nbsp;|&nbsp;<a href="#">我的订单</a>&nbsp;|
			</span> <span class="ss">
				<div class="ss_list">
					<a href="#">收藏夹</a>
					<div class="ss_list_bg">
						<div class="s_city_t"></div>
						<div class="ss_list_c">
							<ul>
								<li><a href="#">我的收藏夹</a></li>
								<li><a href="#">我的收藏夹</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="ss_list">
					<a href="#">客户服务</a>
					<div class="ss_list_bg">
						<div class="s_city_t"></div>
						<div class="ss_list_c">
							<ul>
								<li><a href="#">客户服务</a></li>
								<li><a href="#">客户服务</a></li>
								<li><a href="#">客户服务</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="ss_list">
					<a href="#">网站导航</a>
					<div class="ss_list_bg">
						<div class="s_city_t"></div>
						<div class="ss_list_c">
							<ul>
								<li><a href="#">网站导航</a></li>
								<li><a href="#">网站导航</a></li>
							</ul>
						</div>
					</div>
				</div>
			</span> <span class="fl">|&nbsp;关注我们：</span> <span class="s_sh"><a
				href="#" class="sh1">新浪</a><a href="#" class="sh2">微信</a></span> <span
				class="fr">|&nbsp;<a href="#">手机版&nbsp;<img
					src="images/index/s_tel.png" align="absmiddle" /></a></span> </span>
		</div>
	</div>
	<div class="top">
		<div class="logo">
			<a href="show"><img src="images/index/logo.png" /></a>
		</div>
		<div class="search">
			<form action="QueryByName" method="post">
				<input type="text" class="s_ipt" name="ybquery" /> <input
					type="submit" value="搜索" class="s_btn" />
			</form>
			<span class="fl"><a href="#">咖啡</a><a href="#">iphone 6S</a><a
				href="#">新鲜美食</a><a href="#">蛋糕</a><a href="#">日用品</a><a href="#">连衣裙</a></span>
		</div>
		<div class="i_car">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;购物车
			<c:choose>

				<c:when test="${user == null }">
					<div class="car_bg">
						<ul class="cars">
							<li>
								<div class="un_login">
									还未登录！<a href="Login.jsp" style="color: #ff4e00;">马上登录</a>
									查看购物车！
								</div>
							</li>
						</ul>
					</div>
				</c:when>

				<c:otherwise>
					<div class="car_t">
						购物车 [ <span>${shoplist.size() }</span> ]
					</div>
					<div class="car_bg">
						<!--Begin 购物车已登录 Begin-->
						<div class="un_login" style="color: #ff4e00">欢迎登录！</div>
						<ul class="cars">
							<c:forEach items="${shoplist }" var="shop">
								<li>
									<div class="img">
										<a href="#"><img src="${shop.ep_url }" width="58"
											height="58" /></a>
									</div>
									<div class="name">
										<a href="#">${shop.menu3_name } ${shop.ep_description }</a>
									</div>
									<div class="price">
										<font color="#ff4e00">￥${shop.ep_price }</font>
										X${shop.trade_num }
									</div>
								</li>
							</c:forEach>

						</ul>
						<div class="price_sum">
							共计&nbsp; <font color="#ff4e00">￥</font><span>${AllPrice1 }</span>
						</div>
						<div class="price_a">
							<a href="WY_ShopCartOneServlet">去购物车结算</a>
						</div>
						<!--End 购物车已登录 End-->
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>


	<div class="i_bg bg_color">
		<!--Begin 用户中心 Begin -->
		<div class="m_content">
			<div class="m_left">
				<div class="left_n">管理中心</div>
				<div class="left_m">
					<div class="left_m_t t_bg1">订单中心</div>
					<ul>
						<li><a href="WY_order1SelectAllServlet?userid=${userid}">我的订单</a></li>
						<li><a href="FjtSelectaddressServlet">收货地址</a></li>
					</ul>
				</div>
				<div class="left_m">
					<div class="left_m_t t_bg2">会员中心</div>
					<ul>
						<li><a href="userMessage" class="now">我的信息</a></li>
					</ul>
				</div>
				<div class="left_m" style="display:none">
					<div class="left_m_t t_bg4">新闻中心</div>
					<ul>
						<li><a href="chen_newsgd">新闻资讯</a></li>
					</ul>
				</div>
			</div>
			<div class="m_right">
         <div style="font-size: 18px; margin-left: 36px; padding-top:15px ;margin-top: 30px;">问诊记录</div>
<div style="font-size: 18px; margin-left: 860px; margin-top: -25px;"><a href="javascript:void(0)" onclick = "document.getElementById('cont_b').style.display='block' ">选择药店</a></div>
<table border="1" cellspacing="0px" >
	  	
            <tr>
            <td style="width: 175px; text-align: center;line-height: 30px;height: 30px;">用户姓名</td>
            <td style="width: 175px; text-align: center;line-height: 30px;height: 30px;">医生姓名</td>
            <td style="width: 175px; text-align: center;line-height: 30px;height: 30px;">问诊时间</td>
            <td style="width: 175px; text-align: center;line-height: 30px;height: 30px;" >处方信息</td>
  <td colspan="2" style="width: 175px; text-align: center;line-height: 30px;height: 30px;">是否开处方</td>              
            </tr>
            <c:forEach items="${pageInfo.list}" var="value">
            
            <tr>
             <td style="width: 175px; text-align: center;line-height: 30px;height: 30px;" name="name2">${value.user_name}</td>
              <td style="width: 175px; text-align: center;line-height: 30px;height: 30px;" id="iphone">${value.d_name}</td>
            <td style="width: 175px; text-align: center;line-height: 30px;height: 30px;" id="tjr">${value.r_time}</td>
            <td style="width: 175px; text-align: center;line-height: 30px;height: 30px;" id="leixin"><a href="chufang?wzid=${value.r_id}">查看处方</a></td>
            <!-- 处方信息的div -->
            <div id="cont_b1" class="cont1">
		  	
		  	<div id="gb"><a href = "javascript:void(0)"  onclick = "document.getElementById('cont_b').style.display='none'">关闭</a></div>
           
                 
        
    </div>
            
             <!--    javascript:void(0)" onclick = "document.getElementById('cont_b').style.display='block' -->
             <td style="width: 40px; text-align: center;line-height: 30px;height: 30px;"><a href ="updatestart?yhid=${value.r_id}" >
             	 <c:choose>
             
         
    <c:when test="${value.isOpenDrug==0}">
       开处方
    </c:when>
    <c:when test="${value.isOpenDrug==1}">
       申请处方中
    </c:when>
    <c:otherwise>
        已开
    </c:otherwise>
</c:choose>
           
            </a></td>
            </tr>
            
            </c:forEach>
            </table>
            <div style="margin-left: 670px;">
            <p style="border:1px solid darkgray; height: 30px; width: 40px; text-align: center; line-height: 30px; font-size: 20px;display:inline-block; "><a href="wenzhen2?pageNum=1">首页</a></p>
                  <p style="border:1px solid darkgray; height: 30px; width: 60px; text-align: center; line-height: 30px; font-size: 20px;display:inline-block "><a href="wenzhen2?pageNum=${pageInfo.pageNum-1}">上一页</a></p>
              <p style="border:1px solid darkgray; height: 30px; width: 60px; text-align: center; line-height: 30px; font-size: 20px;display:inline-block "><a href="wenzhen2?pageNum=${pageInfo.pageNum+1}">下一页</a></p>
              <p style="border:1px solid darkgray; height: 30px; width: 40px; text-align: center; line-height: 30px; font-size: 20px;display:inline-block"><a href="wenzhen2?pageNum=${pageInfo.pages}">尾页</a></p>         
</div>
        </div>
		</div>
		<!--End 用户中心 End-->
		<!--Begin Footer Begin -->
		<div class="b_btm_bg b_btm_c">
			<div class="b_btm">
				<table border="0"
					style="width: 210px; height: 62px; float: left; margin-left: 75px; margin-top: 30px;"
					cellspacing="0" cellpadding="0">
					<tr>
						<td width="72"><img src="images/index/b1.png" width="62"
							height="62" /></td>
						<td><h2>正品保障</h2>正品行货 放心购买</td>
					</tr>
				</table>
				<table border="0"
					style="width: 210px; height: 62px; float: left; margin-left: 75px; margin-top: 30px;"
					cellspacing="0" cellpadding="0">
					<tr>
						<td width="72"><img src="images/index/b2.png" width="62"
							height="62" /></td>
						<td><h2>满38包邮</h2>满38包邮 免运费</td>
					</tr>
				</table>
				<table border="0"
					style="width: 210px; height: 62px; float: left; margin-left: 75px; margin-top: 30px;"
					cellspacing="0" cellpadding="0">
					<tr>
						<td width="72"><img src="images/index/b3.png" width="62"
							height="62" /></td>
						<td><h2>天天低价</h2>天天低价 畅选无忧</td>
					</tr>
				</table>
				<table border="0"
					style="width: 210px; height: 62px; float: left; margin-left: 75px; margin-top: 30px;"
					cellspacing="0" cellpadding="0">
					<tr>
						<td width="72"><img src="images/index/b4.png" width="62"
							height="62" /></td>
						<td><h2>准时送达</h2>收货时间由你做主</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="b_nav">
			<dl>
				<dt>
					<a href="#">新手上路</a>
				</dt>
				<dd>
					<a href="#">售后流程</a>
				</dd>
				<dd>
					<a href="#">购物流程</a>
				</dd>
				<dd>
					<a href="#">订购方式</a>
				</dd>
				<dd>
					<a href="#">隐私声明</a>
				</dd>
				<dd>
					<a href="#">推荐分享说明</a>
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="#">配送与支付</a>
				</dt>
				<dd>
					<a href="#">货到付款区域</a>
				</dd>
				<dd>
					<a href="#">配送支付查询</a>
				</dd>
				<dd>
					<a href="#">支付方式说明</a>
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="#">会员中心</a>
				</dt>
				<dd>
					<a href="#">资金管理</a>
				</dd>
				<dd>
					<a href="#">我的收藏</a>
				</dd>
				<dd>
					<a href="#">我的订单</a>
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="#">服务保证</a>
				</dt>
				<dd>
					<a href="#">退换货原则</a>
				</dd>
				<dd>
					<a href="#">售后服务保证</a>
				</dd>
				<dd>
					<a href="#">产品质量保证</a>
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="#">联系我们</a>
				</dt>
				<dd>
					<a href="#">网站故障报告</a>
				</dd>
				<dd>
					<a href="#">购物咨询</a>
				</dd>
				<dd>
					<a href="#">投诉与建议</a>
				</dd>
			</dl>
			<div class="b_tel_bg">
				<a href="#" class="b_sh1">新浪微博</a> <a href="#" class="b_sh2">腾讯微博</a>
				<p>
					服务热线：<br /> <span>400-123-4567</span>
				</p>
			</div>
			<div class="b_er">
				<div class="b_er_c">
					<img src="images/index/er.gif" width="118" height="118" />
				</div>
				<img src="images/index/ss.png" />
			</div>
		</div>
		<div class="btmbg">
			<div class="btm">
				备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com Copyright © 2015-2018
				尤洪商城网 All Rights Reserved. 复制必究 , Technical Support: Dgg Group <br />
				<img src="images/index/b_1.gif" width="98" height="33" /><img
					src="images/index/b_2.gif" width="98" height="33" /><img
					src="images/index/b_3.gif" width="98" height="33" /><img
					src="images/index/b_4.gif" width="98" height="33" /><img
					src="images/index/b_5.gif" width="98" height="33" /><img
					src="images/index/b_6.gif" width="98" height="33" />
			</div>
		</div>
		<!--End Footer End -->
	</div>

</body>


<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>
