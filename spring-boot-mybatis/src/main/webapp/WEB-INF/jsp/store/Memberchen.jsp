<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  

  <title>新闻管理</title>
<script >
function addnews() {
	 //弹出模态窗口 window参数 是传给父类的值 参数可以是任何 比如document 或者控件的ID
	window.open("addnews.jsp",this.window,"width=588,height=420, toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no,top=200,left=650");
}
function updatenews(a,b,c) {
	 //弹出模态窗口 window参数 是传给父类的值 参数可以是任何 比如document 或者控件的ID
	window.open("updateoneservlet?id="+a+"&title="+b+"&content="+c,this.window,"width=588,height=420, toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no,top=200,left=650");
}

function deleteone(id) {
	    jQuery.ajax({
		url:"deleteonesrevlet",
		type:"post",
		data:"id="+id,
		dataType:"text",
		success:function(res){
			if(res=="true"){				
				alert("删除成功");
				
				window.location.reload();
			}else{
				alert("删除失败");
		}	
		},
		error:function(){
			alert("出现错误");
		}		
	}) 
};

</script>

</head>
<body>  
<!--Begin Header Begin-->

<div class="i_bg bg_color">
    <!--Begin 用户中心 Begin -->
	<div class="m_content"> 
   		<div class="m_left">
   		
        	<div class="left_n">管理中心</div>
            <div class="left_m">
            	<div class="left_m_t t_bg1">订单中心</div>
                <ul>
                	<li><a href="WY_order1SelectAllAdminServlet" >全部订单</a></li>
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
                	<li><a href="adminnews" class="now">新闻管理</a></li>
                    
                </ul>
            </div>
        </div>
		<div class="m_right">
		<div style="font-size: 18px; margin-left: 36px; padding-top:15px ; margin-top: 30px;">新闻资讯</div>
		<div style="background-color: darkgrey;width: 100px; height: 30px; text-align: center;line-height: 30px;height: 30px;margin-left: 780px;">
		   <input   style="background-color: darkgrey;width: 110px; height: 30px; text-align: center;" type="button"  id="addnews" onclick="addnews()" value="添加资讯" ></input></div>
<table border="1" cellspacing="0px" >
            <tr>
            <td style="width: 300px; text-align: center;line-height: 50px;height: 50px; color: red">文章标题</td>
            <td style="width: 300px; text-align: center;line-height: 50px;height: 50px; color: red">新闻时间</td>
            <td colspan="3" style="width: 200px; text-align: center;line-height: 30px;height: 30px; color: red">操作</td>  
            </tr>
	  	<% Map map =(Map) request.getAttribute("map");
			int b = (Integer)map.get("maxpage");
			int a = (Integer)map.get("page");%>
                <c:forEach items="${map.list }" var="l" >
            <tr >
		          <td style="width: 240px; text-align: center;line-height: 30px;height: 30px;"><a href="index_newsx?id=${l.getId()}">${l.title}</a></td>
		          <td style="width: 240px; text-align: center;line-height: 30px;height: 30px;">${l.sj }</td>
		       

		      <td style="width: 40px; text-align: center;line-height: 30px;height: 30px; color: red "><a  style="color: red"  onclick="updatenews('${l.getId()}','${l.title}','${l.content}')">修改</a></td>
              <td   style="width: 40px; text-align: center;line-height: 30px;height: 30px; color: red"><a id="b"  style="color: red"  onclick="deleteone('${l.getId()}')">删除</a></td>
		          </tr>
            </c:forEach>
            </table>
           <center> <div>
            <p style="border:1px solid darkgray; height: 30px; width: 50px; line-height: 30px; font-size: 20px;display:inline-block; "><a href="adminnews?page=1">首页</a></p>
              <p style="border:1px solid darkgray; height: 30px; width: 100px;  line-height: 30px; font-size: 20px;display:inline-block "><a href="adminnews?page=<%=a-1%>">上一页</a></p>
               <p style="border:1px solid darkgray; height: 30px; width: 100px;  line-height: 30px; font-size: 20px;display:inline-block; "><%for(int i=1;i<=b;i++){%>
		<a href="adminnews?page=<%=i%>"><%=i%></a> 
		<%}%></p>
              
              <p style="border:1px solid darkgray; height: 30px; width: 60px; line-height: 30px; font-size: 20px;display:inline-block "><a href="adminnews?page=<%=a+1%>">下一页</a></p>
              <p style="border:1px solid darkgray; height: 30px; width: 50px;  line-height: 30px; font-size: 20px;display:inline-block"><a href="adminnews?page=<%=b%>">尾页</a></p>         
</div></center></div>

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

</body>
<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>
