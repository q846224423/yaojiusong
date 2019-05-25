<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <script type="text/javascript" src="js/jquery-1.12.4.min.js">  
	<script type="text/javascript" src="js/select.js"></script>
    <style>
    #FY span{
    margin: 20px;
    }
    </style>
<title>全部订单</title>
</head>
<body>  

<div class="i_bg bg_color">
    <!--Begin 用户中心 Begin -->
	<div class="m_content">
	
   		<div class="m_left">
   		
        	<div class="left_n">管理中心</div>
            <div class="left_m">
            	<div class="left_m_t t_bg1">订单中心</div>
                <ul>
                	<li><a href="WY_order1SelectAllAdminServlet" class="now">全部订单</a></li>
                </ul>
            </div>
            
            <div class="left_m">
            	<div class="left_m_t t_bg2">用户中心</div>
                <ul>
                	<li><a href="YhServletCp">用户管理</a></li>
                </ul>
            </div>
            
            <div class="left_m">
            	<div class="left_m_t t_bg3">商品中心</div>
                <ul>
                	<li><a href="ClassifiServlet">分类管理</a></li>
                	<li><a href="ShowListServlet">商品管理</a></li>
                </ul>
            </div>
            
            <div class="left_m">
            	<div class="left_m_t t_bg4">新闻中心</div>
                <ul>
                	<li><a href="adminnews">新闻管理</a></li>
                    
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
       
       <c:when test="${count==1}">
       <c:out value=" "></c:out>
       </c:when>
       
       <c:otherwise>
       <c:forEach items = "${list }" var ="od">
	
			<tr>
				<td><a href="WY_OrderAdminInfoServlet?no=${od.order1_no }"><font color="#ff4e00">${od.order1_no }</font></a></td>
				<td><c:out value="${od.order1_time }"></c:out></td>
				<td>￥<c:out value="${od.order1_all }"></c:out></td>
				<td><font color="#ff4e00"><c:out value="${od.order1_status }"></c:out></font></td>
				<td><a href="WY_AdminConfirmServlet?status=${od.order1_status }&id=${od.order1_id }"><c:out value="确认发货"></c:out></a></td>
				<td><a href="WY_AdminRebateServlet?status=${od.order1_status }&id=${od.order1_id }"><c:out value="确认退款"></c:out></a></td>
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
		<span><a href="WY_order1SelectAllAdminServlet?NowPage=1">首页</a>&nbsp;&nbsp;</span>
		<span><a href="WY_order1SelectAllAdminServlet?NowPage=${NowPage==1?1:NowPage-1}">上一页</a>&nbsp;&nbsp;</span>
		<span><a href="WY_order1SelectAllAdminServlet?NowPage=${NowPage==MaxNum?MaxNum:NowPage+1}">下一页</a>&nbsp;&nbsp;</span>
		<span><a href="WY_order1SelectAllAdminServlet?NowPage=${MaxNum}">尾页</a>&nbsp;&nbsp;</span>
		
		</c:otherwise>
		
		</c:choose>
		
</div>

        <div class="mem_tit">查询订单</div>
         <form action="WY_order1SelectAllAdminServlet" method="post">
            <table border="0" class="order_tab" style="width:930px;"  cellspacing="0" cellpadding="0">
              <tr>
                <td width="20%" align="center">订单号</td>
                <td width="65%">
                <center><input name = "cxno" type="text" placeholder="请选择" size="80" /></center>
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
