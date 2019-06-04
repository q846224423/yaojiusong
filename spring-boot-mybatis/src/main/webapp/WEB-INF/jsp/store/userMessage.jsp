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

	<div class="bigdiv">
<!--Begin Header Begin-->
<div class="soubg">
	<div class="sou">
    	<!--Begin 所在收货地区 Begin-->
    	<span class="s_city_b">
        	<span class="fl">送货至：</span>
            <span class="s_city">
            	<span>四川</span>
                <div class="s_city_bg">
                	<div class="s_city_t"></div>
                    <div class="s_city_c">
                    	<h2>请选择所在的收货地区</h2>
                        <table border="0" class="c_tab" style="width:235px; margin-top:10px;" cellspacing="0" cellpadding="0">
                          <tr>
                            <th>A</th>
                            <td class="c_h"><span>安徽</span><span>澳门</span></td>
                          </tr>
                          <tr>
                            <th>B</th>
                            <td class="c_h"><span>北京</span></td>
                          </tr>
                          <tr>
                            <th>C</th>
                            <td class="c_h"><span>重庆</span></td>
                          </tr>
                          <tr>
                            <th>F</th>
                            <td class="c_h"><span>福建</span></td>
                          </tr>
                          <tr>
                            <th>G</th>
                            <td class="c_h"><span>广东</span><span>广西</span><span>贵州</span><span>甘肃</span></td>
                          </tr>
                          <tr>
                            <th>H</th>
                            <td class="c_h"><span>河北</span><span>河南</span><span>黑龙江</span><span>海南</span><span>湖北</span><span>湖南</span></td>
                          </tr>
                          <tr>
                            <th>J</th>
                            <td class="c_h"><span>江苏</span><span>吉林</span><span>江西</span></td>
                          </tr>
                          <tr>
                            <th>L</th>
                            <td class="c_h"><span>辽宁</span></td>
                          </tr>
                          <tr>
                            <th>N</th>
                            <td class="c_h"><span>内蒙古</span><span>宁夏</span></td>
                          </tr>
                          <tr>
                            <th>Q</th>
                            <td class="c_h"><span>青海</span></td>
                          </tr>
                          <tr>
                            <th>S</th>
                            <td class="c_h"><span>上海</span><span>山东</span><span>山西</span><span class="c_check">四川</span><span>陕西</span></td>
                          </tr>
                          <tr>
                            <th>T</th>
                            <td class="c_h"><span>台湾</span><span>天津</span></td>
                          </tr>
                          <tr>
                            <th>X</th>
                            <td class="c_h"><span>西藏</span><span>香港</span><span>新疆</span></td>
                          </tr>
                          <tr>
                            <th>Y</th>
                            <td class="c_h"><span>云南</span></td>
                          </tr>
                          <tr>
                            <th>Z</th>
                            <td class="c_h"><span>浙江</span></td>
                          </tr>
                        </table>
                    </div>
                </div>
            </span>
        </span>
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
				</c:choose> &nbsp;|&nbsp;<a href="userOrderz?user_id=${user.user_id }">我的订单</a>&nbsp;|
			</span> 
        	
        	<span class="ss">
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
            </span>
            <span class="fl">|&nbsp;关注我们：</span>
            <span class="s_sh"><a href="#" class="sh1">新浪</a><a href="#" class="sh2">微信</a></span>
            <span class="fr">|&nbsp;<a href="#">手机版&nbsp;<img src="images/index/s_tel.png" align="absmiddle" /></a></span>
        </span>
    </div>
</div>
<div class="top">
    <div class="logo"><a href="show"><img style="position: absolute;left: 2%;top:8%;" src="images/index/logo.png" /></a></div>
    <div class="search">
    	<form action="showByname" method="post" >
        	<input type="text" name="name" class="s_ipt" />
            <input type="submit" value="搜索" class="s_btn" />
        </form>                      
        <span class="fl"><a href="Showinfo?id=1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;葵花 胃康灵</a><a href="Showinfo?id=4">云南白药</a><a href="Showinfo?id=13">阿莫西林颗粒</a><a href="Showinfo?id=33">桂林西瓜霜</a><a href="Showinfo?id=30">健兴 肺力咳合剂</a></span>
    </div>
        <div class="i_car">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;购物车
    <c:choose>
    
    <c:when test="${user== null }">
    <div class="car_bg">
    <ul class="cars">
    <li>
    <div class="un_login">还未登录！<a href="Loginb.html" style="color:#ff4e00;">马上登录</a> 查看购物车！</div>
    </li>
    </ul>
    </div>
    </c:when>
    
    <c:otherwise>
    <div class="car_t">购物车 [ <span>${Cartlist.size() }</span> ]</div>
        <div class="car_bg">
            <!--Begin 购物车已登录 Begin-->
            <div class="un_login" style="color:#ff4e00">欢迎登录！</div>
            <ul class="cars">
            <c:forEach items="${Cartlist }" var="shop">
            	<li>
                	<div class="img"><a href="#"><img src="${shop.ep_url }" width="58" height="58" /></a></div>
                    <div class="name"><a href="#">${shop.menu3_name } ${shop.ep_size }</a></div>
                    <div class="price"><font color="#ff4e00">￥${shop.ep_price }</font> X${shop.trade_num }</div>
                </li>
            </c:forEach>
              
            </ul>
            <div class="price_sum">共计&nbsp; <font color="#ff4e00">￥</font><span id="AllPrice">${AllPrice }</span></div>
            <div class="price_a"><a style="color:black" href="buycar1">去购物车结算</a></div>
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
						<li><a href="userOrderz?user_id=${user.user_id}">我的订单</a></li>
						<li><a href="toupdateMessage">收获地址</a></li>
					</ul>
				</div>
				<div class="left_m">
					<div class="left_m_t t_bg2">会员中心</div>
					<ul>
                <li><a href="userMessage" class="now">我的信息</a></li>
                <li><a href="wenzhen2" >问诊记录</a></li>
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


				<div>&nbsp;</div>
				<div style="font-size: 30px; margin-left: 48px;">欢迎你，${user.user_name}</div>
				<div>&nbsp;</div>
				<hr></hr>

				<div class="mem_t">账号信息</div>
				<!-- 通过点击改变div内容 -->
				<div style="width: 950px; height: 250px" id="mem_tab">
					<table border="0" class="mon_tab"
						style="width: 870px; margin-bottom: 20px;" cellspacing="0"
						cellpadding="0">

						<tr>
							<td width="30%">姓名：<span style="color: #555555;">${user.user_name}</span></td>
						</tr>
						<tr>
							<td width="30%">年龄：<span style="color: #555555;">${user.user_age}</span></td>
						</tr>
						<tr>
							<td width="30%">性别：<span style="color: #555555;">${user.user_sex}</span></td>
						</tr>

						<!-- 判断是否需要认证 -->
						<c:choose>
							<c:when test="${user.user_control==null || user.user_control==0 }">
								<tr>
									<td width="30%">实名认证：<span style="color: #555555;">
									<a href = "JavaScript:void(0)" onclick = "openDialog()">未认证</a></span></td>
								</tr>
							</c:when>
							<c:when test="${user.user_control==1}">
								<tr>
									<td width="30%">实名认证：<span style="color: #555555;">
									<a href = "JavaScript:void(0)">审核中</a></span></td>
								</tr>
							</c:when>
							<c:otherwise>
								<tr>
									<td width="30%">身份证号：<span style="color: #555555;">${user.user_card}</span></td>
								</tr>
							</c:otherwise>
						</c:choose>
						
						<tr>
						<td width="30%">省市区：<span style="color: #555555;">${user.provinceName}&nbsp;${user.cityName}&nbsp;${user.areaName}</span></td>
						</tr>
						<tr>
							<td width="30%">收获地址：<span style="color: #555555;">${user.user_address}</span></td>
						</tr>




						<tr>
							<td>电&nbsp; &nbsp; 话：<span style="color: #555555;">${user.user_tel}</span></td>
						</tr>
						<tr>
							<td height="26px"><span id="tishi"></span></td>
						</tr>
						<tr>
							<td>
								<div id="input_pwd" style="display: none">
									<form action="updatePwd" method="post" name="form2">
										<input type="hidden" name="id" value="${user.id }" /> 
										密码： <input type="password" name="pwd" onclick="check()" /> 
										重新输入： <input type="password" name="pwds" onclick="check()" />
										 <input type="submit" value="提交" onclick="return check()" />
							
							</form>
							</div>
							</td>
							
						</tr>

					</table>
				</div>

				<div style="position: relative; left: 50px; top: 90px">
					<input type="button" value="完善信息" id="change_message"
						onclick="change_message();" /> <input type="button" value="修改密码"
						id="change_pwd" onclick="change_pwd();" />
				</div>

        <!-- 弹窗 -->
        <div id="light" class="white_content">
        <form action="checkIdcard" method="post" enctype="multipart/form-data" >
        <p onclick = "closeDialog()" style="text-align:right;">关闭</p>
            <table>
            <tr> 
            <td> <input type="hidden" name="user_id" value="${user.user_id }"/></td></tr>
            
                <tr>
                 <td>真实姓名：<input type="text" name="user_name" /></td>
                </tr>
                <tr>
                  <td>身份证号：<input type="text" name="user_card" /></td>
                </tr>
                <tr><td>
                   上传身份证照片: <input type="file" name="file" />  
                  </td>
                </tr>
                <tr><td>
                 <input type="submit" value="提交" onclick = "closeDialog()"  />
                </td></tr>
               
            </table> 
            </form>
            
        </div> 
        <div id="fade" class="black_overlay"></div> 




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
