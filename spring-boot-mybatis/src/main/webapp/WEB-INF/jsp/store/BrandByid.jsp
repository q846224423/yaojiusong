<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title></title>
<link rel="stylesheet" href="css/index/brand_files/base.css" />
<link rel="stylesheet" href="css/index/brand_files/search.css" />
	<link type="text/css" rel="stylesheet" href="css/index/style.css" />   
    <script type="text/javascript" src="js/index/jquery-1.11.1.min_044d0927.js"></script>
	<script type="text/javascript" src="js/index/jquery.bxslider_e88acd1b.js"></script>
    
    <script type="text/javascript" src="js/index/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="js/index/menu.js"></script>    
        
	<script type="text/javascript" src="js/index/select.js"></script>
    
	<script type="text/javascript" src="js/index/lrscroll.js"></script>
    
    <script type="text/javascript" src="js/index/iban.js"></script>
    <script type="text/javascript" src="js/index/fban.js"></script>
    <script type="text/javascript" src="js/index/f_ban.js"></script>
    <script type="text/javascript" src="js/index/mban.js"></script>
    <script type="text/javascript" src="js/index/bban.js"></script>
    <script type="text/javascript" src="js/index/hban.js"></script>
    <script type="text/javascript" src="js/index/tban.js"></script>
    <script type="text/javascript" src="js/index/jquery-3.js"></script>
	<script type="text/javascript" src="js/index/lrscroll_1.js"></script>
	
<link rel="stylesheet"
	href="css/index/owl.carousel.css">
<link rel="stylesheet"
	href="css/index/owl.theme.css">
<link rel="stylesheet" href="css/index/base1.css">
<link rel="stylesheet" href="css/index/index.css">
<script type="text/javascript" src="js/index/paramsForStatic"></script>

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
	<div class="toolbar sidebar" style="right: 0px;">
		<div class="tab">
			<ul>
				<li class="btn_online tab-ico h147" data-o="option"><span
					class="icon-online"><i></i></span></li>
				<li><a href="https://www.yao123.com/helpcenter"><span
						class="icon-feedback"><i></i></span> <em>意见反馈</em></a></li>
				<li><a href="https://www.yao123.com/category_70#"><span
						class="icon-backtop"><i></i></span> <em>返回顶部</em></a></li>
			</ul>
		</div>
		<div class="panels">
			<div class="panel master">
				<h3 class="panel-header">
					<a class="title" href="javascript:void(0);"> <i></i><em
						class="title">药师咨询</em>
					</a><span class="close-panel"></span>
				</h3>
				<div class="panel-main">
					<iframe id="new_client" style="height: 100%; width: 100%;"
						src="css/index/brand_files/saved_resource.html" frameborder="0"
						height="100%" width="100%"></iframe>
				</div>
			</div>
			<div class="panel panel-cart"></div>
		</div>
	</div>
	<script charset="utf-8" src="css/index/brand_files/v.js"></script>
	<script src="css/index/brand_files/analytics.js"></script>
	<script src="css/index/brand_files/hm.js"></script>
	<script type="text/javascript"
		src="css/index/brand_files/paramsForStatic"></script>
	<input type="hidden" name="isStaticPage" value="false" />
	<!--页面主区域-->
	<div class="product">
		<!--导航 -->
		<div class="breadcrumbs">
			<div class="w1200">
				<div class="crumbs_nav">
					<div class="crumbs_nav_item">
						<div class="crumbs_first">
							<a href="https://www.yao123.com/category_70">首页</a>
						</div>
					</div>
					<i class="crumbs_arrow">&gt;</i>
					<div class="crumbs_class">
						<!--搜索条件中的二级标签-->
						<div class="tlevel1">
							<a href="https://www.yao123.com/category_7">中西药品</a>
						</div>








						<div class="menu_drop drop2">
							<div class="trigger category2">
								<a href="https://www.yao123.com/category_60">心脑血管</a> <i
									class="menu_drop_arrow"></i>
							</div>
							<div class="menu-drop-main level2list" style="display: none;">
								<ul>
									<li><a i="0" class="lv2" a="count=&quot;null&quot;"
										tid="8" title="滋补调养" href="https://www.yao123.com/category_8">滋补调养</a></li>

									<li><a i="1" class="lv2" a="count=&quot;null&quot;"
										tid="30" title="风湿骨科"
										href="https://www.yao123.com/category_30">风湿骨科</a></li>

									<li><a i="2" class="lv2" a="count=&quot;null&quot;"
										tid="32" title="妇科疾病"
										href="https://www.yao123.com/category_32">妇科疾病</a></li>

									<li><a i="3" class="lv2" a="count=&quot;null&quot;"
										tid="33" title="五官科" href="https://www.yao123.com/category_33">五官科</a></li>

									<li><a i="4" class="lv2" a="count=&quot;null&quot;"
										tid="59" title="男性疾病"
										href="https://www.yao123.com/category_59">男性疾病</a></li>

									<li><a i="5" class="lv2" a="count=&quot;null&quot;"
										tid="60" title="心脑血管"
										href="https://www.yao123.com/category_60">心脑血管</a></li>

									<li><a i="6" class="lv2" a="count=&quot;null&quot;"
										tid="61" title="神经系统"
										href="https://www.yao123.com/category_61">神经系统</a></li>

									<li><a i="7" class="lv2" a="count=&quot;null&quot;"
										tid="87" title="内分泌科"
										href="https://www.yao123.com/category_87">内分泌科</a></li>

									<li><a i="8" class="lv2" a="count=&quot;null&quot;"
										tid="104" title="呼吸道疾病"
										href="https://www.yao123.com/category_104">呼吸道疾病</a></li>

									<li><a i="9" class="lv2" a="count=&quot;null&quot;"
										tid="112" title="肝病科"
										href="https://www.yao123.com/category_112">肝病科</a></li>

									<li><a i="10" class="lv2" a="count=&quot;null&quot;"
										tid="119" title="消化系统疾病"
										href="https://www.yao123.com/category_119">消化系统疾病</a></li>

									<li><a i="11" class="lv2" a="count=&quot;null&quot;"
										tid="140" title="肿瘤科"
										href="https://www.yao123.com/category_140">肿瘤科</a></li>

									<li><a i="12" class="lv2" a="count=&quot;null&quot;"
										tid="209" title="皮肤病"
										href="https://www.yao123.com/category_209">皮肤病</a></li>

									<li><a i="13" class="lv2" a="count=&quot;null&quot;"
										tid="757" title="精神心理科"
										href="https://www.yao123.com/category_757">精神心理科</a></li>

								</ul>
							</div>
							<i class="crumbs_arrow">&gt;</i>
						</div>

						<div class="menu_drop drop3">
							<div class="trigger category3">
								<a href="https://www.yao123.com/category_70">高血压</a> <i
									class="menu_drop_arrow"></i>
							</div>
							<div class="menu-drop-main level3list" style="display: none;">
								<ul class="h_list">
									<li><a class="lv3" count="null" tid="70" title="高血压"
										href="https://www.yao123.com/category_70">高血压</a></li>
									<li><a class="lv3" count="null" tid="71" title="脑血管病"
										href="https://www.yao123.com/category_71">脑血管病</a></li>
									<li><a class="lv3" count="null" tid="72" title="冠心病"
										href="https://www.yao123.com/category_72">冠心病</a></li>
									<li><a class="lv3" count="null" tid="73" title="高血脂"
										href="https://www.yao123.com/category_73">高血脂</a></li>
									<li><a class="lv3" count="null" tid="74" title="心绞痛"
										href="https://www.yao123.com/category_74">心绞痛</a></li>
									<li><a class="lv3" count="null" tid="75" title="静脉曲张"
										href="https://www.yao123.com/category_75">静脉曲张</a></li>
									<li><a class="lv3" count="null" tid="76" title="血液疾病"
										href="https://www.yao123.com/category_76">血液疾病</a></li>
									<li><a class="lv3" count="null" tid="77" title="低血压"
										href="https://www.yao123.com/category_77">低血压</a></li>
								</ul>
							</div>
							<i class="crumbs_arrow">&gt;</i>
						</div>

					</div>
					<div class="crumbs_tags showfliter">
						<!--搜索条件中的品牌、价格、规格-->








					</div>
					<div class="crumbs_nav_item">
						<strong class="search_key"></strong>
					</div>
				</div>
			</div>
		</div>
		<!--导航 end-->

		<div class="w1200 search-filter">

			<div class="row">
				<!--左侧分类菜单、看了又看-->
				<div class="span1">

					<div class="related">
						<h2>看了又看</h2>
						<div class="watchlist1">

							<!--单个商品 循环product-items-->
							<div class="product-items">

								<a class="img"
									href="https://www.yao123.com/product/GWM0706025_1"
									target="_blank"><img src="css/index/brand_files/gcg13944201605161547538ab3e253549a927d0154b88918a62bb3.jpg@!m145"
									alt="海露 HYCOSAN 玻璃酸钠滴眼液 10ml*1支/盒" /><i></i></a> <a
									href="https://www.yao123.com/product/GWM0706025_1"
									target="_blank">海露 HYCOSAN 玻璃酸钠滴眼液 10ml*1支/盒</a>
								<p>
									<span class="opr">¥&nbsp;73.60<i></i></span>
								</p>
							</div>
							<!--单个商品end-->

							<!--单个商品 循环product-items-->
							<div class="product-items">
								<a class="img"
									href="https://www.yao123.com/product/GWM0404851_1"
									target="_blank"><img
									src="css/index/brand_files/gcg12769201605131318208ab3e253549a927d0154a88d1b5c1a36.jpg@!m145"
									alt="达力士 卡泊三醇软膏 15g*1支/盒"><i></i></a> <a
									href="https://www.yao123.com/product/GWM0404851_1"
									target="_blank">达力士 卡泊三醇软膏 15g*1支/盒</a>
								<p>
									<span class="opr">¥&nbsp;65.00<i></i></span>
								</p>
							</div>
							<!--单个商品end-->

							<!--单个商品 循环product-items-->
							<div class="product-items">
								<a class="img"
									href="https://www.yao123.com/product/GWM0100045_1"
									target="_blank"><img
									src="css/index/brand_files/gcg7963201603171656198ab3e253535a9b9b015383ca30b00cf8.jpg@!m145"
									alt="雅通 柳氮磺吡啶栓 0.5g*6枚 "><i></i></a> <a
									href="https://www.yao123.com/product/GWM0100045_1"
									target="_blank">雅通 柳氮磺吡啶栓 0.5g*6枚 </a>
								<p>
									<span class="opr">¥&nbsp;26.00<i></i></span>
								</p>
							</div>
							<!--单个商品end-->

							<!--单个商品 循环product-items-->
							<div class="product-items">
								<a class="img"
									href="https://www.yao123.com/product/GWM0110274_1"
									target="_blank"><img
									src="css/index/brand_files/8a2c91bf56732652015703d9789c2658.jpg@!m145"
									alt="希舒美 阿奇霉素片 0.25g*6片/盒"><i></i></a> <a
									href="https://www.yao123.com/product/GWM0110274_1"
									target="_blank">希舒美 阿奇霉素片 0.25g*6片/盒</a>
								<p>
									<span class="opr">¥&nbsp;75.10<i></i></span>
								</p>
							</div>
							<!--单个商品end-->

							<!--单个商品 循环product-items-->
							<div class="product-items">
								<a class="img"
									href="https://www.yao123.com/product/GWM0106648_1"
									target="_blank"><img
									src="css/index/brand_files/8a2c91bf67bc411d016ac00f969b2a66.jpg@!m145"
									alt="拜瑞妥 利伐沙班片 10mg*5片/盒"><i></i></a> <a
									href="https://www.yao123.com/product/GWM0106648_1"
									target="_blank">拜瑞妥 利伐沙班片 10mg*5片/盒</a>
								<p>
									<span class="opr">¥&nbsp;165.00<i></i></span>
								</p>
							</div>
							<!--单个商品end-->

							<!--单个商品 循环product-items-->
							<div class="product-items">
								<a class="img"
									href="https://www.yao123.com/product/GWM0104731_1"
									target="_blank"><img
									src="css/index/brand_files/8a2c91bf67bc411d016970d93f844098.jpg@!m145"
									alt="优甲乐 左甲状腺素钠片 50ug*100片"><i></i></a> <a
									href="https://www.yao123.com/product/GWM0104731_1"
									target="_blank">优甲乐 左甲状腺素钠片 50ug*100片</a>
								<p>
									<span class="opr">¥&nbsp;30.00<i></i></span>
								</p>
							</div>
							<!--单个商品end-->


						</div>
					</div>

					<!--广告位 s-->


					<!--广告位 e-->
				</div>
				<!--左侧分类菜单、看了又看 end-->
				<div class="span5">
					<div class="right">
						<!--筛选列表-->
						<div class="search-filter">
							<!--排序-->
							<div class="sort">
								<ul class="order">
									<li class="cur"><a
										href="https://www.yao123.com/category_70" a=""
										b="/category_70?">综合排序</a></li>
									<li class=""><a
										href="https://www.yao123.com/category_70-0-0-0-0-0-0-0-0-0-0-0-asc"
										class="price sorton ">价格<b></b></a></li>
								</ul>
								<!--在结果中搜索-->
								<div class="re_search">
									<input type="text" id="inResultWordBox" placeholder="在结果中搜索"
										value=""> <a class="res_btn" href="javascript:void(0)">查找</a>
								</div>
								<div class="pagin">





									<span class="text"><em class="text-orange">1</em>/17</span><span
										class="selected snum">上一页</span><span class="pnum">1</span><a
										class="anum"
										href="https://www.yao123.com/category_70?pageNum=2" info="2">2</a><a
										class="anum"
										href="https://www.yao123.com/category_70?pageNum=3" info="3">3</a><span
										class="dd pnum">...</span><a class="anum"
										href="https://www.yao123.com/category_70?pageNum=17" info="17">17</a><a
										class="enum"
										href="https://www.yao123.com/category_70?pageNum=2" info="2">下一页</a>
									<div class="pageskip">
										<span>共<b class="totalpages">17</b>页 到
										</span> <input class="pageInt" type="text"><span>页</span><input
											class="gotobtn" value="确定" type="button">
									</div>

								</div>
							</div>
							<!--排序-->
						</div>
						<!--筛选列表 end-->
						<!--列表结果 循环li-->
						<div class="product-list">
							<ul>

                              <c:forEach items="${productlist }" var="product">
								<!--单个商品-->
								<li class="">
									<div class="package"></div>

									<div class="wrap">
										<div class="items">
											<a target="_blank" href="Showinfo?id=${product.menu3_id }">
												<img src="${product.ep_url }" alt="${product.menu3_name } ${product.ep_size }" /></a>
											<p>
												<span class="opr"><em class="rmb">¥</em>${product.ep_price }</span>

											</p>
											<a title="" target="_blank"
												href="Showinfo?id=${product.menu3_id }"
												class="name">${product.menu3_name } ${product.ep_size }</a>
											<div class="extra"></div>
											<div class="btn">
												<a class="look" target="_blank"
													href="Showinfo?id=${product.menu3_id }">查看详情</a><a
													class="collect" href=""><i></i>收藏</a>
											</div>
										</div>

									</div>
								</li>
								<!--单个商品 end-->
                             </c:forEach>

							</ul>
							<!--分页容器 需要保留-->
							<div class="pagenum">


								<span class="text"><em class="text-orange">1</em>/17</span><span
									class="selected snum">上一页</span><span class="pnum">1</span><a
									class="anum"
									href="https://www.yao123.com/category_70?pageNum=2" info="2">2</a><a
									class="anum"
									href="https://www.yao123.com/category_70?pageNum=3" info="3">3</a><span
									class="dd pnum">...</span><a class="anum"
									href="https://www.yao123.com/category_70?pageNum=17" info="17">17</a><a
									class="enum"
									href="https://www.yao123.com/category_70?pageNum=2" info="2">下一页</a>
								<div class="pageskip">
									<span>共<b class="totalpages">17</b>页 到
									</span> <input class="pageInt" type="text"><span>页</span><input
										class="gotobtn" value="确定" type="button">
								</div>

							</div>
							<!--分页容器 需要保留 end-->
						</div>
						<!--列表结果 end-->
					</div>
				</div>
			</div>
		</div>


	</div>
	<script type="text/javascript">
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "//hm.baidu.com/hm.js?ac1708c616050ecad730f332cfb07a81";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'https://www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-80897368-1', 'auto');
		ga('send', 'pageview');
	</script>
	<div style="display: none;">
		<script type="text/javascript">
			var cnzz_protocol = (("https:" == document.location.protocol) ? " https://"
					: " http://");
			document
					.write(unescape("%3Cspan id='cnzz_stat_icon_1260208244'%3E%3C/span%3E%3Cscript src='"
							+ cnzz_protocol
							+ "s4.cnzz.com/z_stat.php%3Fid%3D1260208244%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
		</script>
		<span id="cnzz_stat_icon_1260208244"><a
			href="https://www.cnzz.com/stat/website.php?web_id=1260208244"
			target="_blank" title="站长统计"><img border="0" hspace="0"
				vspace="0" src="css/index/brand_files/pic.gif"></a></span>
		<script src="css/index/brand_files/z_stat.php" type="text/javascript"></script>
		<script src="css/index/brand_files/core.php" charset="utf-8"
			type="text/javascript"></script>
	</div>
	<!--数据绑定区域 end-->
	<script src="css/index/brand_files/jquery.js" type="text/javascript"></script>
	<script src="css/index/brand_files/base.js" type="text/javascript"></script>
	<div class="footer">
		<div class="slogen">
			<div style="width: 900px;" class="w1200">
				<ul style="">
					<li><i class="icon-honor"></i>权威荣誉</li>
					<li><i class="icon-brand"></i>品牌授权</li>
					<li><i class="icon-real"></i>正品保证</li>
					<li><i class="icon-certification"></i>药监认证</li>
					<li><i class="icon-easy"></i>退换无忧</li>
					<li><i class="icon-privacy"></i> 隐私包装</li>
				</ul>
			</div>
		</div>
		<div class="w1200">
			<div class="info">
				<div class="logo">
					<a href="https://www.yao123.com/">国药网</a>
				</div>
				<div style="width: 600px;" class="help">
					<dl>
						<dt>新手入门</dt>
						<dd>
							<p>
								<a href="https://www.yao123.com/helpRegister">会员注册</a>
							</p>
							<p>
								<a href="https://www.yao123.com/helpFindPsd">找回密码</a>
							</p>
							<p>
								<a href="https://www.yao123.com/procedure">购物流程</a>
							</p>
							<p>
								<a href="https://www.yao123.com/memberpoints">会员积分说明</a>
							</p>
						</dd>
					</dl>
					<dl>
						<dt>关于支付</dt>
						<dd>
							<p>
								<a href="https://www.yao123.com/helpPayment">支付方式</a>
							</p>
							<p>
								<a href="https://www.yao123.com/refundsInstructions">退款说明</a>
							</p>
							<p>
								<a href="https://www.yao123.com/cardInstructions">优惠券说明</a>
							</p>
							<p>
								<a href="https://www.yao123.com/activity/20171115/index.html">平安卡购物说明</a>
							</p>
						</dd>
					</dl>
					<dl>
						<dt>配送服务</dt>
						<dd>
							<p>
								<a href="https://www.yao123.com/shipping">配送范围及费用</a>
							</p>
							<p>
								<a href="https://www.yao123.com/distributionProgress">配送进度查询</a>
							</p>
							<p>
								<a href="https://www.yao123.com/receipt">商品签收与验货</a>
							</p>
						</dd>
					</dl>
					<dl>
						<dt>售后帮助</dt>
						<dd>
							<p>
								<a href="https://www.yao123.com/returnPolicy">退换货政策</a>
							</p>
							<p>
								<a href="https://www.yao123.com/returnProcedure">退换货流程</a>
							</p>
							<p>
								<a href="https://www.yao123.com/customerService">联系客服</a>
							</p>
						</dd>
					</dl>
					<dl>
						<dt>国药网</dt>
						<dd>
							<p>
								<a href="https://www.yao123.com/about">关于我们</a>
							</p>
							<p>
								<a href="https://www.yao123.com/certificate">资质证书</a>
							</p>
							<p>
								<a href="https://www.yao123.com/helpcenter">意见反馈</a>
							</p>
						</dd>
					</dl>
				</div>
				<div class="fl re_phoneno">
					<div>
						<p class="p1">咨询热线：</p>
						<p class="p2">4001-151-161</p>
						<p class="p3">周一到周日 9:00～21:00</p>
					</div>
					<div class="mt-10">
						<p class="p1">售后热线：</p>
						<p class="p2">021-60841111-3613</p>
						<p class="p3">周一到周五 9:00～18:00</p>
					</div>
				</div>
				<div class="qrcode">
					<ul>
						<li><div>
								<img src="css/index/brand_files/qrcode_wx.png">
							</div>
							<h5>国药网官方微信</h5></li>
					</ul>
				</div>
			</div>
			<div class="authentication"></div>
			<div class="copyright">
				<p>
					<a target="_blank" href="http://www.yao123.cn/">关于国药网</a>
					&nbsp;&nbsp;|&nbsp;&nbsp;<a target="_blank"
						href="https://www.yao123.com/quality/">质量信息</a>
					&nbsp;&nbsp;|&nbsp;&nbsp;<a target="_blank"
						href="https://www.yao123.com/sitemap">网站地图</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
						target="_blank" href="https://www.yao123.com/productmap_1">商品地图</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
						target="_blank" href="https://www.yao123.com/link">友情链接</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
						href="https://www.yao123.com/category_70#">诚征英才</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
						href="https://www.yao123.com/category_70#">沪ICP备16002394号-1</a>
					&nbsp;&nbsp;
				</p>
				<p>公司名称：国药堂大药房（上海）有限公司&nbsp;&nbsp;|&nbsp;&nbsp;公司地址：上海市闵行区合川路2679号虹桥商务广场B座3A楼303-305</p>
				<p>Copyright&nbsp;©&nbsp;2010-2016&nbsp;&nbsp;国药网版权所有&nbsp;&nbsp;&nbsp;&nbsp;客服电话：4001-151-161&nbsp;&nbsp;&nbsp;&nbsp;合作电话：021-60841111-3612</p>
			</div>
		</div>
	</div>
	<script src="css/index/brand_files/list.js" type="text/javascript"></script>

</body>
</html>