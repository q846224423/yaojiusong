<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
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
	
	<script type="text/javascript">
//带参数的修改弹窗
function g_OpenreturnWindow(id){
	//商品的id
	jQuery("#hidden_id").val(id);
	var a = document.getElementById("hidden_id").value;
    //弹出模态窗口 window参数 是传给父类的值 参数可以是任何 比如document 或者控件的ID
window.open("ChangeMessage.jsp",this.window,"width=588,height=420, toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no,top=200,left=650");
}
;
//不带参的添加窗口
function OpenreturnWindow(){
    //弹出模态窗口 window参数 是传给父类的值 参数可以是任何 比如document 或者控件的ID
window.open("AddSp.jsp",this.window,"width=588,height=420, toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no,top=200,left=650");
}

</script>

 <style>
 .m_right img{
 width:95px;
 height:85px;
 }
 #tianjia{
 color:black;
 position:relative;
 left:750px;
 text-decoration: underline;
 }
 
 #fy_tb a{
font-size: 15px;
margin:6px;
position:relative;
left:145px;
}
#fy_tb a:visited {
color:blue;
}
 </style>       
    
<title>商品管理</title>
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
                	<li><a href="WY_order1SelectAllAdminServlet">全部订单</a></li>
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
                	<li><a href="ShowListServlet" class="now">商品管理</a></li>
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
            <div class="mem_tit">商品列表<a id="tianjia" onclick="OpenreturnWindow()"><b>添加商品</b></a></div>
            <table border="0" class="order_tab" style="width:930px; text-align:center; margin-bottom:30px;" cellspacing="0" cellpadding="0">
              <tr>                                                                                                                                                    
                <td width="15%">商品名称</td>
                <td width="25%">商品图片</td>
                <td width="20%">库存</td>
                <td width="20%">价格</td>
                <td width="20%" colspan="2">操作</td>
              </tr>
              <div id="ajax_del">
    <c:forEach items="${requestScope.list }" var="res">
    <tr>
                <td><font color="#ff4e00">${res.menu3name }</font></td>
                <td><img src="${res.ep_url }"/></td>
                <td>${res.ep_stock }</td>
                <td>${res.ep_price }</td>
                <td><input type="button" onclick="g_OpenreturnWindow(${res.menu3id })" value="修改"></td>
                <td><a href="DelOrderServlet?id=${res.menu3id }" ><input type="button" value="删除" /></a></td>
     </tr>
    </c:forEach> 
             </div>    
            </table>
                    <div id="fy_tb">
<%
    int a =Integer.parseInt(String.valueOf(request.getSession().getAttribute("spmax")));
    int b = Integer.parseInt(String.valueOf((request.getAttribute("page"))));
    %>
     <a href="ShowListServlet?page=1">首页</a>
     <a href="ShowListServlet?page=<%=b-1%>">上一页</a>
     
     <%for(int i = 1;i<=a;i++){%>
    <a href="ShowListServlet?page=<%=i %>"><%=i %></a>
    <%}%>
     
     <a href="ShowListServlet?page=<%=(b+1)%>">下一页</a>
     <a href="ShowListServlet?page=<%=a%>">尾页</a>
      </div>    
            
          <div><input type="hidden"  id="hidden_id" name="hidden_id" /></div>

            <div class="mem_tit">合并订单</div>
            <table border="0" class="order_tab" style="width:930px;"  cellspacing="0" cellpadding="0">
              <tr>
                <td width="135" align="right">主订单</td>
                <td width="220">
                	<select class="jj" name="order1">
                      <option value="0" selected="selected">请选择...</option>
                      <option value="1">2015092626589</option>
                      <option value="2">2015092626589</option>
                      <option value="3">2015092626589</option>
                      <option value="4">2015092626589</option>
                    </select>
                </td>
                <td width="135" align="right">从订单</td>
                <td width="220">
                	<select class="jj" name="order2">
                      <option value="0" selected="selected">请选择...</option>
                      <option value="1">2015092626589</option>
                      <option value="2">2015092626589</option>
                      <option value="3">2015092626589</option>
                      <option value="4">2015092626589</option>
                    </select>
                </td>
                <td><div class="btn_u"><a href="#">合并订单</a></div></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td colspan="4" style="font-family:'宋体'; padding:20px 10px 50px 10px;">
                	订单合并是在发货前将相同状态的订单合并成一新的订单。 <br />
                    收货地址，送货方式等以主定单为准。
                </td>
              </tr>
            </table>

            
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
