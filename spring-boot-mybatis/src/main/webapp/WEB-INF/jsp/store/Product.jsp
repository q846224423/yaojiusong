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
            
	<script type="text/javascript" src="js/index/lrscroll_1.js"></script>   
     
    
	<script type="text/javascript" src="js/index/n_nav.js"></script>
    
    <link rel="stylesheet" type="text/css" href="css/index/ShopShow.css" />
    <link rel="stylesheet" type="text/css" href="css/index/MagicZoom.css" />
    <link rel="stylesheet" href="css/index/pro_files/base.css" />
<link rel="stylesheet" href="css/index/pro_files/product1.0.css" />
<link rel="stylesheet" href="css/index/pro_files/owl.carousel.css" />
<link rel="stylesheet" href="css/index/pro_files/owl.theme.css" />
    <script type="text/javascript" src="js/index/MagicZoom.js"></script>
    
    <script type="text/javascript" src="js/index/num.js">
    	var jq = jQuery.noConflict();
    </script>
        
    <script type="text/javascript" src="js/index/p_tab.js"></script>
    
    <script type="text/javascript" src="js/index/shade.js"></script>
  <script>
 function change_buycar(){
 var num = 	jQuery("#n_ipt").val() ;
 var id =	jQuery("#menu3_id").val();
 var name= jQuery("#menu3_name").val();
 var userid = jQuery("#user_id").val();
 
 jQuery.ajax({
		url:"addShopcart",
		type:"post",
		data:{"menu3_id":id,"trade_num":num,"menu3_name":name,"user_id":userid},
		dataType:"json",
		success:function(data){
			
				},
				error:function(){
					alert("操作有误")
				}
	}) 
 }   
    </script>
    <style>
   .black_overlay{
   display:none;
   } 
    
    
    
    </style>
<title></title>
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
    
    <c:when test="${user==null }">
    <div class="car_bg">
    <ul class="cars">
    <li>
    <div class="un_login">还未登录！<a href="Login.jsp" style="color:#ff4e00;">马上登录</a> 查看购物车！</div>
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

 
<!--End Header End--> 
<!--Begin Menu Begin-->
<div class="menu_bg">
	<div class="menu">
    	<!--Begin 商品分类详情 Begin-->    
    	<div class="nav">
        	<div class="nav_t">全部商品分类</div>
            <div class="leftNav" style="display: none;">
  </div>
        </div>  
        <!--End 商品分类详情 End-->                                                     
    	<ul class="menu_r">                                                                                                                                               
        	<li><a href="show">首页</a></li>
            <li><a href="showBy1id?id=1">中西药品</a></li>
            <li><a href="showBy1id?id=2">医疗器械</a></li>
            <li><a href="showBy1id?id=3">养生保健</a></li>
            <li><a href="showBy1id?id=4">美容护肤</a></li>
            <li><a href="showBy1id?id=5">计生用品</a></li>
            <li><a href="showBy1id?id=6">中药饮品</a></li>
        </ul>
        <div class="m_ad">中秋送好礼！</div>
    </div>
</div>
<!--End Menu End-->
<div class="i_bg">
	<div class="postion">
    	<span class="fl">全部 > 商品详情</span>
    </div>    
    <div class="content">
    	                  
        <div id="tsShopContainer">
            <div id="tsImgS"><a href="${menu3.ep_url}" title="Images" class="MagicZoom" id="MagicZoom"><img src="${menu3.ep_url}" width="390" height="390" /></a></div>
           
            <img class="MagicZoomLoading" width="16" height="16" src="images/index/loading.gif" alt="Loading..." />				
        </div>
        
       
        <div class="pro_des">
       
        	<div class="des_name">
            	<p>${menu3.menu3_name }</p>
                “ ${menu3.ep_description} “
            </div>
            <input type="hidden" id="menu3_id" value="${menu3.menu3_id }"/>
            <input type="hidden" id="menu3_name" value="${menu3.menu3_name }"/>
            <input type="hidden" id="user_id" value="${user.user_id }"/>
            <div class="des_price">
            	国药价：：<b>￥${menu3.ep_price }</b><br />
                <span id="opr" class="opr Promotionkist"><span
												class="Promotionspan">包邮</span><span class="zk_center">在线支付满88元包邮</span></span>
            </div>
            
            <div>
						<ul>
							<li class="manufactor_name"><div id="oprText" class="dt">生产厂家：</div>黑龙江葵花</li>
							<li class="brand_name"><div id="oprText" class="dt">规格：</div>${menu3.ep_size }</li>
						</ul>
					</div>
            
            <div class="des_share">
            	<div class="d_sh">
                	分享
                    <div class="d_sh_bg">
                    	<a href="#"><img src="images/index/sh_1.gif" /></a>
                        <a href="#"><img src="images/index/sh_2.gif" /></a>
                        <a href="#"><img src="images/index/sh_3.gif" /></a>
                        <a href="#"><img src="images/index/sh_4.gif" /></a>
                        <a href="#"><img src="images/index/sh_5.gif" /></a>
                    </div>
                </div>
                <div class="d_care"><a onclick="ShowDiv('MyDiv','fade')">关注商品</a></div>
            </div>
            <div class="des_join">
            	<div class="j_nums">
                	<input type="text" id="n_ipt" class="n_ipt" value="1" />
                    <input type="button" onclick="addUpdate(jq(this));"  class="n_btn_1" id = "n_btn_1" />
                    <input type="button" onclick="jianUpdate(jq(this));"  class="n_btn_2" id="n_btn_2" />   
                </div>
                
                <c:choose>
                
                <c:when test="${user== null }">
                <span class="fl"><a href="Jump3.jsp"><img src="images/index/j_car.png" /></a>
                </c:when>
                
                <c:otherwise>
                <span class="fl"><a onclick="change_buycar();ShowDiv_1('MyDiv1','fade1');"><img src="images/index/j_car.png" /></a>
                </c:otherwise>
                
                </c:choose>
                
                </span>
                <span id="show_id"></span>
            </div>  
        </div>    
     
        
        
        
        <!-- <div class="s_brand">
        	<div class="s_brand_img"><img src="images/index/sbrand.jpg" width="188" height="132" /></div>
            <div class="s_brand_c"><a href="#">进入品牌专区</a></div>
        </div>  -->   
        
        
    </div>
    <div class="content mar_20">
<div class="row">
				<div class="span5">
					<div class="product-detail">
						<div class="tab">
							<ul class="tabs_nav">
								<li class="cur"><a href="javascript:;">商品介绍</a></li>
								<li><a href="javascript:;">说明书</a></li>
								<li style="display: none;"><a href="javascript:;">成交纪录</a></li>
							</ul>
						</div>
						<div class="tab_content">
							<div id="groupDetail" class="switchable tab_con"
								style="display: block;">
								<div class="parameter m10">
									<h5>请仔细阅读说明书并按说明书使用或在药师指导下购买和使用</h5>
									<ul>
										<li><span>商品名称：</span><span class="lv">葵花 胃康灵胶囊
												48粒</span></li>
										<li><span>规格：</span><span class="lv">0.4G*48粒</span></li>
										<li><span>生产厂家（生产企业）：</span><span class="lv">黑龙江葵花</span></li>
										<li><span>品牌：</span><span class="lv">葵花</span></li>
										<li><span>保质期（有效期）：</span><span class="lv">36个月</span></li>
										<li><span>批准文号：</span><span class="lv">国药准字Z23021657</span></li>
									</ul>
								</div>
								<div class="content m10 lv Ad_tel_before">
									<!-- 商品详情 -->
									<p>
										<img alt=""
											src="css/index/pro_files/gct10953201602041423358ab3e253529b0ab00152aaf344750c8b.jpg"
											style=""><img alt=""
											src="css/index/pro_files/gct10953201602041423418ab3e253529b0ab00152aaf35ac00c8c.jpg"
											style=""><img alt=""
											src="css/index/pro_files/gct10953201602041423478ab3e253529b0ab00152aaf372d70c8d.jpg"
											style=""><img alt=""
											src="css/index/pro_files/gct10953201602041423548ab3e253529b0ab00152aaf38d940c8e.jpg"
											style=""><img alt=""
											src="css/index/pro_files/gct10953201602041424008ab3e253529b0ab00152aaf3a5400c8f.jpg"
											style="">
									</p>

								</div>
								<div class="parameter">
									<h4>说明书</h4>
									<div class="tips">
										<i></i><span>注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！且以收到的实物为准
											。若本商城没有及时更新，请大家谅解。</span>
									</div>
									<p>请仔细阅读葵花 胃康灵胶囊 48粒的作用说明，并在药师指导下购买和使用。</p>
									<table id="instruc_list">
										<tbody>
											<tr>
												<td width="100" align="left">商品名</td>
												<td width="770px">葵花 胃康灵胶囊 48粒</td>
											</tr>
											<tr>
												<td width="100" align="left">通用名</td>
												<td width="770px">胃康灵胶囊</td>
											</tr>
											<tr>
												<td width="100" align="left">拼音名</td>
												<td width="770px">WeiKangLingJiaoNang</td>
											</tr>
											<tr>
												<td width="100" align="left">规格</td>
												<td width="770px">0.4g*48粒</td>
											</tr>
											<tr>
												<td width="100" align="left">批准文号</td>
												<td width="770px">国药准字Z23021657</td>
											</tr>
											<tr>
												<td width="100" align="left">生产厂家</td>
												<td width="770px">黑龙江葵花</td>
											</tr>
											<tr>
												<td width="100" align="left">成分</td>
												<td width="770px">白芍、白及、三七、甘草、茯苓、延胡索、海螵蛸、颠茄浸膏.辅料为碳酸氢钠。</td>
											</tr>
											<tr>
												<td width="100" align="left">性状</td>
												<td width="770px">本品为硬胶囊，内容物是淡黄色至棕褐色的粉末，味甘。</td>
											</tr>
											<tr>
												<td width="100" align="left">功能主治</td>
												<td width="770px">柔肝和胃，散瘀，缓急止痛。用于肝胃不和、瘀血阻络所致的胃脘疼痛、连及两肋、嗳气、泛酸；慢性胃炎见上述证候者。</td>
											</tr>
											<tr>
												<td width="100" align="left">用法用量</td>
												<td width="770px">口服，一次4粒，一日3次；饭后服用。</td>
											</tr>
											<tr>
												<td width="100" align="left">不良反应</td>
												<td width="770px">较常见的有：口干、便秘、出汗减少、口鼻咽喉及皮肤干燥、视力模糊、排尿困难（老人）。</td>
											</tr>
											<tr>
												<td width="100" align="left">禁忌</td>
												<td width="770px">前列腺肥大、青光眼患者禁用。2 哺乳期妇女禁用。</td>
											</tr>
											<tr>
												<td width="100" align="left">注意事项</td>
												<td width="770px">1 饮食宜清淡，忌酒及辛辣、生冷、油腻食物。2
													忌愤怒、忧郁，保持心情舒畅。3
													有高血压、心脏病、返流性食管炎、胃肠道阻塞性疾患、甲状腺机能亢进、溃疡性结肠炎患者慎用。4
													孕妇慎用。儿童、年老体弱者应在医师指导下服用。5 胃痛严重者，应及时去医院就诊。6
													服药3天症状无缓解，应去医院就诊。7 对本品过敏者禁用，过敏体质者慎用。8 本品性状发生改变时禁止使用。9
													儿童必须在成人监护下使用。10 请将本品放在儿童不能接触的地方。11 如正在使用其他药品，使用本品前请咨询医师或药师。
												</td>
											</tr>
											<tr>
												<td width="100" align="left">药物相互作用</td>
												<td width="770px">1.本品与金刚烷胺、阿托品类药等同用时，本品的不良反应可加剧。2.如与其他药物同时使用可能会发生药物相互作用，详情请咨询医师或药师。</td>
											</tr>
											<tr>
												<td width="100" align="left">药理作用</td>
												<td width="770px">尚不明确</td>
											</tr>
											<tr>
												<td width="100" align="left">贮藏</td>
												<td width="770px">密封。</td>
											</tr>
											<tr>
												<td width="100" align="left">生产企业</td>
												<td width="770px">黑龙江葵花药业股份有限公司</td>
											</tr>
											<tr>
												<td width="100" align="left">包装</td>
												<td width="770px">盒</td>
											</tr>
											<tr>
												<td width="100" align="left">保质期</td>
												<td width="770px">36个月</td>
											</tr>

										</tbody>
									</table>

								</div>
							</div>
							<div id="instructions" class="switchable tab_con">
								<table id="instruc_list">
									<tbody>
										<tr>
											<td width="100" align="left">商品名</td>
											<td width="770px">葵花 胃康灵胶囊 48粒</td>
										</tr>
										<tr>
											<td width="100" align="left">通用名</td>
											<td width="770px">胃康灵胶囊</td>
										</tr>
										<tr>
											<td width="100" align="left">拼音名</td>
											<td width="770px">WeiKangLingJiaoNang</td>
										</tr>
										<tr>
											<td width="100" align="left">规格</td>
											<td width="770px">0.4g*48粒</td>
										</tr>
										<tr>
											<td width="100" align="left">批准文号</td>
											<td width="770px">国药准字Z23021657</td>
										</tr>
										<tr>
											<td width="100" align="left">生产厂家</td>
											<td width="770px">黑龙江葵花</td>
										</tr>
										<tr>
											<td width="100" align="left">成分</td>
											<td width="770px">白芍、白及、三七、甘草、茯苓、延胡索、海螵蛸、颠茄浸膏.辅料为碳酸氢钠。</td>
										</tr>
										<tr>
											<td width="100" align="left">性状</td>
											<td width="770px">本品为硬胶囊，内容物是淡黄色至棕褐色的粉末，味甘。</td>
										</tr>
										<tr>
											<td width="100" align="left">功能主治</td>
											<td width="770px">柔肝和胃，散瘀，缓急止痛。用于肝胃不和、瘀血阻络所致的胃脘疼痛、连及两肋、嗳气、泛酸；慢性胃炎见上述证候者。</td>
										</tr>
										<tr>
											<td width="100" align="left">用法用量</td>
											<td width="770px">口服，一次4粒，一日3次；饭后服用。</td>
										</tr>
										<tr>
											<td width="100" align="left">不良反应</td>
											<td width="770px">较常见的有：口干、便秘、出汗减少、口鼻咽喉及皮肤干燥、视力模糊、排尿困难（老人）。</td>
										</tr>
										<tr>
											<td width="100" align="left">禁忌</td>
											<td width="770px">前列腺肥大、青光眼患者禁用。2 哺乳期妇女禁用。</td>
										</tr>
										<tr>
											<td width="100" align="left">注意事项</td>
											<td width="770px">1 饮食宜清淡，忌酒及辛辣、生冷、油腻食物。2
												忌愤怒、忧郁，保持心情舒畅。3
												有高血压、心脏病、返流性食管炎、胃肠道阻塞性疾患、甲状腺机能亢进、溃疡性结肠炎患者慎用。4
												孕妇慎用。儿童、年老体弱者应在医师指导下服用。5 胃痛严重者，应及时去医院就诊。6 服药3天症状无缓解，应去医院就诊。7
												对本品过敏者禁用，过敏体质者慎用。8 本品性状发生改变时禁止使用。9 儿童必须在成人监护下使用。10
												请将本品放在儿童不能接触的地方。11 如正在使用其他药品，使用本品前请咨询医师或药师。</td>
										</tr>
										<tr>
											<td width="100" align="left">药物相互作用</td>
											<td width="770px">1.本品与金刚烷胺、阿托品类药等同用时，本品的不良反应可加剧。2.如与其他药物同时使用可能会发生药物相互作用，详情请咨询医师或药师。</td>
										</tr>
										<tr>
											<td width="100" align="left">药理作用</td>
											<td width="770px">尚不明确</td>
										</tr>
										<tr>
											<td width="100" align="left">贮藏</td>
											<td width="770px">密封。</td>
										</tr>
										<tr>
											<td width="100" align="left">生产企业</td>
											<td width="770px">黑龙江葵花药业股份有限公司</td>
										</tr>
										<tr>
											<td width="100" align="left">包装</td>
											<td width="770px">盒</td>
										</tr>
										<tr>
											<td width="100" align="left">保质期</td>
											<td width="770px">36个月</td>
										</tr>

									</tbody>
								</table>

							</div>
							<div id="record" class="switchable tab_con"></div>
						</div>
					</div>
				</div>
				<div class="span1">
					<div class="related">
						<h2>相关分类</h2>
						<div class="link">
							<ul>
								<li><a href="https://www.yao123.com/category_8">滋补调养</a></li>
								<li><a href="https://www.yao123.com/category_30">风湿骨科</a></li>
								<li><a href="https://www.yao123.com/category_32">妇科疾病</a></li>
								<li><a href="https://www.yao123.com/category_33">五官科</a></li>
								<li><a href="https://www.yao123.com/category_59">男性疾病</a></li>
								<li><a href="https://www.yao123.com/category_60">心脑血管</a></li>
								<li><a href="https://www.yao123.com/category_61">神经系统</a></li>
								<li><a href="https://www.yao123.com/category_87">内分泌科</a></li>
								<li><a href="https://www.yao123.com/category_104">呼吸道疾病</a></li>
								<li><a href="https://www.yao123.com/category_112">肝病科</a></li>
								<li><a href="https://www.yao123.com/category_119">消化系统疾病</a></li>
								<li><a href="https://www.yao123.com/category_140">肿瘤科</a></li>
								<li><a href="https://www.yao123.com/category_209">皮肤病</a></li>
								<li><a href="https://www.yao123.com/category_757">精神心理科</a></li>
							</ul>
						</div>
					</div>
					<div class="related">
						<h2>同类其他品牌</h2>
						<div class="link_pai">
							<ul>
								<li><a href="https://www.yao123.com/category_119-126">仙河</a></li>
								<li><a href="https://www.yao123.com/category_119-122">消脱止-M</a></li>
								<li><a href="https://www.yao123.com/category_119-206">东信</a></li>
								<li><a href="https://www.yao123.com/category_119-113">一洋</a></li>
								<li><a href="https://www.yao123.com/category_119-116">雅通</a></li>
								<li><a href="https://www.yao123.com/category_119-31">九芝堂</a></li>
								<li><a href="https://www.yao123.com/category_119-197">国药</a></li>
								<li><a href="https://www.yao123.com/category_119-171">罗丹</a></li>
								<li><a href="https://www.yao123.com/category_119-186">金爵</a></li>
								<li><a href="https://www.yao123.com/category_119-188">惠加强－G</a></li>
								<li><a href="https://www.yao123.com/category_119-225">阿房宫</a></li>
								<li><a href="https://www.yao123.com/category_119-209">德济</a></li>
								<li><a href="https://www.yao123.com/category_119-221">奥达</a></li>
								<li><a href="https://www.yao123.com/category_119-193">胡庆余堂</a></li>
								<li><a href="https://www.yao123.com/category_119-147">施维舒</a></li>
								<li><a href="https://www.yao123.com/category_119-8">同仁堂</a></li>
								<li><a href="https://www.yao123.com/category_119-161">平康</a></li>
								<li><a href="https://www.yao123.com/category_119-315">盘龙云海</a></li>
								<li><a href="https://www.yao123.com/category_119-317">吗丁啉</a></li>
								<li><a href="https://www.yao123.com/category_119-598">神鹿</a></li>
								<li><a href="https://www.yao123.com/category_119-391">汉森</a></li>
								<li><a href="https://www.yao123.com/category_119-847">杜拉宝</a></li>
								<li><a href="https://www.yao123.com/category_119-256">Roro</a></li>
								<li><a href="https://www.yao123.com/category_119-493">丽允坊</a></li>
								<li><a href="https://www.yao123.com/category_119-528">美优</a></li>
								<li><a href="https://www.yao123.com/category_119-704">信奥</a></li>
								<li><a href="https://www.yao123.com/category_119-289">百花牌</a></li>
								<li><a href="https://www.yao123.com/category_119-861">耐信</a></li>
								<li><a href="https://www.yao123.com/category_119-282">奥克</a></li>
								<li><a href="https://www.yao123.com/category_119-718">亚邦</a></li>
								<li><a href="https://www.yao123.com/category_119-434">金焦</a></li>
								<li><a href="https://www.yao123.com/category_119-569">全星</a></li>
								<li><a href="https://www.yao123.com/category_119-491">立卫克</a></li>
								<li><a href="https://www.yao123.com/category_119-411">汇仁</a></li>
								<li><a href="https://www.yao123.com/category_119-555">平光</a></li>
								<li><a href="https://www.yao123.com/category_119-691">泻利停</a></li>
								<li><a href="https://www.yao123.com/category_119-650">天天乐</a></li>
								<li><a href="https://www.yao123.com/category_119-648">天施康</a></li>
								<li><a href="https://www.yao123.com/category_119-241">Good
										Doctor/好医生</a></li>
								<li><a href="https://www.yao123.com/category_119-244">HH/黄海制药</a></li>
								<li><a href="https://www.yao123.com/category_119-69">云鹏</a></li>
								<li><a href="https://www.yao123.com/category_119-571">仁和</a></li>
								<li><a href="https://www.yao123.com/category_119-710">星泉牌</a></li>
								<li><a href="https://www.yao123.com/category_119-706">信法丁</a></li>
								<li><a href="https://www.yao123.com/category_119-172">鲁南</a></li>
								<li><a href="https://www.yao123.com/category_119-965">新络纳</a></li>
								<li><a href="https://www.yao123.com/category_119-331">大峻</a></li>
								<li><a href="https://www.yao123.com/category_119-966">美唯宁</a></li>
								<li><a href="https://www.yao123.com/category_119-507">鲁南快力</a></li>
								<li><a href="https://www.yao123.com/category_119-414">吉春</a></li>
								<li><a href="https://www.yao123.com/category_119-579">瑞琪</a></li>
								<li><a href="https://www.yao123.com/category_119-617">双湖</a></li>
								<li><a href="https://www.yao123.com/category_119-505">鲁明</a></li>
								<li><a href="https://www.yao123.com/category_119-671">谓葆</a></li>
								<li><a href="https://www.yao123.com/category_119-404">华纳</a></li>
								<li><a href="https://www.yao123.com/category_119-255">PIDI/彼迪</a></li>
								<li><a href="https://www.yao123.com/category_119-118">修正</a></li>
								<li><a href="https://www.yao123.com/category_119-442">京万红</a></li>
								<li><a href="https://www.yao123.com/category_119-258">TASLY/天士力</a></li>
								<li><a href="https://www.yao123.com/category_119-443">京新</a></li>
								<li><a href="https://www.yao123.com/category_119-629">素可立</a></li>
								<li><a href="https://www.yao123.com/category_119-385">广宇</a></li>
								<li><a href="https://www.yao123.com/category_119-227">SINE/信谊</a></li>
								<li><a href="https://www.yao123.com/category_119-625">斯威</a></li>
								<li><a href="https://www.yao123.com/category_119-28">康缘</a></li>
								<li><a href="https://www.yao123.com/category_119-970">兰悉多</a></li>
								<li><a href="https://www.yao123.com/category_119-975">威地美</a></li>
								<li><a href="https://www.yao123.com/category_119-427">健维能</a></li>
								<li><a href="https://www.yao123.com/category_119-971">雨田青</a></li>
								<li><a href="https://www.yao123.com/category_119-972">安斯菲</a></li>
								<li><a href="https://www.yao123.com/category_119-613">舒泰得</a></li>
								<li><a href="https://www.yao123.com/category_119-976">瑞健</a></li>
								<li><a href="https://www.yao123.com/category_119-708">信卫安</a></li>
								<li><a href="https://www.yao123.com/category_119-348">丁齐尔</a></li>
								<li><a href="https://www.yao123.com/category_119-526">美莎欣</a></li>
								<li><a href="https://www.yao123.com/category_119-1327">潘舒泰克</a></li>
								<li><a href="https://www.yao123.com/category_119-301">北京韩美</a></li>
								<li><a href="https://www.yao123.com/category_119-174">立效</a></li>
								<li><a href="https://www.yao123.com/category_119-589">三仁堂</a></li>
								<li><a href="https://www.yao123.com/category_119-645">天平</a></li>
								<li><a href="https://www.yao123.com/category_119-482">乐仁堂</a></li>
								<li><a href="https://www.yao123.com/category_119-335">道君</a></li>
								<li><a href="https://www.yao123.com/category_119-36">葵花</a></li>
								<li><a href="https://www.yao123.com/category_119-218">百灵鸟</a></li>
								<li><a href="https://www.yao123.com/category_119-701">新亚闵行</a></li>
								<li><a href="https://www.yao123.com/category_119-199">光辉</a></li>
								<li><a href="https://www.yao123.com/category_119-1559">威太</a></li>
								<li><a href="https://www.yao123.com/category_119-58">正大青春宝</a></li>
								<li><a href="https://www.yao123.com/category_119-585">润弘</a></li>
								<li><a href="https://www.yao123.com/category_119-78">援生力维</a></li>
								<li><a href="https://www.yao123.com/category_119-91">银诺克</a></li>
								<li><a href="https://www.yao123.com/category_119-686">仙竹</a></li>
								<li><a href="https://www.yao123.com/category_119-167">马应龙</a></li>
								<li><a href="https://www.yao123.com/category_119-86">永治</a></li>
								<li><a href="https://www.yao123.com/category_119-713">续金</a></li>
								<li><a href="https://www.yao123.com/category_119-219">白云山</a></li>
								<li><a href="https://www.yao123.com/category_119-29">云南白药</a></li>
								<li><a href="https://www.yao123.com/category_119-533">闽海</a></li>
								<li><a href="https://www.yao123.com/category_119-7">万通</a></li>
								<li><a href="https://www.yao123.com/category_119-903">迪诺洛克</a></li>
								<li><a href="https://www.yao123.com/category_119-592">森迪</a></li>
								<li><a href="https://www.yao123.com/category_119-355">多力澳</a></li>
								<li><a href="https://www.yao123.com/category_119-160">普济堂</a></li>
								<li><a href="https://www.yao123.com/category_119-111">999</a></li>
								<li><a href="https://www.yao123.com/category_119-601">沈阳红药</a></li>
								<li><a href="https://www.yao123.com/category_119-216">本草纲目</a></li>
								<li><a href="https://www.yao123.com/category_119-115">亚宝</a></li>
								<li><a href="https://www.yao123.com/category_119-165">民生</a></li>
								<li><a href="https://www.yao123.com/category_119-1000">为健
								</a></li>
								<li><a href="https://www.yao123.com/category_119-1008">潘妥洛克</a></li>
								<li><a href="https://www.yao123.com/category_119-1010">圣元</a></li>
								<li><a href="https://www.yao123.com/category_119-1028">玻特利</a></li>
								<li><a href="https://www.yao123.com/category_119-1033">鼎诺</a></li>
								<li><a href="https://www.yao123.com/category_119-1035">龙奥</a></li>
								<li><a href="https://www.yao123.com/category_119-1036">强力舒</a></li>
								<li><a href="https://www.yao123.com/category_119-1041">高舒达</a></li>
								<li><a href="https://www.yao123.com/category_119-1043">洁维乐</a></li>
								<li><a href="https://www.yao123.com/category_119-1048">康普</a></li>
								<li><a href="https://www.yao123.com/category_119-1049">兰索星
								</a></li>
								<li><a href="https://www.yao123.com/category_119-762">三精</a></li>
								<li><a href="https://www.yao123.com/category_119-1059">信龙浣肠</a></li>
								<li><a href="https://www.yao123.com/category_119-1062">多喜
								</a></li>
								<li><a href="https://www.yao123.com/category_119-1075">巨焱消</a></li>
								<li><a href="https://www.yao123.com/category_119-1081">天舒欣</a></li>
								<li><a href="https://www.yao123.com/category_119-1084">盖爽</a></li>
								<li><a href="https://www.yao123.com/category_119-387">国风</a></li>
								<li><a href="https://www.yao123.com/category_119-1095">思连康</a></li>
								<li><a href="https://www.yao123.com/category_119-1101">美德</a></li>
								<li><a href="https://www.yao123.com/category_119-557">普壮</a></li>
								<li><a href="https://www.yao123.com/category_119-71">云丰</a></li>
								<li><a href="https://www.yao123.com/category_119-1074">力</a></li>
								<li><a href="https://www.yao123.com/category_119-1113">九方</a></li>
								<li><a href="https://www.yao123.com/category_119-1131">东方</a></li>
								<li><a href="https://www.yao123.com/category_119-146">世纪神龙</a></li>
								<li><a href="https://www.yao123.com/category_119-1142">跨海</a></li>
								<li><a href="https://www.yao123.com/category_119-1149">九惠药业</a></li>
								<li><a href="https://www.yao123.com/category_119-1152">奇力</a></li>
								<li><a href="https://www.yao123.com/category_119-1153">梅峰</a></li>
								<li><a href="https://www.yao123.com/category_119-1168">惠迪</a></li>
								<li><a href="https://www.yao123.com/category_119-1173">美常安</a></li>
								<li><a href="https://www.yao123.com/category_119-1177">宝珠牌</a></li>
								<li><a href="https://www.yao123.com/category_119-336">得恩德</a></li>
								<li><a href="https://www.yao123.com/category_119-1178">膜固思达</a></li>
								<li><a href="https://www.yao123.com/category_119-1180">安康</a></li>
								<li><a href="https://www.yao123.com/category_119-1195">康青</a></li>
								<li><a href="https://www.yao123.com/category_119-1217">云南白药
								</a></li>
								<li><a href="https://www.yao123.com/category_119-1221">Circanetten
										New</a></li>
								<li><a href="https://www.yao123.com/category_119-288">白敬宇</a></li>
								<li><a href="https://www.yao123.com/category_119-1233">格拉丹东</a></li>
								<li><a href="https://www.yao123.com/category_119-1341">孔孟</a></li>
								<li><a href="https://www.yao123.com/category_119-1343">SY/三元</a></li>
								<li><a href="https://www.yao123.com/category_119-1103">德昌祥</a></li>
								<li><a href="https://www.yao123.com/category_119-1397">怡瑞</a></li>
								<li><a href="https://www.yao123.com/category_119-1423">开济
								</a></li>
								<li><a href="https://www.yao123.com/category_119-430">今辰</a></li>
								<li><a href="https://www.yao123.com/category_119-1429">济诺</a></li>
								<li><a href="https://www.yao123.com/category_119-1433">益民堂
								</a></li>
								<li><a href="https://www.yao123.com/category_119-1440">米桑</a></li>
								<li><a href="https://www.yao123.com/category_119-1463">迪诺洛克
								</a></li>
								<li><a href="https://www.yao123.com/category_119-1468">泾渭</a></li>
								<li><a href="https://www.yao123.com/category_119-1469">自维</a></li>
								<li><a href="https://www.yao123.com/category_119-1483">博叶</a></li>
								<li><a href="https://www.yao123.com/category_119-372">辅仁</a></li>
								<li><a href="https://www.yao123.com/category_119-1513">JUMPCAN/济川药业
								</a></li>
								<li><a href="https://www.yao123.com/category_119-1515">华佗
								</a></li>
								<li><a href="https://www.yao123.com/category_119-1524">必奇</a></li>
								<li><a href="https://www.yao123.com/category_119-1526">北神奇</a></li>
								<li><a href="https://www.yao123.com/category_119-1231">陈李济</a></li>
								<li><a href="https://www.yao123.com/category_119-330">达仁堂</a></li>
								<li><a href="https://www.yao123.com/category_119-1663">多美舒</a></li>
								<li><a href="https://www.yao123.com/category_119-1530">达喜</a></li>
								<li><a href="https://www.yao123.com/category_119-1417">兴安岭</a></li>
								<li><a href="https://www.yao123.com/category_119-1579">护佑</a></li>
								<li><a href="https://www.yao123.com/category_119-616">双海</a></li>
								<li><a href="https://www.yao123.com/category_119-426">健民</a></li>
								<li><a href="https://www.yao123.com/category_119-810">江中</a></li>
								<li><a href="https://www.yao123.com/category_119-1592">乐可舒</a></li>
								<li><a href="https://www.yao123.com/category_119-481">乐宁</a></li>
								<li><a href="https://www.yao123.com/category_119-785">雷氏</a></li>
								<li><a href="https://www.yao123.com/category_119-1595">龙虎</a></li>
								<li><a href="https://www.yao123.com/category_119-1597">龙牡</a></li>
								<li><a href="https://www.yao123.com/category_119-1599">洛赛克</a></li>
								<li><a href="https://www.yao123.com/category_119-1598">妈咪爱</a></li>
								<li><a href="https://www.yao123.com/category_119-1280">仲景
								</a></li>
								<li><a href="https://www.yao123.com/category_119-1611">喇叭牌</a></li>
								<li><a href="https://www.yao123.com/category_119-1613">整肠生</a></li>
								<li><a href="https://www.yao123.com/category_119-120">信谊</a></li>
								<li><a href="https://www.yao123.com/category_119-707">信龙</a></li>
								<li><a href="https://www.yao123.com/category_119-4298">卫太医</a></li>
								<li><a href="https://www.yao123.com/category_119-1080">新乐</a></li>
								<li><a href="https://www.yao123.com/category_119-1655">太宁</a></li>
								<li><a href="https://www.yao123.com/category_119-1657">舒可捷</a></li>
								<li><a href="https://www.yao123.com/category_119-575">荣昌</a></li>
								<li><a href="https://www.yao123.com/category_119-1667">四方箄</a></li>
								<li><a href="https://www.yao123.com/category_119-1699">史克肠虫清</a></li>
								<li><a href="https://www.yao123.com/category_119-1700">科瑞</a></li>
								<li><a href="https://www.yao123.com/category_119-1706">百灵鸟</a></li>
								<li><a href="https://www.yao123.com/category_119-1712">六棉牌</a></li>
								<li><a href="https://www.yao123.com/category_119-1584">王老吉</a></li>
								<li><a href="https://www.yao123.com/category_119-1715">同济</a></li>
								<li><a href="https://www.yao123.com/category_119-236">CONBA/康恩贝</a></li>
								<li><a href="https://www.yao123.com/category_119-189">黄海</a></li>
								<li><a href="https://www.yao123.com/category_119-1729">索通</a></li>
								<li><a href="https://www.yao123.com/category_119-1743">宝泰理通</a></li>
								<li><a href="https://www.yao123.com/category_119-1744">百科力康</a></li>
								<li><a href="https://www.yao123.com/category_119-1753">苗药</a></li>
								<li><a href="https://www.yao123.com/category_119-729">一正</a></li>
								<li><a href="https://www.yao123.com/category_119-4227">豫新</a></li>
								<li><a href="https://www.yao123.com/category_119-4768">同兴康</a></li>
								<li><a href="https://www.yao123.com/category_119-1806">新胃必治</a></li>
								<li><a href="https://www.yao123.com/category_119-1815">立可安</a></li>
								<li><a href="https://www.yao123.com/category_119-894">片仔癀</a></li>
								<li><a href="https://www.yao123.com/category_119-1833">亿希乐</a></li>
								<li><a href="https://www.yao123.com/category_119-1612">太极</a></li>
								<li><a href="https://www.yao123.com/category_119-1839">利君</a></li>
								<li><a href="https://www.yao123.com/category_119-1840">武都</a></li>
								<li><a href="https://www.yao123.com/category_119-1676">云昆</a></li>
								<li><a href="https://www.yao123.com/category_119-562">麒麟</a></li>
								<li><a href="https://www.yao123.com/category_119-1842">丽珠得乐</a></li>
								<li><a href="https://www.yao123.com/category_119-1843">舒威</a></li>
								<li><a href="https://www.yao123.com/category_119-1851">天泰</a></li>
								<li><a href="https://www.yao123.com/category_119-1247">苗泰</a></li>
								<li><a href="https://www.yao123.com/category_119-1856">宏俊</a></li>
								<li><a href="https://www.yao123.com/category_119-1857">百善为民</a></li>
								<li><a href="https://www.yao123.com/category_119-1199">泰华堂</a></li>
								<li><a href="https://www.yao123.com/category_119-21">佛慈</a></li>
								<li><a href="https://www.yao123.com/category_119-1585">济药</a></li>
								<li><a href="https://www.yao123.com/category_119-312">步长</a></li>
								<li><a href="https://www.yao123.com/category_119-1106">苏中
								</a></li>
								<li><a href="https://www.yao123.com/category_119-1718">延诺林</a></li>
								<li><a href="https://www.yao123.com/category_119-1865">瑞斯达</a></li>
								<li><a href="https://www.yao123.com/category_119-273">安特</a></li>
								<li><a href="https://www.yao123.com/category_119-1866">多维</a></li>
								<li><a href="https://www.yao123.com/category_119-1935">红延</a></li>
								<li><a href="https://www.yao123.com/category_119-153">三益</a></li>
								<li><a href="https://www.yao123.com/category_119-1937">南洋</a></li>
								<li><a href="https://www.yao123.com/category_119-1938">常立宁</a></li>
								<li><a href="https://www.yao123.com/category_119-1940">克菲儿</a></li>
								<li><a href="https://www.yao123.com/category_119-1941">万象</a></li>
								<li><a href="https://www.yao123.com/category_119-1942">仕乐生</a></li>
								<li><a href="https://www.yao123.com/category_119-1943">邦消安</a></li>
								<li><a href="https://www.yao123.com/category_119-1944">欧敏</a></li>
								<li><a href="https://www.yao123.com/category_119-702">鑫齐</a></li>
								<li><a href="https://www.yao123.com/category_119-1945">乐邦</a></li>
								<li><a href="https://www.yao123.com/category_119-1946">中央</a></li>
								<li><a href="https://www.yao123.com/category_119-1947">康宝</a></li>
								<li><a href="https://www.yao123.com/category_119-1948">司邦得</a></li>
								<li><a href="https://www.yao123.com/category_119-1858">昆中</a></li>
								<li><a href="https://www.yao123.com/category_119-1949">安场</a></li>
								<li><a href="https://www.yao123.com/category_119-1950">如意</a></li>
								<li><a href="https://www.yao123.com/category_119-1951">好娃友</a></li>
								<li><a href="https://www.yao123.com/category_119-1929">央宗</a></li>
								<li><a href="https://www.yao123.com/category_119-1138">羚锐</a></li>
								<li><a href="https://www.yao123.com/category_119-1952">菊乐</a></li>
								<li><a href="https://www.yao123.com/category_119-337">德元堂</a></li>
								<li><a href="https://www.yao123.com/category_119-1953">吉药</a></li>
								<li><a href="https://www.yao123.com/category_119-198">贵州百灵</a></li>
								<li><a href="https://www.yao123.com/category_119-946">万通</a></li>
								<li><a href="https://www.yao123.com/category_119-1954">保元堂</a></li>
								<li><a href="https://www.yao123.com/category_119-351">东方金宝</a></li>
								<li><a href="https://www.yao123.com/category_119-1620">扬子江</a></li>
								<li><a href="https://www.yao123.com/category_119-595">上龙</a></li>
								<li><a href="https://www.yao123.com/category_119-1868">鞠氏</a></li>
								<li><a href="https://www.yao123.com/category_119-1378">玉仁</a></li>
								<li><a href="https://www.yao123.com/category_119-1957">殷氏</a></li>
								<li><a href="https://www.yao123.com/category_119-1958">海王金象</a></li>
								<li><a href="https://www.yao123.com/category_119-1959">连乡</a></li>
								<li><a href="https://www.yao123.com/category_119-1962">天福康</a></li>
								<li><a href="https://www.yao123.com/category_119-1960">佐今明</a></li>
								<li><a href="https://www.yao123.com/category_119-654">同济堂</a></li>
								<li><a href="https://www.yao123.com/category_119-995">黑宝</a></li>
								<li><a href="https://www.yao123.com/category_119-1352">葵花药业</a></li>
								<li><a href="https://www.yao123.com/category_119-4705">善得康</a></li>
								<li><a href="https://www.yao123.com/category_119-1961">四药</a></li>
								<li><a href="https://www.yao123.com/category_119-1137">一品红</a></li>
								<li><a href="https://www.yao123.com/category_119-1963">喜儿康</a></li>
								<li><a href="https://www.yao123.com/category_119-79">元和</a></li>
								<li><a href="https://www.yao123.com/category_119-1964">特格尔</a></li>
								<li><a href="https://www.yao123.com/category_119-1966">玉兰</a></li>
								<li><a href="https://www.yao123.com/category_119-780">荣昌制药</a></li>
								<li><a href="https://www.yao123.com/category_119-1967">兴业</a></li>
								<li><a href="https://www.yao123.com/category_119-1968">功达</a></li>
								<li><a href="https://www.yao123.com/category_119-1862">万寿宫</a></li>
								<li><a href="https://www.yao123.com/category_119-2069">澳诺锌钙特</a></li>
								<li><a href="https://www.yao123.com/category_119-2070">新盖金典</a></li>
								<li><a href="https://www.yao123.com/category_119-1672">孔府</a></li>
								<li><a href="https://www.yao123.com/category_119-1046">圣济堂</a></li>
								<li><a href="https://www.yao123.com/category_119-2076">同人泰</a></li>
								<li><a href="https://www.yao123.com/category_119-2127">布布</a></li>
								<li><a href="https://www.yao123.com/category_119-2162">先声再康</a></li>
								<li><a href="https://www.yao123.com/category_119-1118">江西民济</a></li>
								<li><a href="https://www.yao123.com/category_119-2183">莎尔福</a></li>
								<li><a href="https://www.yao123.com/category_119-2137">鲁明贝宁</a></li>
								<li><a href="https://www.yao123.com/category_119-2192">海灵</a></li>
								<li><a href="https://www.yao123.com/category_119-2210">蔡氏丑宝</a></li>
								<li><a href="https://www.yao123.com/category_119-2219">福松</a></li>
								<li><a href="https://www.yao123.com/category_119-2226">奥兰特</a></li>
								<li><a href="https://www.yao123.com/category_119-303">倍特</a></li>
								<li><a href="https://www.yao123.com/category_119-2241">林海</a></li>
								<li><a href="https://www.yao123.com/category_119-2251">丽倍乐</a></li>
								<li><a href="https://www.yao123.com/category_119-494">丽珠</a></li>
								<li><a href="https://www.yao123.com/category_119-2260">科芬奇</a></li>
								<li><a href="https://www.yao123.com/category_119-2205">蒙王</a></li>
								<li><a href="https://www.yao123.com/category_119-2278">万洲</a></li>
								<li><a href="https://www.yao123.com/category_119-2295">达适</a></li>
								<li><a href="https://www.yao123.com/category_119-504">隆顺榕</a></li>
								<li><a href="https://www.yao123.com/category_119-2300">刻康</a></li>
								<li><a href="https://www.yao123.com/category_119-2322">常为康</a></li>
								<li><a href="https://www.yao123.com/category_119-1121">颐圣</a></li>
								<li><a href="https://www.yao123.com/category_119-2272">莱达</a></li>
								<li><a href="https://www.yao123.com/category_119-2326">为力苏</a></li>
								<li><a href="https://www.yao123.com/category_119-2328">为快乐</a></li>
								<li><a href="https://www.yao123.com/category_119-2347">故宫</a></li>
								<li><a href="https://www.yao123.com/category_119-103">以岭</a></li>
								<li><a href="https://www.yao123.com/category_119-2352">白鹤</a></li>
								<li><a href="https://www.yao123.com/category_119-97">益佰</a></li>
								<li><a href="https://www.yao123.com/category_119-2385">益动</a></li>
								<li><a href="https://www.yao123.com/category_119-2400">安易</a></li>
								<li><a href="https://www.yao123.com/category_119-2402">新乐
								</a></li>
								<li><a href="https://www.yao123.com/category_119-2403">济民可信</a></li>
								<li><a href="https://www.yao123.com/category_119-2357">可意林</a></li>
								<li><a href="https://www.yao123.com/category_119-2408">辰诗</a></li>
								<li><a href="https://www.yao123.com/category_119-250">KL/科伦</a></li>
								<li><a href="https://www.yao123.com/category_119-2275">科晖</a></li>
								<li><a href="https://www.yao123.com/category_119-1001">艾迪莎</a></li>
								<li><a href="https://www.yao123.com/category_119-3137">太</a></li>
								<li><a href="https://www.yao123.com/category_119-1618">云丰</a></li>
								<li><a href="https://www.yao123.com/category_119-2374">久金</a></li>
								<li><a href="https://www.yao123.com/category_119-2446">爱脉朗</a></li>
								<li><a href="https://www.yao123.com/category_119-2452">好好
								</a></li>
								<li><a href="https://www.yao123.com/category_119-2455">同安恒康</a></li>
								<li><a href="https://www.yao123.com/category_119-448">九泰</a></li>
								<li><a href="https://www.yao123.com/category_119-2299">九典</a></li>
								<li><a href="https://www.yao123.com/category_119-2470">迎升</a></li>
								<li><a href="https://www.yao123.com/category_119-2490">佑美</a></li>
								<li><a href="https://www.yao123.com/category_119-2489">新麦林
								</a></li>
								<li><a href="https://www.yao123.com/category_119-2277">琦悦</a></li>
								<li><a href="https://www.yao123.com/category_119-83">俞氏</a></li>
								<li><a href="https://www.yao123.com/category_119-728">一心</a></li>
								<li><a href="https://www.yao123.com/category_119-353">独圣</a></li>
								<li><a href="https://www.yao123.com/category_119-2531">天宏</a></li>
								<li><a href="https://www.yao123.com/category_119-2537">波利特</a></li>
								<li><a href="https://www.yao123.com/category_119-2541">PR/豫普</a></li>
								<li><a href="https://www.yao123.com/category_119-2546">L&amp;H
								</a></li>
								<li><a href="https://www.yao123.com/category_119-2550">hnsy</a></li>
								<li><a href="https://www.yao123.com/category_119-2558">万杰</a></li>
								<li><a href="https://www.yao123.com/category_119-2573">慷彼申
										Combizym</a></li>
								<li><a href="https://www.yao123.com/category_119-2574">适怡</a></li>
								<li><a href="https://www.yao123.com/category_119-233">AstraZeneca/阿斯利康</a></li>
								<li><a href="https://www.yao123.com/category_119-2605">泮每悦</a></li>
								<li><a href="https://www.yao123.com/category_119-2631">南通</a></li>
								<li><a href="https://www.yao123.com/category_119-2643">泰利森</a></li>
								<li><a href="https://www.yao123.com/category_119-2646">STAIDSON/舒泰神</a></li>
								<li><a href="https://www.yao123.com/category_119-432">金汇</a></li>
								<li><a href="https://www.yao123.com/category_119-1739">泰康</a></li>
								<li><a href="https://www.yao123.com/category_119-2658">老太医</a></li>
								<li><a href="https://www.yao123.com/category_119-1107">金诃</a></li>
								<li><a href="https://www.yao123.com/category_119-2439">护佑
								</a></li>
								<li><a href="https://www.yao123.com/category_119-422">嘉应</a></li>
								<li><a href="https://www.yao123.com/category_119-2526">剑门</a></li>
								<li><a href="https://www.yao123.com/category_119-2697">永孜堂</a></li>
								<li><a href="https://www.yao123.com/category_119-2704">长江
								</a></li>
								<li><a href="https://www.yao123.com/category_119-2710">锥子山</a></li>
								<li><a href="https://www.yao123.com/category_119-1521">思密达</a></li>
								<li><a href="https://www.yao123.com/category_119-2717">顺势</a></li>
								<li><a href="https://www.yao123.com/category_119-175">力生</a></li>
								<li><a href="https://www.yao123.com/category_119-619">双燕牌</a></li>
								<li><a href="https://www.yao123.com/category_119-2727">金不换</a></li>
								<li><a href="https://www.yao123.com/category_119-2725">首儿</a></li>
								<li><a href="https://www.yao123.com/category_119-2753">海斯</a></li>
								<li><a href="https://www.yao123.com/category_119-2763">当止</a></li>
								<li><a href="https://www.yao123.com/category_119-2765">必纳维</a></li>
								<li><a href="https://www.yao123.com/category_119-2401">安维信</a></li>
								<li><a href="https://www.yao123.com/category_119-2773">君临
								</a></li>
								<li><a href="https://www.yao123.com/category_119-2779">恒久远</a></li>
								<li><a href="https://www.yao123.com/category_119-2261">圣和</a></li>
								<li><a href="https://www.yao123.com/category_119-2787">博雪</a></li>
								<li><a href="https://www.yao123.com/category_119-2786">力</a></li>
								<li><a href="https://www.yao123.com/category_119-797">哈药</a></li>
								<li><a href="https://www.yao123.com/category_119-2795">先宁</a></li>
								<li><a href="https://www.yao123.com/category_119-2801">飞云岭</a></li>
								<li><a href="https://www.yao123.com/category_119-2577">澄海楼</a></li>
								<li><a href="https://www.yao123.com/category_119-2809">全消</a></li>
								<li><a href="https://www.yao123.com/category_119-2811">能全素</a></li>
								<li><a href="https://www.yao123.com/category_119-1076">丰鹿牌</a></li>
								<li><a href="https://www.yao123.com/category_119-2814">奥斯坦</a></li>
								<li><a href="https://www.yao123.com/category_119-2822">华客</a></li>
								<li><a href="https://www.yao123.com/category_119-2826">三木</a></li>
								<li><a href="https://www.yao123.com/category_119-49">中联</a></li>
								<li><a href="https://www.yao123.com/category_119-1690">济仁</a></li>
								<li><a href="https://www.yao123.com/category_119-178">乐家老铺</a></li>
								<li><a href="https://www.yao123.com/category_119-2855">吉春
								</a></li>
								<li><a href="https://www.yao123.com/category_119-45">中一牌</a></li>
								<li><a href="https://www.yao123.com/category_119-2882">赛诺
								</a></li>
								<li><a href="https://www.yao123.com/category_119-2885">润平</a></li>
								<li><a href="https://www.yao123.com/category_119-2820">华山牌</a></li>
								<li><a href="https://www.yao123.com/category_119-2332">紫鑫</a></li>
								<li><a href="https://www.yao123.com/category_119-405">华森</a></li>
								<li><a href="https://www.yao123.com/category_119-48">中美华东</a></li>
								<li><a href="https://www.yao123.com/category_119-80">玉林</a></li>
								<li><a href="https://www.yao123.com/category_119-2974">舒丽启能</a></li>
								<li><a href="https://www.yao123.com/category_119-2979">谷参</a></li>
								<li><a href="https://www.yao123.com/category_119-2980">谷奥</a></li>
								<li><a href="https://www.yao123.com/category_119-2989">达克普隆</a></li>
								<li><a href="https://www.yao123.com/category_119-2985">泰卫安</a></li>
								<li><a href="https://www.yao123.com/category_119-2909">九州通</a></li>
								<li><a href="https://www.yao123.com/category_119-3000">亿活</a></li>
								<li><a href="https://www.yao123.com/category_119-902">壹丽安</a></li>
								<li><a href="https://www.yao123.com/category_119-2915">丹方</a></li>
								<li><a href="https://www.yao123.com/category_119-2636">葛泰</a></li>
								<li><a href="https://www.yao123.com/category_119-3016">MARZULENE/麦滋林</a></li>
								<li><a href="https://www.yao123.com/category_119-2919">东科</a></li>
								<li><a href="https://www.yao123.com/category_119-568">庆瑞</a></li>
								<li><a href="https://www.yao123.com/category_119-3041">慧谷</a></li>
								<li><a href="https://www.yao123.com/category_119-3043">易蒙停</a></li>
								<li><a href="https://www.yao123.com/category_119-3048">千珀</a></li>
								<li><a href="https://www.yao123.com/category_119-618">双井</a></li>
								<li><a href="https://www.yao123.com/category_119-1209">方略</a></li>
								<li><a href="https://www.yao123.com/category_119-2045">欧意</a></li>
								<li><a href="https://www.yao123.com/category_119-59">正大</a></li>
								<li><a href="https://www.yao123.com/category_119-2939">信心</a></li>
								<li><a href="https://www.yao123.com/category_119-3084">滇中</a></li>
								<li><a href="https://www.yao123.com/category_119-2769">傅山
								</a></li>
								<li><a href="https://www.yao123.com/category_119-3088">得舒特</a></li>
								<li><a href="https://www.yao123.com/category_119-3012">双人牌</a></li>
								<li><a href="https://www.yao123.com/category_119-2318">诺捷康</a></li>
								<li><a href="https://www.yao123.com/category_119-697">新华</a></li>
								<li><a href="https://www.yao123.com/category_119-545">诺得胜</a></li>
								<li><a href="https://www.yao123.com/category_119-3099">瑞波特</a></li>
								<li><a href="https://www.yao123.com/category_119-3101">得每通</a></li>
								<li><a href="https://www.yao123.com/category_119-3103">信丰</a></li>
								<li><a href="https://www.yao123.com/category_119-542">宁宁</a></li>
								<li><a href="https://www.yao123.com/category_119-3105">得必欣</a></li>
								<li><a href="https://www.yao123.com/category_119-3117">尼为孚</a></li>
								<li><a href="https://www.yao123.com/category_119-2957">健伦</a></li>
								<li><a href="https://www.yao123.com/category_119-3124">申高</a></li>
								<li><a href="https://www.yao123.com/category_119-2954">朝花</a></li>
								<li><a href="https://www.yao123.com/category_119-3132">常态宁</a></li>
								<li><a href="https://www.yao123.com/category_119-3126">圣迪</a></li>
								<li><a href="https://www.yao123.com/category_119-2258">紫金山泉</a></li>
								<li><a href="https://www.yao123.com/category_119-3141">邦能</a></li>
								<li><a href="https://www.yao123.com/category_119-3145">强壮</a></li>
								<li><a href="https://www.yao123.com/category_119-2130">麦迪海</a></li>
								<li><a href="https://www.yao123.com/category_119-3170">支乐</a></li>
								<li><a href="https://www.yao123.com/category_119-90">银涛</a></li>
								<li><a href="https://www.yao123.com/category_119-3190">津奉药业</a></li>
								<li><a href="https://www.yao123.com/category_119-3195">优玛琳</a></li>
								<li><a href="https://www.yao123.com/category_119-2936">岐黄</a></li>
								<li><a href="https://www.yao123.com/category_119-1752">腾药</a></li>
								<li><a href="https://www.yao123.com/category_119-248">KANG/康尔佳</a></li>
								<li><a href="https://www.yao123.com/category_119-2013">诺金</a></li>
								<li><a href="https://www.yao123.com/category_119-3221">恒坤</a></li>
								<li><a href="https://www.yao123.com/category_119-2895">少林寺</a></li>
								<li><a href="https://www.yao123.com/category_119-3238">千金舒
								</a></li>
								<li><a href="https://www.yao123.com/category_119-3241">甘露</a></li>
								<li><a href="https://www.yao123.com/category_119-3245">维柳芬</a></li>
								<li><a href="https://www.yao123.com/category_119-2612">同仁堂
								</a></li>
								<li><a href="https://www.yao123.com/category_119-2589">联盛</a></li>
								<li><a href="https://www.yao123.com/category_119-3259">金得乐</a></li>
								<li><a href="https://www.yao123.com/category_119-680">希尔安</a></li>
								<li><a href="https://www.yao123.com/category_119-3268">双人牌
								</a></li>
								<li><a href="https://www.yao123.com/category_119-1673">老君炉</a></li>
								<li><a href="https://www.yao123.com/category_119-3220">孩儿乐</a></li>
								<li><a href="https://www.yao123.com/category_119-3277">爱西特</a></li>
								<li><a href="https://www.yao123.com/category_119-1982">世康特</a></li>
								<li><a href="https://www.yao123.com/category_119-3295">孙真人</a></li>
								<li><a href="https://www.yao123.com/category_119-119">星斗</a></li>
								<li><a href="https://www.yao123.com/category_119-445">晶珠</a></li>
								<li><a href="https://www.yao123.com/category_119-3307">中智</a></li>
								<li><a href="https://www.yao123.com/category_119-3310">国光</a></li>
								<li><a href="https://www.yao123.com/category_119-3314">伊春金北</a></li>
								<li><a href="https://www.yao123.com/category_119-378">盖克</a></li>
								<li><a href="https://www.yao123.com/category_119-3319">唯达舒</a></li>
								<li><a href="https://www.yao123.com/category_119-1644">维威</a></li>
								<li><a href="https://www.yao123.com/category_119-123">湘江</a></li>
								<li><a href="https://www.yao123.com/category_119-347">丁桂</a></li>
								<li><a href="https://www.yao123.com/category_119-3343">小衫毛</a></li>
								<li><a href="https://www.yao123.com/category_119-44">仲景</a></li>
								<li><a href="https://www.yao123.com/category_119-109">707</a></li>
								<li><a href="https://www.yao123.com/category_119-3335">好娃娃</a></li>
								<li><a href="https://www.yao123.com/category_119-3364">积大志卫灵</a></li>
								<li><a href="https://www.yao123.com/category_119-4701">贵喜</a></li>
								<li><a href="https://www.yao123.com/category_119-2639">东泰</a></li>
								<li><a href="https://www.yao123.com/category_119-3378">华南牌</a></li>
								<li><a href="https://www.yao123.com/category_119-3382">伊甘欣</a></li>
								<li><a href="https://www.yao123.com/category_119-3385">三公仔</a></li>
								<li><a href="https://www.yao123.com/category_119-2068">白泉牌</a></li>
								<li><a href="https://www.yao123.com/category_119-726">药信</a></li>
								<li><a href="https://www.yao123.com/category_119-154">三金</a></li>
								<li><a href="https://www.yao123.com/category_119-47">中盛海天</a></li>
								<li><a href="https://www.yao123.com/category_119-3413">维仙优</a></li>
								<li><a href="https://www.yao123.com/category_119-3414">聚克</a></li>
								<li><a href="https://www.yao123.com/category_119-18">健兴</a></li>
								<li><a href="https://www.yao123.com/category_119-2078">葫芦娃</a></li>
								<li><a href="https://www.yao123.com/category_119-3416">MINGDA</a></li>
								<li><a href="https://www.yao123.com/category_119-3421">达吉</a></li>
								<li><a href="https://www.yao123.com/category_119-3055">福星</a></li>
								<li><a href="https://www.yao123.com/category_119-3426">维福佳</a></li>
								<li><a href="https://www.yao123.com/category_119-1139">樱花牌
								</a></li>
								<li><a href="https://www.yao123.com/category_119-162">鹏鹞</a></li>
								<li><a href="https://www.yao123.com/category_119-3435">斯达舒</a></li>
								<li><a href="https://www.yao123.com/category_119-4728">花溪</a></li>
								<li><a href="https://www.yao123.com/category_119-1934">天和仁</a></li>
								<li><a href="https://www.yao123.com/category_119-5134">速永康</a></li>
								<li><a href="https://www.yao123.com/category_119-3446">奥瑞德</a></li>
								<li><a href="https://www.yao123.com/category_119-296">版纳</a></li>
								<li><a href="https://www.yao123.com/category_119-3456">九泰至宁</a></li>
								<li><a href="https://www.yao123.com/category_119-495">利华</a></li>
								<li><a href="https://www.yao123.com/category_119-3465">便塞停</a></li>
								<li><a href="https://www.yao123.com/category_119-3466">致君</a></li>
								<li><a href="https://www.yao123.com/category_119-559">奇特</a></li>
								<li><a href="https://www.yao123.com/category_119-3474">沂州</a></li>
								<li><a href="https://www.yao123.com/category_119-403">华北制药</a></li>
								<li><a href="https://www.yao123.com/category_119-3477">盛吗啉</a></li>
								<li><a href="https://www.yao123.com/category_119-3478">利乃沁</a></li>
								<li><a href="https://www.yao123.com/category_119-1835">罗定</a></li>
								<li><a href="https://www.yao123.com/category_119-623">司空山</a></li>
								<li><a href="https://www.yao123.com/category_119-572">仁和堂</a></li>
								<li><a href="https://www.yao123.com/category_119-3582">BMI</a></li>
								<li><a href="https://www.yao123.com/category_119-1105">愈达</a></li>
								<li><a href="https://www.yao123.com/category_119-1104">久正</a></li>
								<li><a href="https://www.yao123.com/category_119-3583">通泰</a></li>
								<li><a href="https://www.yao123.com/category_119-3590">珍稀渭
								</a></li>
								<li><a href="https://www.yao123.com/category_119-3601">奥力林</a></li>
								<li><a href="https://www.yao123.com/category_119-464">康芝</a></li>
								<li><a href="https://www.yao123.com/category_119-3609">海俞</a></li>
								<li><a href="https://www.yao123.com/category_119-3616">志速宁</a></li>
								<li><a href="https://www.yao123.com/category_119-1365">乐家老铺
								</a></li>
								<li><a href="https://www.yao123.com/category_119-1115">药王山
								</a></li>
								<li><a href="https://www.yao123.com/category_119-3640">维舒龙</a></li>
								<li><a href="https://www.yao123.com/category_119-2515">汉森
								</a></li>
								<li><a href="https://www.yao123.com/category_119-3655">神蜂科技</a></li>
								<li><a href="https://www.yao123.com/category_119-586">润华</a></li>
								<li><a href="https://www.yao123.com/category_119-3669">绿君宁</a></li>
								<li><a href="https://www.yao123.com/category_119-1135">洪光</a></li>
								<li><a href="https://www.yao123.com/category_119-3683">君临药业</a></li>
								<li><a href="https://www.yao123.com/category_119-3711">倍力生</a></li>
								<li><a href="https://www.yao123.com/category_119-604">时代阳光</a></li>
								<li><a href="https://www.yao123.com/category_119-3402">希臣</a></li>
								<li><a href="https://www.yao123.com/category_119-3724">罗内</a></li>
								<li><a href="https://www.yao123.com/category_119-3270">麦乐迪</a></li>
								<li><a href="https://www.yao123.com/category_119-3733">健儿佳</a></li>
								<li><a href="https://www.yao123.com/category_119-3737">中山</a></li>
								<li><a href="https://www.yao123.com/category_119-3738">星火维敏</a></li>
								<li><a href="https://www.yao123.com/category_119-1460">翔宇乐康</a></li>
								<li><a href="https://www.yao123.com/category_119-3739">金双歧</a></li>
								<li><a href="https://www.yao123.com/category_119-3740">培菲康
								</a></li>
								<li><a href="https://www.yao123.com/category_119-3746">吉林福康</a></li>
								<li><a href="https://www.yao123.com/category_119-228">SHINEWAY/神威药业</a></li>
								<li><a href="https://www.yao123.com/category_119-3748">金象中药制药</a></li>
								<li><a href="https://www.yao123.com/category_119-3752">大宁堂</a></li>
								<li><a href="https://www.yao123.com/category_119-2475">同仁堂</a></li>
								<li><a href="https://www.yao123.com/category_119-3757">山西天生</a></li>
								<li><a href="https://www.yao123.com/category_119-3762">山西同达</a></li>
								<li><a href="https://www.yao123.com/category_119-3765">泰生</a></li>
								<li><a href="https://www.yao123.com/category_119-3766">佐尔通</a></li>
								<li><a href="https://www.yao123.com/category_119-205">东药</a></li>
								<li><a href="https://www.yao123.com/category_119-3770">力生制药</a></li>
								<li><a href="https://www.yao123.com/category_119-3771">鼎邦</a></li>
								<li><a href="https://www.yao123.com/category_119-3774">河南信心</a></li>
								<li><a href="https://www.yao123.com/category_119-3759">天生制药</a></li>
								<li><a href="https://www.yao123.com/category_119-1097">君山</a></li>
								<li><a href="https://www.yao123.com/category_119-3776">德元</a></li>
								<li><a href="https://www.yao123.com/category_119-3777">咪咪乐</a></li>
								<li><a href="https://www.yao123.com/category_119-450">俊宏</a></li>
								<li><a href="https://www.yao123.com/category_119-2718">苗一</a></li>
								<li><a href="https://www.yao123.com/category_119-1786">罗定</a></li>
								<li><a href="https://www.yao123.com/category_119-3785">怡痛</a></li>
								<li><a href="https://www.yao123.com/category_119-4041">爱邦</a></li>
								<li><a href="https://www.yao123.com/category_119-3786">德元药业</a></li>
								<li><a href="https://www.yao123.com/category_119-3787">五洲药业</a></li>
								<li><a href="https://www.yao123.com/category_119-3790">益民药业</a></li>
								<li><a href="https://www.yao123.com/category_119-389">海王</a></li>
								<li><a href="https://www.yao123.com/category_119-3795">北京益民</a></li>
								<li><a href="https://www.yao123.com/category_119-3796">黄河中药</a></li>
								<li><a href="https://www.yao123.com/category_119-3798">维多力</a></li>
								<li><a href="https://www.yao123.com/category_119-2745">曙光</a></li>
								<li><a href="https://www.yao123.com/category_119-3805">度来林</a></li>
								<li><a href="https://www.yao123.com/category_119-3807">君美舒</a></li>
								<li><a href="https://www.yao123.com/category_119-3809">泰华</a></li>
								<li><a href="https://www.yao123.com/category_119-3857">非比麸</a></li>
								<li><a href="https://www.yao123.com/category_119-3882">谓畅动力</a></li>
								<li><a href="https://www.yao123.com/category_119-573">仁济堂</a></li>
								<li><a href="https://www.yao123.com/category_119-3886">凯健</a></li>
								<li><a href="https://www.yao123.com/category_119-3889">正道邦克</a></li>
								<li><a href="https://www.yao123.com/category_119-3894">谓欣</a></li>
								<li><a href="https://www.yao123.com/category_119-3914">北京首儿</a></li>
								<li><a href="https://www.yao123.com/category_119-1102">邦民制药</a></li>
								<li><a href="https://www.yao123.com/category_119-833">石药</a></li>
								<li><a href="https://www.yao123.com/category_119-3078">万胜</a></li>
								<li><a href="https://www.yao123.com/category_119-3906">北京海德润</a></li>
								<li><a href="https://www.yao123.com/category_119-1576">慧宝源</a></li>
								<li><a href="https://www.yao123.com/category_119-417">济民可信</a></li>
								<li><a href="https://www.yao123.com/category_119-3910">通尔畅</a></li>
								<li><a href="https://www.yao123.com/category_119-3913">999温胃舒</a></li>
								<li><a href="https://www.yao123.com/category_119-733">玉川</a></li>
								<li><a href="https://www.yao123.com/category_119-2653">中新</a></li>
								<li><a href="https://www.yao123.com/category_119-237">CSPC/石药集团</a></li>
								<li><a href="https://www.yao123.com/category_119-3812">怡含宁</a></li>
								<li><a href="https://www.yao123.com/category_119-1056">仕卫</a></li>
								<li><a href="https://www.yao123.com/category_119-3924">捷诺康</a></li>
								<li><a href="https://www.yao123.com/category_119-1992">几芙佳</a></li>
								<li><a href="https://www.yao123.com/category_119-3930">邯郸制药</a></li>
								<li><a href="https://www.yao123.com/category_119-2476">花城
								</a></li>
								<li><a href="https://www.yao123.com/category_119-3974">民舟</a></li>
								<li><a href="https://www.yao123.com/category_119-4268">京常乐</a></li>
								<li><a href="https://www.yao123.com/category_119-3929">三九</a></li>
								<li><a href="https://www.yao123.com/category_119-3985">爽舒宝</a></li>
								<li><a href="https://www.yao123.com/category_119-3233">益欣</a></li>
								<li><a href="https://www.yao123.com/category_119-4272">御金丹</a></li>
								<li><a href="https://www.yao123.com/category_119-3567">亚诺太芬</a></li>
								<li><a href="https://www.yao123.com/category_119-3997">海外制药</a></li>
								<li><a href="https://www.yao123.com/category_119-2080">弘泰</a></li>
								<li><a href="https://www.yao123.com/category_119-3352">老君炉
								</a></li>
								<li><a href="https://www.yao123.com/category_119-4004">湖北金龙福</a></li>
								<li><a href="https://www.yao123.com/category_119-4262">渭达苏</a></li>
								<li><a href="https://www.yao123.com/category_119-4005">为消</a></li>
								<li><a href="https://www.yao123.com/category_119-4008">华洋</a></li>
								<li><a href="https://www.yao123.com/category_119-4009">卡迪奇</a></li>
								<li><a href="https://www.yao123.com/category_119-725">药都</a></li>
								<li><a href="https://www.yao123.com/category_119-1359">辰欣</a></li>
								<li><a href="https://www.yao123.com/category_119-439">金世</a></li>
								<li><a href="https://www.yao123.com/category_119-2134">罗欣</a></li>
								<li><a href="https://www.yao123.com/category_119-4246">妙手</a></li>
								<li><a href="https://www.yao123.com/category_119-4018">严新</a></li>
								<li><a href="https://www.yao123.com/category_119-4023">云鹏制药</a></li>
								<li><a href="https://www.yao123.com/category_119-4035">浙江惠康</a></li>
								<li><a href="https://www.yao123.com/category_119-4039">南药</a></li>
								<li><a href="https://www.yao123.com/category_119-4042">弘美</a></li>
								<li><a href="https://www.yao123.com/category_119-1094">双鼎</a></li>
								<li><a href="https://www.yao123.com/category_119-4709">千红怡美
								</a></li>
								<li><a href="https://www.yao123.com/category_119-1825">星昊美彤</a></li>
								<li><a href="https://www.yao123.com/category_119-4070">卫平</a></li>
								<li><a href="https://www.yao123.com/category_119-4073">良方制药</a></li>
								<li><a href="https://www.yao123.com/category_119-3593">立方</a></li>
								<li><a href="https://www.yao123.com/category_119-4098">丹南泰</a></li>
								<li><a href="https://www.yao123.com/category_119-4103">大唐奥舒</a></li>
								<li><a href="https://www.yao123.com/category_119-4111">和爽</a></li>
								<li><a href="https://www.yao123.com/category_119-4120">辉力</a></li>
								<li><a href="https://www.yao123.com/category_119-4144">力洛</a></li>
								<li><a href="https://www.yao123.com/category_119-4156">丹康</a></li>
								<li><a href="https://www.yao123.com/category_119-1368">罗浮山
								</a></li>
								<li><a href="https://www.yao123.com/category_119-518">茂祥</a></li>
								<li><a href="https://www.yao123.com/category_119-4172">明泰</a></li>
								<li><a href="https://www.yao123.com/category_119-3782">云春</a></li>
								<li><a href="https://www.yao123.com/category_119-4177">叶开泰</a></li>
								<li><a href="https://www.yao123.com/category_119-4179">福曼医</a></li>
								<li><a href="https://www.yao123.com/category_119-4186">颇得斯安</a></li>
								<li><a href="https://www.yao123.com/category_119-3169">百神</a></li>
								<li><a href="https://www.yao123.com/category_119-4195">寸草</a></li>
								<li><a href="https://www.yao123.com/category_119-4196">海鹤药业</a></li>
								<li><a href="https://www.yao123.com/category_119-4199">援生惠康</a></li>
								<li><a href="https://www.yao123.com/category_119-2664">神华维康</a></li>
								<li><a href="https://www.yao123.com/category_119-2892">东盛</a></li>
								<li><a href="https://www.yao123.com/category_119-4250">纽兰达</a></li>
								<li><a href="https://www.yao123.com/category_119-4252">米雅</a></li>
								<li><a href="https://www.yao123.com/category_119-4264">阿泰宁</a></li>
								<li><a href="https://www.yao123.com/category_119-4273">九鑫</a></li>
								<li><a href="https://www.yao123.com/category_119-4282">加斯清</a></li>
								<li><a href="https://www.yao123.com/category_119-4302">安必欣</a></li>
								<li><a href="https://www.yao123.com/category_119-4306">柏西</a></li>
								<li><a href="https://www.yao123.com/category_119-4331">谓舒清</a></li>
								<li><a href="https://www.yao123.com/category_119-4340">美中舒</a></li>
								<li><a href="https://www.yao123.com/category_119-4357">卫君康</a></li>
								<li><a href="https://www.yao123.com/category_119-60">振霖牌</a></li>
								<li><a href="https://www.yao123.com/category_119-4369">唐古绿康</a></li>
								<li><a href="https://www.yao123.com/category_119-2445">温馨</a></li>
								<li><a href="https://www.yao123.com/category_119-2335">丹生制银灵</a></li>
								<li><a href="https://www.yao123.com/category_119-4374">大恒</a></li>
								<li><a href="https://www.yao123.com/category_119-4393">唯佳美</a></li>
								<li><a href="https://www.yao123.com/category_119-2937">博华</a></li>
								<li><a href="https://www.yao123.com/category_119-1741">华安</a></li>
								<li><a href="https://www.yao123.com/category_119-2894">海力生</a></li>
								<li><a href="https://www.yao123.com/category_119-3491">常青树</a></li>
								<li><a href="https://www.yao123.com/category_119-1014">世一堂
								</a></li>
								<li><a href="https://www.yao123.com/category_119-979">旺龙</a></li>
								<li><a href="https://www.yao123.com/category_119-4507">益君康</a></li>
								<li><a href="https://www.yao123.com/category_119-204">杜密克</a></li>
								<li><a href="https://www.yao123.com/category_119-2387">金钟</a></li>
								<li><a href="https://www.yao123.com/category_119-4513">福元</a></li>
								<li><a href="https://www.yao123.com/category_119-194">恒健</a></li>
								<li><a href="https://www.yao123.com/category_119-2579">可伊</a></li>
								<li><a href="https://www.yao123.com/category_119-4519">凌水</a></li>
								<li><a href="https://www.yao123.com/category_119-1841">先瑞</a></li>
								<li><a href="https://www.yao123.com/category_119-4521">广州</a></li>
								<li><a href="https://www.yao123.com/category_119-929">太平洋</a></li>
								<li><a href="https://www.yao123.com/category_119-1167">景忠山
								</a></li>
								<li><a href="https://www.yao123.com/category_119-446">敬修堂</a></li>
								<li><a href="https://www.yao123.com/category_119-4529">三门峡</a></li>
								<li><a href="https://www.yao123.com/category_119-4534">BT
								</a></li>
								<li><a href="https://www.yao123.com/category_119-2030">午时药业</a></li>
								<li><a href="https://www.yao123.com/category_119-4539">美福临</a></li>
								<li><a href="https://www.yao123.com/category_119-400">宏济堂</a></li>
								<li><a href="https://www.yao123.com/category_119-4559">目然</a></li>
								<li><a href="https://www.yao123.com/category_119-4561">玉威</a></li>
								<li><a href="https://www.yao123.com/category_119-4562">安谓</a></li>
								<li><a href="https://www.yao123.com/category_119-4567">舒康岸</a></li>
								<li><a href="https://www.yao123.com/category_119-1085">龙潭山
								</a></li>
								<li><a href="https://www.yao123.com/category_119-3761">小快克
								</a></li>
								<li><a href="https://www.yao123.com/category_119-3883">PUDA</a></li>
								<li><a href="https://www.yao123.com/category_119-3693">老来福</a></li>
								<li><a href="https://www.yao123.com/category_119-4226">峨嵋山</a></li>
								<li><a href="https://www.yao123.com/category_119-4589">金达莱</a></li>
								<li><a href="https://www.yao123.com/category_119-4599">百琦</a></li>
								<li><a href="https://www.yao123.com/category_119-3445">希望之光</a></li>
								<li><a href="https://www.yao123.com/category_119-4607">强丰</a></li>
								<li><a href="https://www.yao123.com/category_119-184">颈复康</a></li>
								<li><a href="https://www.yao123.com/category_119-1090">安邦</a></li>
								<li><a href="https://www.yao123.com/category_119-1175">多多</a></li>
								<li><a href="https://www.yao123.com/category_119-4622">易加</a></li>
								<li><a href="https://www.yao123.com/category_119-639">天安堂</a></li>
								<li><a href="https://www.yao123.com/category_119-4624">九州祥云</a></li>
								<li><a href="https://www.yao123.com/category_119-2699">长寿牌</a></li>
								<li><a href="https://www.yao123.com/category_119-11">奇正</a></li>
								<li><a href="https://www.yao123.com/category_119-131">万岁</a></li>
								<li><a href="https://www.yao123.com/category_119-3146">盛翔</a></li>
								<li><a href="https://www.yao123.com/category_119-2806">普林松</a></li>
								<li><a href="https://www.yao123.com/category_119-1870">坝上</a></li>
								<li><a href="https://www.yao123.com/category_119-515">吕中</a></li>
								<li><a href="https://www.yao123.com/category_119-4652">泰国李万山</a></li>
								<li><a href="https://www.yao123.com/category_119-3080">阳光老人</a></li>
								<li><a href="https://www.yao123.com/category_119-1432">卞宁</a></li>
								<li><a href="https://www.yao123.com/category_119-4656">净克</a></li>
								<li><a href="https://www.yao123.com/category_119-4524">宝药堂</a></li>
								<li><a href="https://www.yao123.com/category_119-4660">源首康</a></li>
								<li><a href="https://www.yao123.com/category_119-1079">惠</a></li>
								<li><a href="https://www.yao123.com/category_119-398">恒诚制药</a></li>
								<li><a href="https://www.yao123.com/category_119-1486">双龙出海</a></li>
								<li><a href="https://www.yao123.com/category_119-4664">广盛原亚宝</a></li>
								<li><a href="https://www.yao123.com/category_119-3455">九泰至宁</a></li>
								<li><a href="https://www.yao123.com/category_119-2487">达仁堂
								</a></li>
								<li><a href="https://www.yao123.com/category_119-3620">再泰</a></li>
								<li><a href="https://www.yao123.com/category_119-4625">百会</a></li>
								<li><a href="https://www.yao123.com/category_119-4681">健身</a></li>
								<li><a href="https://www.yao123.com/category_119-4568">桂西</a></li>
								<li><a href="https://www.yao123.com/category_119-4696">锡达</a></li>
								<li><a href="https://www.yao123.com/category_119-1344">蜀中</a></li>
								<li><a href="https://www.yao123.com/category_119-1340">万岁
								</a></li>
								<li><a href="https://www.yao123.com/category_119-4716">南粤药业
								</a></li>
								<li><a href="https://www.yao123.com/category_119-4027">世纪鑫威</a></li>
								<li><a href="https://www.yao123.com/category_119-712">兴华</a></li>
								<li><a href="https://www.yao123.com/category_119-4068">葵花宝宝</a></li>
								<li><a href="https://www.yao123.com/category_119-4724">福静清</a></li>
								<li><a href="https://www.yao123.com/category_119-4729">易双必</a></li>
								<li><a href="https://www.yao123.com/category_119-1155">罗星</a></li>
								<li><a href="https://www.yao123.com/category_119-4732">小顽童</a></li>
								<li><a href="https://www.yao123.com/category_119-4740">武罗</a></li>
								<li><a href="https://www.yao123.com/category_119-1119">灵泰</a></li>
								<li><a href="https://www.yao123.com/category_119-4745">蚌生</a></li>
								<li><a href="https://www.yao123.com/category_119-1120">东北</a></li>
								<li><a href="https://www.yao123.com/category_119-4754">众捷</a></li>
								<li><a href="https://www.yao123.com/category_119-4757">通必分</a></li>
								<li><a href="https://www.yao123.com/category_119-4676">侨光</a></li>
								<li><a href="https://www.yao123.com/category_119-4766">梅羊羊</a></li>
								<li><a href="https://www.yao123.com/category_119-4769">加蓓</a></li>
								<li><a href="https://www.yao123.com/category_119-1078">银河</a></li>
								<li><a href="https://www.yao123.com/category_119-4787">斯达动力</a></li>
								<li><a href="https://www.yao123.com/category_119-340">迪康</a></li>
								<li><a href="https://www.yao123.com/category_119-4792">黄金贝乐</a></li>
								<li><a href="https://www.yao123.com/category_119-1302">青龙
								</a></li>
								<li><a href="https://www.yao123.com/category_119-2414">迪康
								</a></li>
								<li><a href="https://www.yao123.com/category_119-4794">伊天</a></li>
								<li><a href="https://www.yao123.com/category_119-3523">康恩贝</a></li>
								<li><a href="https://www.yao123.com/category_119-4805">华源峰</a></li>
								<li><a href="https://www.yao123.com/category_119-779">京益</a></li>
								<li><a href="https://www.yao123.com/category_119-4818">禾邦集团</a></li>
								<li><a href="https://www.yao123.com/category_119-784">青平</a></li>
								<li><a href="https://www.yao123.com/category_119-4826">世信</a></li>
								<li><a href="https://www.yao123.com/category_119-407">华雨</a></li>
								<li><a href="https://www.yao123.com/category_119-280">奥皇</a></li>
								<li><a href="https://www.yao123.com/category_119-4829">爱优维
								</a></li>
								<li><a href="https://www.yao123.com/category_119-4831">同洲</a></li>
								<li><a href="https://www.yao123.com/category_119-3236">莱泰</a></li>
								<li><a href="https://www.yao123.com/category_119-4835">可来复</a></li>
								<li><a href="https://www.yao123.com/category_119-2902">江世</a></li>
								<li><a href="https://www.yao123.com/category_119-4841">Lascal</a></li>
								<li><a href="https://www.yao123.com/category_119-4846">馨茯康</a></li>
								<li><a href="https://www.yao123.com/category_119-1250">老方</a></li>
								<li><a href="https://www.yao123.com/category_119-4367">蔚舒</a></li>
								<li><a href="https://www.yao123.com/category_119-4861">兰尼</a></li>
								<li><a href="https://www.yao123.com/category_119-4886">谓博</a></li>
								<li><a href="https://www.yao123.com/category_119-4898">裕尔</a></li>
								<li><a href="https://www.yao123.com/category_119-4907">先锋必克</a></li>
								<li><a href="https://www.yao123.com/category_119-4915">太行山</a></li>
								<li><a href="https://www.yao123.com/category_119-4947">修正药</a></li>
								<li><a href="https://www.yao123.com/category_119-4959">南少林
								</a></li>
								<li><a href="https://www.yao123.com/category_119-630">太福</a></li>
								<li><a href="https://www.yao123.com/category_119-4967">佳福</a></li>
								<li><a href="https://www.yao123.com/category_119-4975">逸舒维</a></li>
								<li><a href="https://www.yao123.com/category_119-4977">易畅</a></li>
								<li><a href="https://www.yao123.com/category_119-4980">德海</a></li>
								<li><a href="https://www.yao123.com/category_119-4986">长星</a></li>
								<li><a href="https://www.yao123.com/category_119-3383">优卡丹</a></li>
								<li><a href="https://www.yao123.com/category_119-5008">拉韦</a></li>
								<li><a href="https://www.yao123.com/category_119-4916">昆中药</a></li>
								<li><a href="https://www.yao123.com/category_119-201">观鹤</a></li>
								<li><a href="https://www.yao123.com/category_119-1140">万高</a></li>
								<li><a href="https://www.yao123.com/category_119-5040">SOIN</a></li>
								<li><a href="https://www.yao123.com/category_119-822">康美</a></li>
								<li><a href="https://www.yao123.com/category_119-5046">奥立雅</a></li>
								<li><a href="https://www.yao123.com/category_119-3663">顺健</a></li>
								<li><a href="https://www.yao123.com/category_119-5062">梁河</a></li>
								<li><a href="https://www.yao123.com/category_119-5067">唐王</a></li>
								<li><a href="https://www.yao123.com/category_119-5080">秀度</a></li>
								<li><a href="https://www.yao123.com/category_119-5081">欧力停</a></li>
								<li><a href="https://www.yao123.com/category_119-5048">仁和中方</a></li>
								<li><a href="https://www.yao123.com/category_119-5110">双泉</a></li>
								<li><a href="https://www.yao123.com/category_119-5111">益康君</a></li>
								<li><a href="https://www.yao123.com/category_119-5116">永丰</a></li>
								<li><a href="https://www.yao123.com/category_119-5133">卢特单</a></li>
								<li><a href="https://www.yao123.com/category_119-1979">通化金马</a></li>
								<li><a href="https://www.yao123.com/category_119-663">万年青</a></li>
								<li><a href="https://www.yao123.com/category_119-1130">广盛原</a></li>
								<li><a href="https://www.yao123.com/category_119-4544">泰恩康</a></li>
								<li><a href="https://www.yao123.com/category_119-5139">百维</a></li>
								<li><a href="https://www.yao123.com/category_119-2449">正元盛邦</a></li>
								<li><a href="https://www.yao123.com/category_119-3818">太原药业</a></li>
								<li><a href="https://www.yao123.com/category_119-3176">逢春制药</a></li>
								<li><a href="https://www.yao123.com/category_119-1534">恩威</a></li>
								<li><a href="https://www.yao123.com/category_119-4817">美舒通</a></li>
								<li><a href="https://www.yao123.com/category_119-3324">华澳</a></li>
								<li><a href="https://www.yao123.com/category_119-1675">加劲</a></li>
								<li><a href="https://www.yao123.com/category_119-5175">易下</a></li>
								<li><a href="https://www.yao123.com/category_119-5177">kangpai</a></li>
								<li><a href="https://www.yao123.com/category_119-5305">强基</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="box_cf_dj"></div>
	<!-- 尾页开始 -->
	<div class="footer">
		<img width="218" style="display: none;" alt="国药网,网上药店"
			src="css/index/pro_files/logo.png">
		<div class="slogen">
			<div class="w1200">
				<ul style="">
					<li><i class="icon-honor"></i> 权威荣誉</li>
					<li><i class="icon-brand"></i> 品牌授权</li>
					<li><i class="icon-real"></i> 正品保证</li>
					<li><i class="icon-certification"></i> 药监认证</li>
					<!--
				<li>
					<i class="icon-benefits"></i>
					满79包邮
				</li>
				-->
					<li><i class="icon-easy"></i> 退换无忧</li>
					<li><i class="icon-privacy"></i> 隐私包装</li>
					<!--
				<li>
					<i class="icon-auction"></i>
					竞拍药师
				</li>
				-->
				</ul>
			</div>
		</div>
		<div class="w1200">
			<div class="info">
				<div class="logo">
					<a href="https://www.yao123.com/product/GWM0103035_1#">国药网</a>
				</div>
				<div class="help" style="width: 600px;">
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
					<!--
				<dl>
					<dt>购物指南</dt>
					<dd>
						<p><a href="#">购物流程</a></p>
						<p><a href="#">订单状态说明</a></p>
						<p><a href="#">隐私声明</a></p>
						<p><a href="#">发票制度</a></p>
					</dd>
				</dl>
				-->
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
					<!--
				<dl>
					<dt>企业服务</dt>
					<dd>
						<p><a href="#">企业采购</a></p>
						<p><a href="#">供应商合作</a></p>
						<p><a href="#">供应商入口</a></p>
					</dd>
				</dl>
				-->
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
						<li>
							<div>
								<img src="css/index/pro_files/qrcode_wx.png" alt="国药网官方微信">
							</div>
							<h5>国药网官方微信</h5> <!--<p>关注官方微信</p>
						<p>掌握最新健康产品信息</p>
						-->
						</li>
					</ul>
				</div>
			</div>
			<div class="authentication"></div>
			<div class="copyright">
				<p>
					<a href="http://www.yao123.cn/" target="_blank">关于国药网</a>
					&nbsp;&nbsp;|&nbsp;&nbsp; <a target="_blank"
						href="http://www.yao123.com/quality/">质量信息</a>
					&nbsp;&nbsp;|&nbsp;&nbsp; <a target="_blank"
						href="https://www.yao123.com/sitemap">网站地图</a>
					&nbsp;&nbsp;|&nbsp;&nbsp; <a target="_blank"
						href="https://www.yao123.com/productmap_1">商品地图</a>
					&nbsp;&nbsp;|&nbsp;&nbsp; <a href="https://www.yao123.com/link">友情链接</a>
					&nbsp;&nbsp;|&nbsp;&nbsp; <a
						href="https://www.yao123.com/product/GWM0103035_1#">诚征英才</a>
					&nbsp;&nbsp;|&nbsp;&nbsp; <a
						href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action"
						target="_blank">沪ICP备16002394号-1</a> &nbsp;&nbsp;
				</p>
				<p>公司名称：国药堂大药房（上海）有限公司&nbsp;&nbsp;|&nbsp;&nbsp;公司地址：上海市闵行区合川路2679号虹桥商务广场B座3A楼303-305&nbsp;&nbsp;</p>
				<p>
					Copyright&nbsp;©&nbsp;2010-2015&nbsp;&nbsp;国药网版权所有
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
							vspace="0" src="css/index/pro_files/pic.gif"></a></span>
					<script src="css/index/pro_files/z_stat.php" type="text/javascript"></script>
					<script src="css/index/pro_files/core.php" charset="utf-8"
						type="text/javascript"></script>
					&nbsp;&nbsp;&nbsp;&nbsp;客服电话：4001-151-161&nbsp;&nbsp;&nbsp;&nbsp;合作电话：021-60841111-3612
				</p>
			</div>
		</div>
	</div>
	<!-- 尾页结束 -->
    </div>
    
    
    <!--Begin 弹出层-收藏成功 Begin-->
    <div id="fade" class="black_overlay"></div>
    <div id="MyDiv" class="white_content">             
        <div class="white_d">
            <div class="notice_t">
                <span class="fr" style="margin-top:10px; cursor:pointer;" onclick="CloseDiv('MyDiv','fade')"><img src="images/index/close.gif" /></span>
            </div>
            <div class="notice_c">
           		
                <table border="0" align="center" style="margin-top:;" cellspacing="0" cellpadding="0">
                  <tr valign="top">
                    <td width="40"><img src="images/index/suc.png" /></td>
                    <td>
                    	<span style="color:#3e3e3e; font-size:18px; font-weight:bold;">您已成功收藏该商品</span><br />
                    	<a href="#">查看我的关注 >></a>
                    </td>
                  </tr>
                  <tr height="50" valign="bottom">
                  	<td>&nbsp;</td>
                    <td><a href="#" class="b_sure">确定</a></td>
                  </tr>
                </table>
                    
            </div>
        </div>
    </div>    
    <!--End 弹出层-收藏成功 End-->
    
    
    <!--Begin 弹出层-加入购物车 Begin-->
    <div id="fade1" class="black_overlay"></div>
    <div id="MyDiv1" class="white_content">             
        <div class="white_d">
            <div class="notice_t">
                <span class="fr" style="margin-top:10px; cursor:pointer;" onclick="CloseDiv_1('MyDiv1','fade1')"><img src="images/index/close.gif" /></span>
            </div>
            <div class="notice_c">
           		
                <table border="0" align="center" style="margin-top:;" cellspacing="0" cellpadding="0">
                  <tr valign="top">
                    <td width="40"><img src="images/index/suc.png" /></td>
                    <td>
                    	<span style="color:#3e3e3e; font-size:18px; font-weight:bold;">宝贝已成功添加到购物车</span><br />
                    </td>
                  </tr>
                  <tr height="50" valign="bottom">
                  	<td>&nbsp;</td>
                    <td><a href="buycar1" class="b_sure">去购物车结算</a><a href="" class="b_buy">继续购物</a></td>
                  </tr>
                </table>
                    
            </div>
        </div>
    </div>    
    <!--End 弹出层-加入购物车 End-->
    
    <script src="js/index/ShopShow.js"></script>
</body>

<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>
