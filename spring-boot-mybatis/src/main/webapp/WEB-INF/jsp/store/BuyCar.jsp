<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <script type="text/javascript" src="js/index/jquery-1.12.4.min.js">             
	<script type="text/javascript" src="js/index/n_nav.js"></script>   
    
    <script type="text/javascript" src="js/index/num.js">
    	var jq = jQuery.noConflict();
    </script>     
    
    <script type="text/javascript" src="js/index/shade.js"></script>
<script>
/* 这里显示结算时，抛出的异常提示 */
jQuery(function(){
	var a = jQuery("#wrong").text();
	if(a.length==0){
	}else{
		alert(a);
	}
})

function updateCar(car_id,num){
	var trade_num = num.parent().find(".car_ipt").val();
	jQuery.ajax({
		url:"updateCar",
		type:"post",
		data:{"car_id":car_id,"trade_num":trade_num},
	    dataType:"json",
	    success:function(data){
	    	
	    },
	    error:function(){
	    	//alert("操作有误");
	    }
	});	
}

function changeNum(menu3_id,num){
	var trade_num = num.parent().find(".car_ipt").val();
	jQuery.ajax({
		url:"changeXj",
		type:"post",
		data:{"menu3_id":menu3_id,"trade_num":trade_num},
	    dataType:"json",
	    success:function(data){
	    	//alert("数量"+data.trade_num);
	    	//alert("提示"+data.tip);
	    	//alert("小计"+data.doubleValue);
	    	num.parent().parent().parent().find("#num").val(data.trade_num);
	    	num.parent().parent().parent().find("#tip").text(data.tip);
	    	num.parent().parent().parent().find(".doubleValue").text(data.doubleValue);
	    	CalTotal();
	    },
	    error:function(){
	    	//alert("操作有误");
	    }
	});	
}

function CalTotal(){
	//定义一个总价
var total = 0.0;
//获取表格指定列
	var tds = jQuery(".doubleValue");
	//遍历这个列所有内容
	tds.each(function(){
		//获取每一行的数据
	var v = jQuery(this).text();
		//计算总和
	total=total+parseFloat(v);
	});
	//输出总和
	jQuery("#ajax_sumprice").text(total.toFixed(2))
}
</script>
<title>购物车</title>
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
        <c:choose>
        <c:when test="${user==null}"><span class="fl">你好，请<a href="Loginb.html">登录</a>&nbsp; <a href="Regist.html" style="color:#ff4e00;">免费注册</a></c:when>
        <c:otherwise> <span class="fl">${user.user_name},你好&nbsp; <a href="userMessage" style="color:#ff4e00;">我的信息</a></c:otherwise>
        	</c:choose>
        	&nbsp;|&nbsp;<a href="#">我的订单</a>&nbsp;|</span>
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
   <div class="logo"><a href="show"><img src="images/index/logo.png" /></a></div>
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
    <div class="un_login">还未登录！<a href="Login.jsp" style="color:#ff4e00;">马上登录</a> 查看购物车！</div>
    </li>
    </ul>
    </div>
    </c:when>
    
    <c:otherwise>
    <div class="car_t" >购物车 [ <span>${Cartlist.size() }</span> ]</div>
        <div class="car_bg" style="display:none">
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


<!--Begin Menu Begin-->
<div class="i_bg">  
    <div class="content mar_20">
    	<img src="images/index/img1.jpg" />        
    </div>
    
    <!--Begin 第一步：查看购物车 Begin -->
    <div class="content mar_20">
    	<table border="0" class="car_tab" style="width:1200px; margin-bottom:50px;" cellspacing="0" cellpadding="0">
          <tr>
            <td class="car_th" width="15%">商品名称</td>
            <td class="car_th" width="20%">商品属性</td>
            <td class="car_th" width="10%">单价</td>
            <td class="car_th" width="20%">购买数量</td>
            <td class="car_th" width="20%">小计</td>
            <td class="car_th" width="30%">操作</td>
          </tr>
         
         <c:forEach items="${Cartlist }" var ="shop">
         
         <tr class="car_tr">
            <td>
            	<div class="c_s_img"><img src="${shop.ep_url }" width="73" height="73" /></div>
                <c:out value="${shop.menu3_name }"></c:out>
            </td>
            <td align="center">
            	<c:out value="${shop.ep_description}"></c:out>
            </td>
            <td align="center" id = "price" style="color:#ff4e00;"><a id="dd" style="font-size: medium; " href="javascript:void(0)">${shop.ep_price}</a>  <br/>
            </td>
            <td align="center">
            	<div class="c_num">
                   <%--  <a href ="ReduceShopNumServlet?trade_num=${shop.trade_num}&menu3_id=${shop.menu3_id}"><input type="button" value="" class="car_btn_1" /></a> --%>
                	<input  type="button" value="-" onclick="jianUpdate1(jq(this));changeNum('${shop.menu3_id}',jQuery(this))" onblur="updateCar('${shop.car_id}',jQuery(this));"  class="car_btn_1" />
                	<input  type="text" value="${shop.trade_num}" name="num" id="num" class="car_ipt" onblur="changeNum('${shop.menu3_id}',jQuery(this)),updateCar('${shop.car_id}',jQuery(this));"/> 
                	<input  type="button" value="+" onclick="addUpdate1(jq(this));changeNum('${shop.menu3_id}',jQuery(this));"onblur="updateCar('${shop.car_id}',jQuery(this));"  class="car_btn_2" />
                    <%-- <a href ="AddShopNumServlet?trade_num=${shop.trade_num}&menu3_id=${shop.menu3_id}"><input type="button" value="" class="car_btn_2" /></a> --%>
                </div>
            </td>
             
            <td align="center" id = "AllPrice" style="color:#ff4e00;"><a class="doubleValue" style="font-size: medium; " href="javascript:void(0)">${shop.sum_price}</a>  <br/>
              <span align="center" id="tip"></span>
            </td>
          
            <td align="center"><a onclick="ShowDiv('MyDiv','fade',${shop.car_id})">删除</a></td>
          </tr>
         
         </c:forEach>
         
         <tr height="70">
         	<td colspan="5" style="font-family:'Microsoft YaHei'; border-bottom:0;">
         		<span class="fr">商品总价：<b id="ajax_sumprice" style="font-size:22px; color:#ff4e00;">￥${AllPrice }</b></span>
         	</td>
         </tr>
         
          <tr valign="top" height="150">
          	<td colspan="5" align="right">
            	<a href="show"><img src="images/index/buy1.gif" /></a>&nbsp; &nbsp; <a href="buycar2"><img src="images/index/buy2.gif" /></a>
            </td>
          </tr>
        </table>
        
    </div>
	<!--End 第一步：查看购物车 End--> 
    
    
    <!--Begin 弹出层-删除商品 Begin-->
    <div id="fade" class="black_overlay"></div>
    <div id="MyDiv" class="white_content">             
        <div class="white_d">
            <div class="notice_t">
                <span class="fr" style="margin-top:10px; cursor:pointer;" onclick="CloseDiv('MyDiv','fade')"><img src="images/close.gif" /></span>
            </div>
            <div class="notice_c">
           		
           	<form action="delcarByid" method="post">
                <table border="0" align="center" style="font-size:16px;" cellspacing="0" cellpadding="0">
                  <tr valign="top">
                    <td>您确定要把该商品移除购物车吗？</td>
                   <td></td> 
                  </tr>
                  <tr height="50" valign="bottom">
                    <td>
                    <input type="hidden" name="sssid" class="sssid" id="sssid" />
                    <input type="submit" class="b_sure" value="确定"/>
                    <a href="buycar1" class="b_buy">取消</a>
                    </td>
                  </tr>
                </table>
             </form>   
            </div>
        </div>
    </div>    
    <!--End 弹出层-删除商品 End-->
    
    
    <!--Begin Footer Begin -->
    <div class="b_btm_bg bg_color">
        <div class="b_btm">
            <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
              <tr>
                <td width="72"><img src="images/index/b1.png" width="62" height="62" /></td>
                <td><h2>正品保障</h2>正品行货  放心购买</td>
              </tr>
            </table>
			<table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
              <tr>
                <td width="72"><img src="images/index/b2.png" width="62" height="62" /></td>
                <td><h2>满38包邮</h2>满38包邮 免运费</td>
              </tr>
            </table>
            <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
              <tr>
                <td width="72"><img src="images/index/b3.png" width="62" height="62" /></td>
                <td><h2>天天低价</h2>天天低价 畅选无忧</td>
              </tr>
            </table>
            <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
              <tr>
                <td width="72"><img src="images/index/b4.png" width="62" height="62" /></td>
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
            <div class="b_er_c"><img src="images/index/er.gif" width="118" height="118" /></div>
            <img src="images/index/ss.png" />
        </div>
    </div>    
    <div class="btmbg">
		<div class="btm">
        	备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com   Copyright © 2015-2018 尤洪商城网 All Rights Reserved. 复制必究 , Technical Support: Dgg Group <br />
            <img src="images/index/b_1.gif" width="98" height="33" /><img src="images/index/b_2.gif" width="98" height="33" /><img src="images/index/b_3.gif" width="98" height="33" /><img src="images/index/b_4.gif" width="98" height="33" /><img src="images/index/b_5.gif" width="98" height="33" /><img src="images/index/b_6.gif" width="98" height="33" />
        </div>    	
    </div>
    <!--End Footer End -->    
</div>
<div id="wrong" style="display:none;">${wrong }</div>
</body>


<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>
