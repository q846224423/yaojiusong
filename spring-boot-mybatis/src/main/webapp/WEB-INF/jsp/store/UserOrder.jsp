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
	<script type="text/javascript" src="js/index/select.js"></script>
     <style>
    #FY span{
    margin: 20px;
    }
    </style>     
    
<title>我的订单</title>
</head>
<body>  

	<!--Begin Header Begin-->
	<div class="soubg">
		<div class="sou">
			<!--Begin 所在收货地区 Begin-->
			<span class="s_city_b"> <span class="fl">送货至：</span> <span
				class="s_city"> <span>四川</span>
					<div class="s_city_bg">
						<div class="s_city_t"></div>
						<div class="s_city_c">
							<h2>请选择所在的收货地区</h2>
							<table border="0" class="c_tab"
								style="width: 235px; margin-top: 10px;" cellspacing="0"
								cellpadding="0">
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
									<td class="c_h"><span>上海</span><span>山东</span><span>山西</span><span
										class="c_check">四川</span><span>陕西</span></td>
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
                	<li><a href="userOrderz?userid=${user.user_id}" class="now">我的订单</a></li>
                    <li><a href="toupdateMessage">收货地址</a></li>
                </ul>
            </div>
            <div class="left_m">
            	<div class="left_m_t t_bg2">会员中心</div>
                <ul>
                    <li><a href="userMessage">我的信息</a></li>
                </ul>
            </div>
            
        </div>
        
		<div class="m_right">
            <p></p>
            <div class="mem_tit">我的订单</div>
            <table border="0" class="order_tab" style="width:930px; text-align:center; margin-bottom:30px;" cellspacing="0" cellpadding="0">
              <tr>                                                                                                                                                    
                <td width="20%">订单号</td>
                <td width="25%">下单时间</td>
                <td width="15%">订单总金额</td>
                <td width="10%">订单状态</td>
                <td width="15%">操作</td>
                <td width="15%">操作</td>
              </tr>
      
      	<c:choose>
       
       <c:when test="${zlist.size()==0}">
        无订单
       </c:when>
          
          <c:otherwise>    
    	 <c:forEach items = "${zlist }" var ="od">
	
			<tr>
				<td><a href="userOrderx?z_id=${od.z_id }"><font color="#ff4e00">${od.z_id }</font></a></td>
				<td><c:out value="${od.z_time }"></c:out></td>
				<td>￥<c:out value="${od.z_total }"></c:out></td>
				<td><font color="#ff4e00"><c:out value="${od.z_statu }"></c:out></font></td>
				<td><a href="qdsh?&z_id=${od.z_id }&user_id=${od.user_id }"><c:out value="确认收货"></c:out></a></td>
				<td><a href="wytk??&z_id=${od.z_id }&user_id=${od.user_id }"><c:out value="申请退款"></c:out></a></td>
			</tr>
	
	</c:forEach>
     </c:otherwise>
       
    </c:choose>          
            </table>
            
<div id = "FY" style="text-align:center;font-size: 20px;">

		<c:choose>
		
		<c:when test="${count == 1 }">
		<c:out value="无此订单"></c:out>
		</c:when>
		
		<c:when test="${count == 2 }">
		
		<c:out value="查询完毕"></c:out>
		</c:when>	

		<c:otherwise>
		
		<span><a href="WY_order1SelectAllServlet?NowPage=1&userid=${userid}">首页</a>&nbsp;&nbsp;</span>
		<span><a href="WY_order1SelectAllServlet?NowPage=${NowPage==1?1:NowPage-1}&userid=${userid}">上一页</a>&nbsp;&nbsp;</span>
		<span><a href="WY_order1SelectAllServlet?NowPage=${NowPage==MaxNum?MaxNum:NowPage+1}&userid=${userid}">下一页</a>&nbsp;&nbsp;</span>
		<span><a href="WY_order1SelectAllServlet?NowPage=${MaxNum}&userid=${userid}">尾页</a>&nbsp;&nbsp;</span>

		</c:otherwise>
		
		</c:choose>
		
</div>

            <div class="mem_tit">查询订单</div>
            <form action="WY_order1SelectAllServlet" method="post">
            <table border="0" class="order_tab" style="width:930px;"  cellspacing="0" cellpadding="0">
              <tr>
                <td width="20%" align="center">订单号</td>
                <td width="65%">
                <center><input name = "cxno" type="text" placeholder="请选择" size="80" /></center>
                <input name ="userid" type="hidden" value="${userid }"/>
                </td>
                <td width="15%"><input class="btn_u" type="submit" value="查询"/></td>
              </tr>
            </table>
           </form> 
        </div>
    </div>
	<!--End 用户中心 End--> 
    <!--Begin Footer Begin -->
    <div class="b_btm_bg b_btm_c">
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

</body>


<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>
