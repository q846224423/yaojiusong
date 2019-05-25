<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="css/style.css" />
    <!--[if IE 6]>
    <script src="js/iepng.js" type="text/javascript"></script>
        <script type="text/javascript">
           EvPNG.fix('div, ul, img, li, input, a'); 
        </script>
    <![endif]-->
        
    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>    
        
	<script type="text/javascript" src="js/select.js"></script>
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
function openwindow(id) { 
	window.open ("Openwindow?addid="+id, this.window, "height=500, width=400, toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no") //写成一行	  　
		  } 
	</script>
<title>收货地址</title>
</head>
<body>
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
        <span class="fr">
       
        	<span class="fl">${nameshouye1==null?"你好":"欢迎你,"}<a href="Login.jsp">${nameshouye1==null?",请登录":nameshouye1}</a>&nbsp; <a href="Regist.jsp" style="color:#ff4e00;">免费注册</a>&nbsp;|&nbsp;<a href="WY_order1SelectAllServlet?userid=${userid }">我的订单</a>&nbsp;|</span>
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
            <span class="fr">|&nbsp;<a href="#">手机版&nbsp;<img src="images/s_tel.png" align="absmiddle" /></a></span>
        </span>
    </div>
</div>
<div class="top">
    <div class="logo"><a href="Index.jsp"><img src="images/logo.png" /></a></div>
    <div class="search">
    	 <form action="QueryByName" method="post">
        	<input type="text" class="s_ipt" name="ybquery" />
            <input type="submit" value="搜索" class="s_btn" />
        </form>                      
        <span class="fl"><a href="#">咖啡</a><a href="#">iphone 6S</a><a href="#">新鲜美食</a><a href="#">蛋糕</a><a href="#">日用品</a><a href="#">连衣裙</a></span>
    </div>
    <div class="i_car">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;购物车
    <c:choose>
    
    <c:when test="${userid == null }">
    <div class="car_bg">
    <ul class="cars">
    <li>
    <div class="un_login">还未登录！<a href="Login.jsp" style="color:#ff4e00;">马上登录</a> 查看购物车！</div>
    </li>
    </ul>
    </div>
    </c:when>
    
    <c:otherwise>
    <div class="car_t">购物车 [ <span>${shoplist.size() }</span> ]</div>
        <div class="car_bg">
            <!--Begin 购物车已登录 Begin-->
            <div class="un_login" style="color:#ff4e00">欢迎登录！</div>
            <ul class="cars">
            <c:forEach items="${shoplist }" var="shop">
            	<li>
                	<div class="img"><a href="#"><img src="${shop.ep_url }" width="58" height="58" /></a></div>
                    <div class="name"><a href="#">${shop.menu3_name } ${shop.ep_description }</a></div>
                    <div class="price"><font color="#ff4e00">￥${shop.ep_price }</font> X${shop.trade_num }</div>
                </li>
            </c:forEach>
              
            </ul>
            <div class="price_sum">共计&nbsp; <font color="#ff4e00">￥</font><span>${AllPrice1 }</span></div>
            <div class="price_a"><a href="WY_ShopCartOneServlet">去购物车结算</a></div>
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
                	<li><a href="WY_order1SelectAllServlet?userid=${userid}" >我的订单</a></li>
                    <li><a href="FjtSelectaddressServlet" class="now">收货地址</a></li>
                </ul>
            </div>
            <div class="left_m">
            	<div class="left_m_t t_bg2">会员中心</div>
                <ul>
                    <li><a href="QTSelectServletCp">我的信息</a></li>
                </ul>
            </div>
            <div class="left_m">
            	<div class="left_m_t t_bg4">新闻中心</div>
                <ul>
                    <li><a href="chen_newsgd">新闻资讯</a></li>
                </ul>
            </div>
        </div>
		<div class="m_right">
            <p></p>
            <div class="mem_tit">收货地址</div>
			<div class="address">
            	<div class="a_close"><img src="images/a_close.png" /></div>
            	<table border="0" class="add_t" align="center" style="width:98%; margin:10px auto;" cellspacing="0" cellpadding="0">
                  <tr>
                    <td colspan="2" style="font-size:14px; color:#ff4e00;">繁星公司</td>
                  </tr>
                  <tr>
                    <td align="right" width="80">收货人姓名：</td>
                    <td>${requestScope.li.shopName}</td>
                  </tr>
                  
                  <tr>
                    <td align="right">地址：</td>
                    <td>${requestScope.li.provinceName}${requestScope.li.cityName}${requestScope.li.areaName}</td>
                  </tr>
                  <tr>
                    <td align="right">详细地址：</td>
                    <td>${requestScope.li.shopXxaddress}</td>
                  </tr>
                  <tr>
                    <td align="right">手机：</td>
                    <td>${requestScope.li.shopPhone}</td>
                  </tr>
                  <tr>
                    <td align="right">电话：</td>
                    <td>${requestScope.li.shopIPhoen}</td>
                  </tr>
                  <tr>
                    <td align="right">电子邮箱：</td>
                    <td>${requestScope.li.shopEmail}</td>
                  </tr>
                  <tr>
                    <td align="right">标志建筑：</td>
                    <td>${requestScope.li.shopBuild}</td>
                  </tr>
                </table>
				
                <p align="right">
                	<a href="#" style="color:#ff4e00;" >设为默认</a>&nbsp; &nbsp;
                	 &nbsp; &nbsp; <a style="color:#ff4e00;" onclick="openwindow(${requestScope.li.addid})">编辑</a>&nbsp; &nbsp; &nbsp; &nbsp; 
                </p>

            </div>

            <!-- <div class="mem_tit">
            	<a href="#"><img src="images/add_ad.gif" /></a>
            </div> -->
           <form action="FjtReceivingAddressServlet" method="post">
            <table border="0" class="add_tab" style="width:1130px;"  cellspacing="0" cellpadding="0">
            
 <tr>
                <td width="135" align="right">配送地区</td>
                
                <td colspan="3" style="font-family:'宋体';">
                	<select id="province" style="font-size: 14px;" name="province" >
					<option value="0">请选择省...</option>
					</select> 
                	<select  id="city" style="font-size: 14px" name="city">
                      <option value="0" >请选择市...</option>
                    </select>
                    <select   id="area" style="font-size: 14px;" name="area">
                      <option value="0" >请选择区(县)...</option>
                    </select>
                    （必填）
                </td>
              </tr>
               
              <tr>
                <td align="right">收货人姓名</td>
                <td style="font-family:'宋体';"><input type="text" placeholder="姓名"  name="shopName1" required="required"/>（必填）</td>
                <td align="right">电子邮箱</td>
                <td style="font-family:'宋体';"><input type="text" placeholder="12345678@qq.com"  name="shopEmail" required="required" />（必填）</td>
              </tr>
              <tr>
                <td align="right">详细地址</td>
                <td style="font-family:'宋体';"><input type="text" placeholder="世外桃源"  name="shopXxaddress" required="required" />（必填）</td>
                <td align="right">邮政编码</td>
                <td style="font-family:'宋体';"><input type="text" placeholder="610000" name="shopPostalcode"  /></td>
              </tr>
              <tr>
                <td align="right">手机</td>
                <td style="font-family:'宋体';"><input type="text" placeholder="138xxxxx888"  name="shopPhone" required="required" />（必填）</td>
                <td align="right">电话</td>
                <td style="font-family:'宋体';"><input type="text" placeholder="028-12345678"  name="shopIphone" /></td>
              </tr>
              <tr>
                <td align="right">标志建筑</td>
                <td style="font-family:'宋体';"><input type="text" placeholder="世外桃源大酒店"  name="shopBuild" /></td>
                <td align="right">最佳送货时间</td>
                <td style="font-family:'宋体';"><input type="text" placeholder="当天"  name="shopZjtime" /></td>
              </tr>
               
            </table>
             <p align="center">
             <input type="image" src="images/add_ad.gif" style="align='center'" />	
             </p>	
            	</form>	 
            <p align="right">
            	<!-- <a >删除</a>&nbsp; &nbsp;  <a class="add_b">确认修改</a>  -->
            							
            </p> 
            
           	
           

            
        </div>
    </div>
	<!--End 用户中心 End--> 
    <!--Begin Footer Begin -->
    <div class="b_btm_bg b_btm_c">
        <div class="b_btm">
            <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
              <tr>
                <td width="72"><img src="images/b1.png" width="62" height="62" /></td>
                <td><h2>正品保障</h2>正品行货  放心购买</td>
              </tr>
            </table>
			<table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
              <tr>
                <td width="72"><img src="images/b2.png" width="62" height="62" /></td>
                <td><h2>满38包邮</h2>满38包邮 免运费</td>
              </tr>
            </table>
            <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
              <tr>
                <td width="72"><img src="images/b3.png" width="62" height="62" /></td>
                <td><h2>天天低价</h2>天天低价 畅选无忧</td>
              </tr>
            </table>
            <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
              <tr>
                <td width="72"><img src="images/b4.png" width="62" height="62" /></td>
                <td><h2>准时送达</h2>收货时间由你做主</td>
              </tr>
            </table>
        </div>
    </div>
    <div class="b_nav">
    	<dl>                                                                                            
        	<dt><a href="#">新手上路</a></dt>
            <dd><a href="#">售后流程</a></dd>
            <dd><a href="#">购物流程</a></dd>
            <dd><a href="#">订购方式</a></dd>
            <dd><a href="#">隐私声明</a></dd>
            <dd><a href="#">推荐分享说明</a></dd>
        </dl>
        <dl>
        	<dt><a href="#">配送与支付</a></dt>
            <dd><a href="#">货到付款区域</a></dd>
            <dd><a href="#">配送支付查询</a></dd>
            <dd><a href="#">支付方式说明</a></dd>
        </dl>
        <dl>
        	<dt><a href="#">会员中心</a></dt>
            <dd><a href="#">资金管理</a></dd>
            <dd><a href="#">我的收藏</a></dd>
            <dd><a href="#">我的订单</a></dd>
        </dl>
        <dl>
        	<dt><a href="#">服务保证</a></dt>
            <dd><a href="#">退换货原则</a></dd>
            <dd><a href="#">售后服务保证</a></dd>
            <dd><a href="#">产品质量保证</a></dd>
        </dl>
        <dl>
        	<dt><a href="#">联系我们</a></dt>
            <dd><a href="#">网站故障报告</a></dd>
            <dd><a href="#">购物咨询</a></dd>
            <dd><a href="#">投诉与建议</a></dd>
        </dl>
        <div class="b_tel_bg">
        	<a href="#" class="b_sh1">新浪微博</a>            
        	<a href="#" class="b_sh2">腾讯微博</a>
            <p>
            服务热线：<br />
            <span>400-123-4567</span>
            </p>
        </div>
        <div class="b_er">
            <div class="b_er_c"><img src="images/er.gif" width="118" height="118" /></div>
            <img src="images/ss.png" />
        </div>
    </div>    
    <div class="btmbg">
		<div class="btm">
        	备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com   Copyright © 2015-2018 尤洪商城网 All Rights Reserved. 复制必究 , Technical Support: Dgg Group <br />
            <img src="images/b_1.gif" width="98" height="33" /><img src="images/b_2.gif" width="98" height="33" /><img src="images/b_3.gif" width="98" height="33" /><img src="images/b_4.gif" width="98" height="33" /><img src="images/b_5.gif" width="98" height="33" /><img src="images/b_6.gif" width="98" height="33" />
        </div>    	
    </div>
    <!--End Footer End -->    
</div>

</body>


<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>
