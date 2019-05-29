<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<style>
			*{
				margin: 0px;
				padding: 0px;
			}
			.cc{
			background-color: rgb(240,245,241);
			height: 55px;
			line-height: 45px;
		
			font-size: 20px;
			font-weight: 800px;
			}
			.cc span{
				margin-left: 500px;
				font-weight: 800px;
			}
			.lijizhifu{
			font-weight: 600px;
			}
			.span a{
				text-decoration: none;
				font-size: 18px;
			font-weight: 800px;
				margin-left: -1050px;
				color: rgb(175,175,175);
			}
			.a1{
				background-color: rgb(8,194,207);
				height: 33px;
				text-align: center;
				line-height: 25px;
				color: white;
				font-size: 14px;
			}
			.cla {
	margin-left: 20px;
	margin-top: 1px;
	
}

.tab {
	margin-left: 106px;
	margin-top: -80px;
	font-size: 13px;
}
.zhongjian{
	margin-left: 150px;
	margin-top: 20px;
	 
	 
}
.zhongjianda{
	height: 170px;
	border-bottom: 1px solid  rgb(175, 174, 174);
}
.zhongjianxia{
	height: 110px;
	border-bottom: 1px solid  rgb(175, 174, 174);
}
.yuyue{
	margin-left: 20px;
	margin-top: 15px;
	font-size: 15px;
}
.time{
	margin-left: 35px;
	margin-top: 15px;
	color:rgb(8,194,207);
	font-size: 15px;
}
.tu{
	margin-left: 120px;
	margin-top: 20px;
}
.tu img{
   height: 40px;
   weight: 200px;
}
.hou{
	height: 60px;
	border-bottom: 1px solid  rgb(175, 174, 174);
}
.hou2{
	height: 66px;
	border-bottom: 1px solid  rgb(175, 174, 174);
	background-color: rgb(207,207,207);
	position: relative;
}
.img{
	
}
p{
	margin-left: 17px;
	margin-top: 10px;
}
.zhifu2{
	width: 50px;
	background-color: rgb(5,193,203);
	margin-left: 300px;
	z-index: 2px;
}
.img{
	position: absolute;
	top: 7px;
	width: 60px;
	margin-left: 570px;
}
.span a{
	
}

		</style>
	</head>
	<body>
	<a></a>
		 <div class="cc">
		<span class="lijizhifu">立即支付</span><span class="span"><a href="ii">返回</a></span>
	</div>
		<div class="a1">
			请在47分钟内付款，否则预约讲取消
		</div>
		<div class="zhongjianda">
		<div class="zhongjian">
			<div class="cla">
			<img src="img/${yishi.d_head}" style="height: 80px;">
		</div>
	
		<table class="tab">
			<tr>
				<td>${yishi.d_name}</td>
			</tr>
			<tr>
				<td>${yishi.kb_name}</td>
			</tr>
		   <tr>
		   	<td>${yishi.d_zc}</td>
		   </tr>
		   <tr>
		   	<td>￥${yishi.d_money}</td>
		   </tr>
		</table>
		<div class="yuyue">就诊时间</div>
		<div class="time">
			  <script type="text/javascript">
			  
                     var date = new Date();
                     var M= date.getMinutes();//获取
                   　　				M=M>9?M:"0"+M
                     document.write(date.getFullYear() +
                             "年" + (date.getMonth() + 1) + "月" + date.getDate() +
                             "日" + " 星期" + "日一二三四五六".charAt(date.getDay())
                             +date.getHours()+":"+M);
                   
                   </script>
                   </div>
		</div>
		</div>
		<div class="zhongjianxia">
			<div class="tu"><img src="img/yishengxiang.jpg" /></div>
		</div>
		<div class="hou">
			<p>亲，您在咨询结束后可随时查看您的问诊记录。<br/>
			指引:【下载APP】 →【我的预约】→【完善病历】</p>
		</div>
		<div class="hou2">
			<div class="img">
		<a><img src="img/yishengxiang1.jpg" /></a></div>	
			<div class="zhifu2"></div>
		</div>
		
	</body>
</html>
