<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="css/index/owl.carousel.css">
<link rel="stylesheet"
	href="css/index/owl.theme.css">
<link rel="stylesheet" href="css/index/base1.css">
<link rel="stylesheet" href="css/index/index.css">
<script type="text/javascript" src="js/index/paramsForStatic"></script>

</head>
<body>
<div style="display: none;">
	<!--频道-->
		<a href='https://www.yao123.com'>首页</a>
		<a href='https://www.yao123.com/category_70'>高血压</a>
		<a href='https://www.yao123.com/category_104'>呼吸系统</a>
		<a href='https://www.yao123.com/category_88'>糖尿病</a>
		<a href='https://www.yao123.com/category_80'>帕金森</a>
		<a href='https://www.yao123.com/category_78'>抑郁症</a>
		<a href='https://www.yao123.com/activity/20161013/index.html'>平安健康卡</a>
	<!--热词-->
		<a href='https://www.yao123.com/category_249'>纸尿裤</a>
		<a href='https://www.yao123.com/search?keyword=SK-II'>SK-II</a>
		<a href='https://www.yao123.com/search?keyword=%E6%89%8B%E6%9C%BA%E7%94%B5%E8%84%91'>手机电脑</a>
		<a href='https://www.yao123.com/activity/20161013/index.html'>平安健康卡</a>
		<a href='https://www.yao123.com/search/0-0-0-0-0-desc?keyword=%E7%94%B5%E9%A3%8E%E6%89%87'>电风扇</a>
		<a href='https://www.yao123.com/search/0-0-5009?keyword=%E6%B5%B7%E8%93%9D%E4%B9%8B%E8%B0%9C'>海蓝之谜</a>
		<a href='https://www.yao123.com/search?keyword=%E4%B9%B3%E8%83%B6%E6%9E%95'>乳胶枕</a>
		<a href='https://www.yao123.com/search?keyword=%E9%98%B2%E6%99%92'>防晒</a>
		<a href='https://www.yao123.com/search?keyword=益安宁丸'>益安宁丸</a>
		<a href='https://www.yao123.com/search?keyword=哈药'>哈药</a>
	<!--分类-->
		<a href='https://www.yao123.com/category_7'>${list[0].menu1_name }</a>
		<c:forEach items="${list[0].chlidren }" var="menu2">
		<a href='https://www.yao123.com/category_60'>${menu2.menu2_name }</a>
		  <c:forEach items="${menu2.chlidren }" var="menu3">
				<a href='https://www.yao123.com/category_70'>${menu3.menu3_name }</a>
		  </c:forEach>	
		</c:forEach>
		
		<a href='https://www.yao123.com/category_30'>风湿骨科</a>
			<a href='https://www.yao123.com/category_45'>腰椎病</a>
			<a href='https://www.yao123.com/category_46'>跌打损伤</a>
			<a href='https://www.yao123.com/category_92'>风湿类风湿</a>
			<a href='https://www.yao123.com/category_93'>骨关节炎</a>
			<a href='https://www.yao123.com/category_94'>骨质疏松</a>
			<a href='https://www.yao123.com/category_95'>痛风</a>
			<a href='https://www.yao123.com/category_96'>外用贴膏</a>
		<a href='https://www.yao123.com/category_47'>医疗器械/电器</a>
			<a href='https://www.yao123.com/category_139'>血糖用品</a>
				<a href='https://www.yao123.com/category_149'>血糖试纸</a>
				<a href='https://www.yao123.com/category_151'>血糖仪+试纸套装</a>
				<a href='/search?keyword=血糖仪'>血糖仪</a>
			<a href='https://www.yao123.com/category_152'>血压计</a>
				<a href='https://www.yao123.com/category_153'>上臂式血压计</a>
				<a href='https://www.yao123.com/category_154'>腕式血压计</a>
			<a href='https://www.yao123.com/category_157'>日常监测</a>
				<a href='https://www.yao123.com/category_158'> 体温计/体温枪</a>
				<a href='https://www.yao123.com/category_159'>体重秤</a>
				<a href='https://www.yao123.com/category_160'>计步器/脂肪检测仪</a>
				<a href='https://www.yao123.com/category_164'>胎心仪</a>
			<a href='https://www.yao123.com/category_169'>家庭常备</a>
				<a href='https://www.yao123.com/category_170'>创可贴</a>
				<a href='https://www.yao123.com/category_172'>药箱/药包</a>
				<a href='https://www.yao123.com/category_173'>绷带/纱布/胶带</a>
				<a href='https://www.yao123.com/category_179'>口罩</a>
				<a href='https://www.yao123.com/category_180'>鼻腔喷雾器</a>
			<a href='https://www.yao123.com/category_183'>康复理疗</a>
				<a href='https://www.yao123.com/category_184'>电磁治疗仪</a>
				<a href='https://www.yao123.com/category_185'>制氧机</a>
				<a href='https://www.yao123.com/category_186'> 呼吸机</a>
				<a href='https://www.yao123.com/category_187'>雾化器</a>
			<a href='https://www.yao123.com/category_190'>辅助理疗</a>
				<a href='/search?keyword=俞兆林'>针灸/拔罐</a>
				<a href='https://www.yao123.com/category_192'>止痛贴</a>
				<a href='https://www.yao123.com/category_193'>理疗贴</a>
			<a href='https://www.yao123.com/category_198'>护具系列</a>
				<a href='https://www.yao123.com/category_199'>护膝/护踝</a>
				<a href='https://www.yao123.com/category_200'>护腰</a>
				<a href='https://www.yao123.com/category_201'>护颈/护肩</a>
				<a href='https://www.yao123.com/category_202'>护肘/护腕</a>
			<a href='https://www.yao123.com/category_203'>辅助器材</a>
				<a href='https://www.yao123.com/category_204'>助听器</a>
				<a href='https://www.yao123.com/category_205'>轮椅</a>
				<a href='/search?keyword=洗澡椅'>洗澡椅/坐便器</a>
				<a href='https://www.yao123.com/category_207'>拐杖/助行器</a>
				<a href='https://www.yao123.com/category_208'>防褥疮垫</a>
			<a href='https://www.yao123.com/category_257'>生活电器</a>
				<a href='https://www.yao123.com/category_428'>空气净化器</a>
				<a href='https://www.yao123.com/category_429'>加湿器</a>
				<a href='https://www.yao123.com/category_430'>净水设备</a>
				<a href='https://www.yao123.com/category_431'>保温杯/壶</a>
				<a href='https://www.yao123.com/category_432'>口腔护理</a>
				<a href='https://www.yao123.com/category_433'>吸尘器</a>
				<a href='https://www.yao123.com/category_434'>电吹风</a>
				<a href='https://www.yao123.com/category_436'>剃/脱毛器</a>
				<a href='https://www.yao123.com/category_435'>剃须刀</a>
				<a href='https://www.yao123.com/category_824'>手机/电脑/数码</a>
				<a href='https://www.yao123.com/category_840'>手表</a>
				<a href='https://www.yao123.com/category_437'>其他生活电器</a>
			<a href='https://www.yao123.com/category_258'>厨房电器</a>
				<a href='https://www.yao123.com/category_438'>电饭煲</a>
				<a href='https://www.yao123.com/category_439'>电炖锅</a>
				<a href='/search?keyword=豆浆机'>豆浆机</a>
				<a href='/search?keyword=焖烧杯'>电热饭盒/焖烧杯</a>
				<a href='https://www.yao123.com/category_802'>电水壶</a>
				<a href='https://www.yao123.com/category_443'>搅拌/料理机</a>
				<a href='https://www.yao123.com/category_444'>多用途锅</a>
				<a href='https://www.yao123.com/category_445'>电热火锅/电磁炉</a>
				<a href='https://www.yao123.com/category_801'>洗碗机</a>
				<a href='/search?keyword=搅拌器'>电动打蛋器</a>
				<a href='https://www.yao123.com/category_448'>电烤箱/微波炉</a>
				<a href='https://www.yao123.com/category_449'>其他厨房电器</a>
			<a href='https://www.yao123.com/category_259'>健康家电</a>
				<a href='https://www.yao123.com/category_451'>按摩器</a>
				<a href='/search/257?keyword=足浴盆'>足浴盆</a>
				<a href='/search?keyword=护眼灯'>护眼灯</a>
				<a href='https://www.yao123.com/category_455'>美容仪/按摩仪</a>
				<a href='https://www.yao123.com/category_457'>按摩椅</a>
				<a href='https://www.yao123.com/category_459'>养生壶/机</a>
				<a href='https://www.yao123.com/category_456'>甩脂仪</a>
				<a href='https://www.yao123.com/category_454'>跑步机</a>
				<a href='https://www.yao123.com/category_460'>其他健康家电</a>
		<a href='https://www.yao123.com/category_260'>养生保健</a>
			<a href='https://www.yao123.com/category_261'>基础营养</a>
				<a href='https://www.yao123.com/category_461'>提高免疫</a>
				<a href='https://www.yao123.com/category_462'>健脑益智</a>
				<a href='https://www.yao123.com/category_463'>肠胃保健</a>
				<a href='https://www.yao123.com/category_464'>改善视力</a>
				<a href='https://www.yao123.com/category_465'>清咽润喉</a>
				<a href='https://www.yao123.com/category_466'>润肠通便</a>
			<a href='https://www.yao123.com/category_263'>强健男人</a>
				<a href='https://www.yao123.com/category_474'>前列腺养护</a>
				<a href='https://www.yao123.com/category_475'>缓解疲劳</a>
				<a href='https://www.yao123.com/category_476'>解酒护肝</a>
				<a href='https://www.yao123.com/category_477'>提升精力</a>
				<a href='https://www.yao123.com/category_478'>健康塑身</a>
			<a href='https://www.yao123.com/category_264'>完美女人</a>
				<a href='https://www.yao123.com/category_479'>减肥瘦身</a>
				<a href='https://www.yao123.com/category_480'>延缓衰老</a>
				<a href='https://www.yao123.com/category_481'>滋阴补血</a>
				<a href='https://www.yao123.com/category_482'>美白祛斑</a>
				<a href='https://www.yao123.com/category_483'>调节内分泌</a>
			<a href='https://www.yao123.com/category_268'>营养素</a>
				<a href='https://www.yao123.com/category_491'>维生素/矿物质</a>
				<a href='https://www.yao123.com/category_492'>蛋白质</a>
				<a href='https://www.yao123.com/category_493'>鱼油/磷脂</a>
				<a href='https://www.yao123.com/category_494'>螺旋藻</a>
				<a href='https://www.yao123.com/category_495'>番茄红素</a>
				<a href='https://www.yao123.com/category_496'>叶酸</a>
				<a href='https://www.yao123.com/category_498'>左旋肉碱</a>
				<a href='https://www.yao123.com/category_499'>辅酶Q10</a>
				<a href='https://www.yao123.com/category_500'>玛咖</a>
				<a href='https://www.yao123.com/category_501'>膳食纤维</a>
				<a href='https://www.yao123.com/category_502'>牛初乳</a>
				<a href='https://www.yao123.com/category_503'>胶原蛋白</a>
				<a href='https://www.yao123.com/category_504'>大豆异黄酮</a>
				<a href='https://www.yao123.com/category_505'>芦荟提取酵素</a>
				<a href='https://www.yao123.com/category_506'>酵素</a>
			<a href='https://www.yao123.com/category_262'>健康爸妈</a>
				<a href='https://www.yao123.com/category_467'>调节三高</a>
				<a href='https://www.yao123.com/category_468'>改善睡眠</a>
				<a href='https://www.yao123.com/category_469'>润肠通便</a>
				<a href='https://www.yao123.com/category_470'>骨骼健康</a>
				<a href='https://www.yao123.com/category_471'>肠胃保健</a>
				<a href='https://www.yao123.com/category_472'>改善视力</a>
				<a href='https://www.yao123.com/category_473'>改善记忆力</a>
			<a href='https://www.yao123.com/category_265'>快乐宝贝</a>
				<a href='https://www.yao123.com/category_485'>提高免疫</a>
				<a href='https://www.yao123.com/category_486'>健脑益智</a>
				<a href='https://www.yao123.com/category_487'>保护视力</a>
				<a href='https://www.yao123.com/category_488'>改善偏食厌食</a>
			<a href='https://www.yao123.com/category_267'>孕婴营养</a>
				<a href='https://www.yao123.com/category_489'>孕妇营养</a>
			<a href='https://www.yao123.com/category_789'>食品</a>
				<a href='https://www.yao123.com/category_798'>养生食品</a>
		<a href='https://www.yao123.com/category_246'>母婴专区</a>
			<a href='https://www.yao123.com/category_250'>喂养器具</a>
				<a href='https://www.yao123.com/category_362'>奶瓶</a>
				<a href='https://www.yao123.com/category_363'>奶嘴</a>
				<a href='https://www.yao123.com/category_365'>水杯/餐具</a>
				<a href='https://www.yao123.com/category_792'>牙胶安抚</a>
				<a href='https://www.yao123.com/category_791'>食物存储</a>
			<a href='https://www.yao123.com/category_368'>护理用品</a>
			<a href='https://www.yao123.com/category_367'>洗浴用品</a>
			<a href='https://www.yao123.com/category_787'>童车童床</a>
			<a href='https://www.yao123.com/category_805'>成人尿裤</a>
			<a href='https://www.yao123.com/category_832'>玩具乐器</a>
			<a href='https://www.yao123.com/category_249'>尿片湿巾</a>
		<a href='https://www.yao123.com/category_237'>美妆百货</a>
			<a href='https://www.yao123.com/category_242'>个人洗护</a>
				<a href='https://www.yao123.com/category_294'>洗发水</a>
				<a href='https://www.yao123.com/category_295'>护发素/发膜</a>
				<a href='https://www.yao123.com/category_296'>洗护套装</a>
				<a href='https://www.yao123.com/category_297'>沐浴露</a>
				<a href='https://www.yao123.com/category_298'>香皂</a>
				<a href='https://www.yao123.com/category_299'>身体护理</a>
			<a href='https://www.yao123.com/category_243'>口腔护理</a>
				<a href='https://www.yao123.com/category_300'>牙膏</a>
				<a href='https://www.yao123.com/category_301'>牙刷</a>
				<a href='https://www.yao123.com/category_302'>漱口水</a>
				<a href='https://www.yao123.com/category_307'>牙线</a>
				<a href='https://www.yao123.com/category_308'>假牙清洁</a>
			<a href='https://www.yao123.com/category_244'>女性护理</a>
				<a href='https://www.yao123.com/category_309'>卫生巾</a>
				<a href='https://www.yao123.com/category_310'>护垫/棉条</a>
				<a href='https://www.yao123.com/category_311'>私处洗液</a>
				<a href='https://www.yao123.com/category_312'>脱毛膏</a>
			<a href='https://www.yao123.com/category_245'>生活用品</a>
				<a href='https://www.yao123.com/category_784'>床垫</a>
				<a href='https://www.yao123.com/category_783'>枕头</a>
				<a href='https://www.yao123.com/category_314'>洗手液</a>
				<a href='https://www.yao123.com/category_315'>洗洁精/油污净</a>
				<a href='https://www.yao123.com/category_316'>洁厕液/洁厕宝</a>
				<a href='https://www.yao123.com/category_317'>纸制品</a>
				<a href='https://www.yao123.com/category_318'>洗衣粉/洗衣液/柔顺剂</a>
				<a href='https://www.yao123.com/category_747'>防护用品</a>
				<a href='https://www.yao123.com/category_748'>家电清洁</a>
				<a href='https://www.yao123.com/category_775'>除螨帖</a>
				<a href='https://www.yao123.com/category_780'>驱蚊片</a>
				<a href='https://www.yao123.com/category_781'>驱蚊器</a>
				<a href='https://www.yao123.com/category_764'>晴雨伞</a>
				<a href='https://www.yao123.com/category_829'>除臭/除味 芳香用品</a>
				<a href='https://www.yao123.com/category_830'>干洗剂/清洁剂/抛光剂</a>
				<a href='https://www.yao123.com/category_831'>拖把</a>
				<a href='https://www.yao123.com/category_834'>厨具</a>
			<a href='https://www.yao123.com/category_239'>护肤品</a>
				<a href='https://www.yao123.com/category_269'>洁面</a>
				<a href='https://www.yao123.com/category_270'>化妆水/爽肤水</a>
				<a href='https://www.yao123.com/category_271'>精华液</a>
				<a href='https://www.yao123.com/category_272'>面霜/乳液</a>
				<a href='https://www.yao123.com/category_273'>眼霜</a>
				<a href='https://www.yao123.com/category_274'>护肤套装</a>
				<a href='https://www.yao123.com/category_275'>面膜</a>
				<a href='https://www.yao123.com/category_276'>喷雾</a>
				<a href='https://www.yao123.com/category_277'>防晒隔离</a>
			<a href='https://www.yao123.com/category_240'>彩妆</a>
				<a href='https://www.yao123.com/category_288'>唇膏</a>
				<a href='https://www.yao123.com/category_289'>卸妆</a>
				<a href='https://www.yao123.com/category_282'>散粉蜜粉</a>
				<a href='https://www.yao123.com/category_285'>眼线笔/眼线液</a>
				<a href='https://www.yao123.com/category_286'>睫毛膏</a>
				<a href='https://www.yao123.com/category_279'>粉饼</a>
			<a href='https://www.yao123.com/category_241'>香水香氛</a>
				<a href='https://www.yao123.com/category_291'>女士香水</a>
			<a href='https://www.yao123.com/category_796'>休闲食品</a>
				<a href='https://www.yao123.com/category_833'>食品礼券</a>
				<a href='https://www.yao123.com/category_797'>巧克力</a>
				<a href='https://www.yao123.com/category_800'>食品</a>
			<a href='https://www.yao123.com/category_841'>家纺</a>
				<a href='https://www.yao123.com/category_842'>床上用品</a>
		<a href='https://www.yao123.com/category_232'>隐形眼镜</a>
			<a href='https://www.yao123.com/category_233'>普通隐形眼镜</a>
				<a href='https://www.yao123.com/category_319'>强生</a>
				<a href='https://www.yao123.com/category_320'>海昌</a>
				<a href='https://www.yao123.com/category_321'>博士伦</a>
				<a href='https://www.yao123.com/category_323'>卫康</a>
				<a href='https://www.yao123.com/category_322'>视康</a>
				<a href='https://www.yao123.com/category_326'>库博/酷柏</a>
				<a href='https://www.yao123.com/category_755'>KKR</a>
				<a href='https://www.yao123.com/category_754'>SAP</a>
			<a href='https://www.yao123.com/category_234'>彩色隐形眼镜</a>
				<a href='https://www.yao123.com/category_327'>强生</a>
				<a href='https://www.yao123.com/category_328'>博士伦</a>
				<a href='https://www.yao123.com/category_334'>海昌</a>
				<a href='https://www.yao123.com/category_331'>视康</a>
				<a href='https://www.yao123.com/category_815'>实瞳/SEED</a>
				<a href='https://www.yao123.com/category_338'>海俪恩</a>
				<a href='https://www.yao123.com/category_325'>科莱博</a>
				<a href='https://www.yao123.com/category_750'>KKR</a>
				<a href='https://www.yao123.com/category_756'>SAP</a>
				<a href='https://www.yao123.com/category_820'>绮芙莉</a>
			<a href='https://www.yao123.com/category_235'>护理专区</a>
				<a href='https://www.yao123.com/category_339'>护理液</a>
				<a href='https://www.yao123.com/category_340'>润眼液</a>
				<a href='https://www.yao123.com/category_341'>眼镜伴侣</a>
			<a href='/search?keyword=隐形眼镜'>佩戴周期</a>
				<a href='/search?keyword=日抛'>日抛</a>
				<a href='/search?keyword=双周抛'>双周抛</a>
				<a href='/search?keyword=月抛'>月抛</a>
				<a href='/search?keyword=半年抛'>半年抛</a>
				<a href='/search?keyword=年抛'>年抛</a>
		<a href='https://www.yao123.com/category_53'>计生用品</a>
			<a href='https://www.yao123.com/category_54'>避孕套</a>
				<a href='https://www.yao123.com/category_97'>杜蕾斯</a>
				<a href='https://www.yao123.com/category_218'>冈本</a>
				<a href='https://www.yao123.com/category_818'>名流</a>
				<a href='https://www.yao123.com/category_751'>倍力乐</a>
			<a href='https://www.yao123.com/category_58'>情趣用品</a>
				<a href='https://www.yao123.com/category_224'>震动棒/震动环/情趣跳蛋</a>
				<a href='https://www.yao123.com/category_225'>润滑液/按摩油</a>
				<a href='https://www.yao123.com/category_226'>飞机杯</a>
				<a href='https://www.yao123.com/category_228'>延时产品</a>
				<a href='https://www.yao123.com/category_227'>缩阴球</a>
				<a href='https://www.yao123.com/category_231'>其他</a>
	</div>
	
	<div class="index">
		<div class="focus" style="background-color: #7ac3f0;">
			<div>
				<div class="lunhuan">
					<div id="lunhuanback">
						<div class="item" style="background-color: #7ac3f0">
							<a href="https://www.yao123.com/activity/20190520/index.html" target="_blank" style="display: inline-block;" class="activityimg">
							    <img src="https://img.yao123.cn/gw/8a2c91bf67bc411d016ad7ecccca3168.jpg" alt="儿童节网页版"/>
							</a>
							<div class="w1200">
								<a href="https://www.yao123.com/activity/20190520/index.html" target="_blank" class="linkbanner"></a>
						    </div>
						</div>
						<div class="item" style="background-color: #ccf4d7">
							<a href="https://www.yao123.com/activity/20190513/index.html" target="_blank" style="display: inline-block;" class="activityimg">
							    <img src="https://img.yao123.cn/gw/8a2c91bf67bc411d016ab3c4115f262c.jpg" alt="小满网页版"/>
							</a>
							<div class="w1200">
								<a href="https://www.yao123.com/activity/20190513/index.html" target="_blank" class="linkbanner"></a>
						    </div>
						</div>
						<div class="item" style="background-color: #fbd8df">
							<a href="https://www.yao123.com/activity/20190508/index.html" target="_blank" style="display: inline-block;" class="activityimg">
							    <img src="https://img.yao123.cn/gw/8a2c91bf67bc411d016a9a30f4bd1e13.jpg" alt="520网页版"/>
							</a>
							<div class="w1200">
								<a href="https://www.yao123.com/activity/20190508/index.html" target="_blank" class="linkbanner"></a>
						    </div>
						</div>
						<div class="item" style="background-color: #302d25">
							<a href="https://www.yao123.com/search/0-0-4555?keyword=%E5%90%95" target="_blank" style="display: inline-block;" class="activityimg">
							    <img src="https://img.yao123.cn/gw/8a2c91bf67bc411d016a8c6d57d81653.jpg" alt="吕买赠网页版"/>
							</a>
							<div class="w1200">
								<a href="https://www.yao123.com/search/0-0-4555?keyword=%E5%90%95" target="_blank" class="linkbanner"></a>
						    </div>
						</div>
						<div class="item" style="background-color: #d1bfa6">
							<a href="https://www.yao123.com/search/0-0-5345?keyword=%E6%B5%B7%E4%BC%A6%E5%87%AF%E5%8B%92" target="_blank" style="display: inline-block;" class="activityimg">
							    <img src="https://img.yao123.cn/gw/8a2c91bf67bc411d016a8c6ca8001652.jpg" alt="海伦凯勒新品网页版"/>
							</a>
							<div class="w1200">
								<a href="https://www.yao123.com/search/0-0-5345?keyword=%E6%B5%B7%E4%BC%A6%E5%87%AF%E5%8B%92" target="_blank" class="linkbanner"></a>
						    </div>
						</div>
						<div class="item" style="background-color: #e7f4fc">
							<a href="https://www.yao123.com/search/245?keyword=%E8%95%89%E4%B8%8B " target="_blank" style="display: inline-block;" class="activityimg">
							    <img src="https://img.yao123.cn/gw/8a2c91bf67bc411d016a8c7ad8b3165d.jpg" alt="蕉下春日出游网页版"/>
							</a>
							<div class="w1200">
								<a href="https://www.yao123.com/search/245?keyword=%E8%95%89%E4%B8%8B " target="_blank" class="linkbanner"></a>
						    </div>
						</div>
						<div class="item" style="background-color: #1c56db">
							<a href="https://www.yao123.com/activity/20181010/index.html" target="_blank" style="display: inline-block;" class="activityimg">
							    <img src="https://img.yao123.cn/gw/8a2c91bf651b857601669f5b49ac2767.jpg" alt="步长网页版"/>
							</a>
							<div class="w1200">
								<a href="https://www.yao123.com/activity/20181010/index.html" target="_blank" class="linkbanner"></a>
						    </div>
						</div>
					</div>
					<div class="lunhuan_main">
						<div class="lunhuancenter">
							<ul id='lunbonum'>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="w1200 department">
				<div class="department_box">
		            <div class="notice_Promotion" id="Tabnotice">
		                 <div class="tab_switch">
		                 	<a href="javascript:void(0);" class="switch_Promotion cur fl">推荐</a>
		                 	<a href="javascript:void(0);" class="fl su_l">|</a>
		                 	<a href="javascript:void(0);" class="switch_Promotion fl notice">公告</a>
		                 	<a href="/newList" class="switch_more fr" target="_blank">更多</a>
		                 </div>
		                 <div class="tab_content">
		                     <!--促销轮播-->
		                     <div class="lb_gww">
				                 									             <div class="gwimg">
									             	<a href="https://www.yao123.com/product/GWB0418346_1" target="_blank">
									             	    <img src="https://img.yao123.cn/gw/8a2c91bf67bc411d016ab98286eb2801.jpg" alt="防晒帽限时特价">
									             	</a>
									             </div>
									             <div class="gwimg">
									             	<a href="https://www.yao123.com/category_251" target="_blank">
									             	    <img src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d01602579e89f3c34.jpg" alt="母婴首页公告图">
									             	</a>
									             </div>

				             </div>
		                     <div style="display:none">
		                         <!--公告列表-->
		                         <ul>
		                         	<li><a href="/newsDetails/21" target="_blank">【公告】关于2019年春节期间快递发货物流通知</a></li>
		                         	<li><a href="/newsDetails/20" target="_blank">【文章】乳腺癌患者的饮食</a></li>
		                         	<li><a href="/newsDetails/18" target="_blank">【公告】平安健康卡双11大促订单金额前十名单公布</a></li>
		                         	<li><a href="/newsDetails/13" target="_blank">【公告】平安健康卡年中狂欢趴中奖名单公布</a></li>
		                         	<li><a href="/newsDetails/10" target="_blank">【公告】平安健康卡用户 聚惠5.1回馈周</a></li>
		                         </ul>
		                     </div>
			             </div>
		             </div>
		             <div class="classify">
		                <div class="classify_title">
		                    <div class="classify_icon"></div>
		                	<span>药品分类</span>
		                </div>
		                <ul>
		                	<li class="spak">
		                		<div><a href="https://www.yao123.com/category_30" target="_blank"> <img src="https://img.yao123.cn/gw/8a2c91bf5803e97c0158b9150bc10fda.png" alt="风湿骨科"/></a></div>
		                		<a href="https://www.yao123.com/category_30" target="_blank"><span>风湿骨科</span></a>
		                	</li>
		                	<li class="spak">
		                		<div><a href="https://www.yao123.com/category_61" target="_blank"> <img src="https://img.yao123.cn/gw/8a2c91bf5803e97c0158b914b5230fd9.png" alt="神经系统"/></a></div>
		                		<a href="https://www.yao123.com/category_61" target="_blank"><span>神经系统</span></a>
		                	</li>
		                	<li class="spak">
		                		<div><a href="https://www.yao123.com/category_119" target="_blank"> <img src="https://img.yao123.cn/gw/8a2c91bf5803e97c0158b91474fa0fd8.png" alt="消化科"/></a></div>
		                		<a href="https://www.yao123.com/category_119" target="_blank"><span>消化科</span></a>
		                	</li>
		                	<li class="spak">
		                		<div><a href="https://www.yao123.com/category_112" target="_blank"> <img src="https://img.yao123.cn/gw/8a2c91bf5803e97c0158b91440020fd7.png" alt="肝病科"/></a></div>
		                		<a href="https://www.yao123.com/category_112" target="_blank"><span>肝病科</span></a>
		                	</li>
		                	<li class="spak">
		                		<div><a href="https://www.yao123.com/category_209" target="_blank"> <img src="https://img.yao123.cn/gw/8a2c91bf5803e97c0158b9140e6d0fd6.png" alt="皮肤科"/></a></div>
		                		<a href="https://www.yao123.com/category_209" target="_blank"><span>皮肤科</span></a>
		                	</li>
		                	<li class="spak">
		                		<div><a href="https://www.yao123.com/category_81" target="_blank"> <img src="https://img.yao123.cn/gw/8a2c91bf5803e97c0158b913cefa0fd5.png" alt="精神心理科"/></a></div>
		                		<a href="https://www.yao123.com/category_81" target="_blank"><span>精神心理科</span></a>
		                	</li>
		                	<li class="spak">
		                		<div><a href="https://www.yao123.com/category_60" target="_blank"> <img src="https://img.yao123.cn/gw/8a2c91bf5803e97c0158b9139e5e0fd4.png" alt="心脑血管"/></a></div>
		                		<a href="https://www.yao123.com/category_60" target="_blank"><span>心脑血管</span></a>
		                	</li>
		                	<li class="spak">
		                		<div><a href="https://www.yao123.com/category_32" target="_blank"> <img src="https://img.yao123.cn/gw/8a2c91bf5803e97c0158b9136d450fd3.png" alt="妇科"/></a></div>
		                		<a href="https://www.yao123.com/category_32" target="_blank"><span>妇科</span></a>
		                	</li>
		                	<li class="spak">
		                		<div><a href="https://www.yao123.com/category_59" target="_blank"> <img src="https://img.yao123.cn/gw/8a2c91bf5803e97c0158b913422f0fd2.png" alt="男科"/></a></div>
		                		<a href="https://www.yao123.com/category_59" target="_blank"><span>男科</span></a>
		                	</li>
		                </ul>
		             </div>
		        </div>
	        </div>
		</div>
		<div class="w1200">
			<div id="special" class="special">
				<div class="tab">
					<ul>
						<li tab-target="0" color='#fa462d' class="bg-left">国药特色</li>
						<li class="spacer"></li>
						<li tab-target="1" color='#fabf13'>优惠推荐</li>
						<li class="spacer"></li>
						<li tab-target="2" color='#008ccf' class="bg-right">猜你喜欢</li>
					</ul>
					<div class="tab-line">
						<div class="row">
							<span class="span1 bg-orange"></span> <span
								class="span1 bg-yellow"></span> <span class="span1 bg-blue"></span>
							<span class="span3 bg-deepblue"></span>
						</div>
						<div class="tab-line-arrow"></div>
					</div>
				</div>
				<div class="product">
					<ul class="cong_ul">
						<li cong="GWM0102303" tp="1"><a
							href="/product/GWM0102303_1" target="_blank"> <img
								src="https://img.yao123.com/gc/GWM0102303/8a2c91bf5595a886015649f7ff523e48.jpg@!m145" alt="同仁堂 安宫牛黄丸 3g*1丸/盒">
						</a> <a href="/product/GWM0102303_1" class="cong_a text-overflow"
							target="_blank">同仁堂 安宫牛黄丸 3g*1丸/盒</a> <span class="price_opr"></span>
							<span class="xjzt"></span></li> 						<li cong="GWQ0117703" tp="1"><a
							href="/product/GWQ0117703_1" target="_blank"> <img
								src="https://img.yao123.com/gc/GWQ0117703/8a2c91bf651b857601656b5af4840919.jpg@!m145" alt="安氏语音上臂式电子血压计AS-35Y">
						</a> <a href="/product/GWQ0117703_1" class="cong_a text-overflow"
							target="_blank">安氏语音上臂式电子血压计AS-35Y</a> <span class="price_opr"></span>
							<span class="xjzt"></span></li> 						<li cong="GWM0200059" tp="1"><a
							href="/product/GWM0200059_1" target="_blank"> <img
								src="https://img.yao123.com/gc/GWM0200059/8a2c91bf651b857601673e97c6ff40b6.jpg@!m145" alt="维固力(Viartril-S) 硫酸氨基葡萄糖胶囊 0.25g*20粒/盒">
						</a> <a href="/product/GWM0200059_1" class="cong_a text-overflow"
							target="_blank">维固力(Viartril-S) 硫酸氨基葡萄糖胶囊 0.25g*20粒/盒</a> <span class="price_opr"></span>
							<span class="xjzt"></span></li> 						<li cong="GWM0500168" tp="1"><a
							href="/product/GWM0500168_1" target="_blank"> <img
								src="https://img.yao123.com/gc/GWM0500168/gcg8086201512071736408ab3e2535167bbe301517bccd7160303.jpg@!m145" alt="万艾可/VIAGRA 枸橼酸西地那非片 0.1g*1片/盒">
						</a> <a href="/product/GWM0500168_1" class="cong_a text-overflow"
							target="_blank">万艾可/VIAGRA 枸橼酸西地那非片 0.1g*1片/盒</a> <span class="price_opr"></span>
							<span class="xjzt"></span></li> 						<li cong="TCGWM0100167" tp="2"><a
							href="/product/TCGWM0100167_2" target="_blank"> <img
								src="https://img.yao123.com/gc/TCGWM0100167/8a2c91bf58ba8c1d015caeba60af6843.jpg@!m145" alt="【2盒装】同溢堂 益安宁丸 112丸*3瓶/盒">
						</a> <a href="/product/TCGWM0100167_2" class="cong_a text-overflow"
							target="_blank">【2盒装】同溢堂 益安宁丸 112丸*3瓶/盒</a> <span class="price_opr"></span>
							<span class="xjzt"></span></li> 						<li cong="GWM0215412" tp="1"><a
							href="/product/GWM0215412_1" target="_blank"> <img
								src="https://img.yao123.com/gc/GWM0215412/8a2c91bf58ba8c1d015f5bac34bc79ca.jpg@!m145" alt="鸿茅 鸿茅药酒  250ml*6瓶">
						</a> <a href="/product/GWM0215412_1" class="cong_a text-overflow"
							target="_blank">鸿茅 鸿茅药酒  250ml*6瓶</a> <span class="price_opr"></span>
							<span class="xjzt"></span></li> 
					</ul>
					<ul class="cong_ul hide">
						<li cong="GWM0211468" tp="1"><a
							href="/product/GWM0211468_1" target="_blank"> <img
								src="https://img.yao123.com/gc/GWM0211468/8a2c91bf5803e97c01586bfb8eae0b0f.jpg@!m145" alt="陈李济 舒筋健腰丸45g*10瓶/盒">
						</a> <a href="/product/GWM0211468_1" class="cong_a text-overflow"
							target="_blank">陈李济 舒筋健腰丸45g*10瓶/盒</a> <span class="price_opr"></span>
							<span class="xjzt"></span></li> 						<li cong="GWQ0101607" tp="1"><a
							href="/product/GWQ0101607_1" target="_blank"> <img
								src="https://img.yao123.com/gc/GWQ0101607/gcg9525201602231802258ab3e253529b0ab001530d9471bf11fa.jpg@!m145" alt="诺斯清 生理性海水鼻腔护理喷雾器 80ml">
						</a> <a href="/product/GWQ0101607_1" class="cong_a text-overflow"
							target="_blank">诺斯清 生理性海水鼻腔护理喷雾器 80ml</a> <span class="price_opr"></span>
							<span class="xjzt"></span></li> 						<li cong="GWB0418346" tp="1"><a
							href="/product/GWB0418346_1" target="_blank"> <img
								src="https://img.yao123.com/gc/GWB0418346/8a2c91bf67bc411d0169e23f43986345.jpg@!m145" alt="BANANAUNDER蕉下遮阳防晒帽防晒防紫外线遮脸帽子沙滩帽太阳帽女">
						</a> <a href="/product/GWB0418346_1" class="cong_a text-overflow"
							target="_blank">BANANAUNDER蕉下遮阳防晒帽防晒防紫外线遮脸帽子沙滩帽太阳帽女</a> <span class="price_opr"></span>
							<span class="xjzt"></span></li> 						<li cong="GWM0100017" tp="1"><a
							href="/product/GWM0100017_1" target="_blank"> <img
								src="https://img.yao123.com/gc/GWM0100017/gcg7935201512021026088ab3e253515d95cf01516082e1c10050.jpg@!m145" alt="润众 恩替卡韦分散片 0.5mg*7片/盒">
						</a> <a href="/product/GWM0100017_1" class="cong_a text-overflow"
							target="_blank">润众 恩替卡韦分散片 0.5mg*7片/盒</a> <span class="price_opr"></span>
							<span class="xjzt"></span></li> 						<li cong="GWM0102747" tp="1"><a
							href="/product/GWM0102747_1" target="_blank"> <img
								src="https://img.yao123.com/gc/GWM0102747/8a2c91bf58ba8c1d015e51407c8255cf.jpg@!m145" alt="来利 奥利司他片 0.12克*24片">
						</a> <a href="/product/GWM0102747_1" class="cong_a text-overflow"
							target="_blank">来利 奥利司他片 0.12克*24片</a> <span class="price_opr"></span>
							<span class="xjzt"></span></li> 						<li cong="GWB0416553" tp="1"><a
							href="/product/GWB0416553_1" target="_blank"> <img
								src="https://img.yao123.com/gc/GWB0416553/8a2c91bf61089c5d01616f1fee040d78.jpg@!m145" alt="ABC DESIGN 德国品牌婴儿手推车 高景观可折叠四轮儿童婴童车">
						</a> <a href="/product/GWB0416553_1" class="cong_a text-overflow"
							target="_blank">ABC DESIGN 德国品牌婴儿手推车 高景观可折叠四轮儿童婴童车</a> <span class="price_opr"></span>
							<span class="xjzt"></span></li> 
					</ul>
					<ul class="cong_ul hide">
						<li cong="GWB0218116" tp="1"><a
							href="/product/GWB0218116_1" target="_blank"> <img
								src="https://img.yao123.com/gc/GWB0218116/8a2c91bf67bc411d0167ca2ce71a0453.jpg@!m145" alt="每满3盒减50】Utena 佑天兰黄金果冻面膜 蜂王乳 33g*3片/盒">
						</a> <a href="/product/GWB0218116_1" class="cong_a text-overflow"
							target="_blank">每满3盒减50】Utena 佑天兰黄金果冻面膜 蜂王乳 33g*3片/盒</a> <span class="price_opr"></span>
							<span class="xjzt"></span></li> 						<li cong="GWM0100017" tp="1"><a
							href="/product/GWM0100017_1" target="_blank"> <img
								src="https://img.yao123.com/gc/GWM0100017/gcg7935201512021026088ab3e253515d95cf01516082e1c10050.jpg@!m145" alt="润众 恩替卡韦分散片 0.5mg*7片/盒">
						</a> <a href="/product/GWM0100017_1" class="cong_a text-overflow"
							target="_blank">润众 恩替卡韦分散片 0.5mg*7片/盒</a> <span class="price_opr"></span>
							<span class="xjzt"></span></li> 						<li cong="GWB0317261" tp="1"><a
							href="/product/GWB0317261_1" target="_blank"> <img
								src="https://img.yao123.com/gc/GWB0317261/8a2c91bf61089c5d0163aaf465cc5aac.jpg@!m145" alt="戴森（Dyson）吸尘器 V10 Absolute手持吸尘器 家用 除螨 无线">
						</a> <a href="/product/GWB0317261_1" class="cong_a text-overflow"
							target="_blank">戴森（Dyson）吸尘器 V10 Absolute手持吸尘器 家用 除螨 无线</a> <span class="price_opr"></span>
							<span class="xjzt"></span></li> 						<li cong="GWB0318024" tp="1"><a
							href="/product/GWB0318024_1" target="_blank"> <img
								src="https://img.yao123.com/gc/GWB0318024/8a2c91bf651b857601673a1539163fa7.jpg@!m145" alt="戴尔 15.6英寸5580-3625S（I5-8265/8G/1T+128G/2G独显）银 笔记本电脑">
						</a> <a href="/product/GWB0318024_1" class="cong_a text-overflow"
							target="_blank">戴尔 15.6英寸5580-3625S（I5-8265/8G/1T+128G/2G独显）银 笔记本电脑</a> <span class="price_opr"></span>
							<span class="xjzt"></span></li> 						<li cong="GWM0102758" tp="1"><a
							href="/product/GWM0102758_1" target="_blank"> <img
								src="https://img.yao123.com/gc/GWM0102758/gcg10676201601151554228ab3e2535243967d01524447321d023d.jpg@!m145" alt="福牌 山东东阿镇福牌阿胶 250g">
						</a> <a href="/product/GWM0102758_1" class="cong_a text-overflow"
							target="_blank">福牌 山东东阿镇福牌阿胶 250g</a> <span class="price_opr"></span>
							<span class="xjzt"></span></li> 						<li cong="GWM0100205" tp="1"><a
							href="/product/GWM0100205_1" target="_blank"> <img
								src="https://img.yao123.com/gc/GWM0100205/gcg8123201512021527258ab3e25351617b8b01516196b559004e.jpg@!m145" alt="盘龙云海 排毒养颜胶囊 0.4g*70粒/盒">
						</a> <a href="/product/GWM0100205_1" class="cong_a text-overflow"
							target="_blank">盘龙云海 排毒养颜胶囊 0.4g*70粒/盒</a> <span class="price_opr"></span>
							<span class="xjzt"></span></li> 
					</ul>
				</div>
			</div>

			<div fid="70" floor="1" class="floor">
				<div class="row">
					<div class="span1">
						<h2 class="bg-1f">中西药品</h2>
						<div class="words">
							<ul pos="1">
								  								<li><a href="https://www.yao123.com/category_95" target="_blank"
									isret="1">痛风</a></li> 								<li><a href="https://www.yao123.com/search?keyword=皮炎" target="_blank"
									isret="1">皮炎</a></li> 								<li><a href="https://www.yao123.com/category_135" target="_blank"
									isret="1">避孕</a></li> 								<li><a href="https://www.yao123.com/category_758" target="_blank"
									isret="1">消化不良</a></li> 								<li><a href="https://www.yao123.com/category_109" target="_blank"
									isret="1">哮喘</a></li> 								<li><a href="https://www.yao123.com/category_80" target="_blank"
									isret="1">帕金森</a></li> 								<li><a href="https://www.yao123.com/category_121" target="_blank"
									isret="1">胃肠溃疡</a></li> 								<li><a href="https://www.yao123.com/category_24" target="_blank"
									isret="1">补肾   </a></li> 								<li><a href="https://www.yao123.com/category_92" target="_blank"
									isret="1">风湿类风湿</a></li> 								<li><a href="https://www.yao123.com/category_113" target="_blank"
									isret="1">乙肝</a></li> 								<li><a href="https://www.yao123.com/category_84" target="_blank"
									isret="1">中风</a></li> 								<li><a href="https://www.yao123.com/category_105" target="_blank"
									isret="1">感冒发烧</a></li> 								<li><a href="https://www.yao123.com/category_51" target="_blank"
									isret="1">保胎促孕</a></li> 								<li><a href="https://www.yao123.com/category_127" target="_blank"
									isret="1">痔疮</a></li> 								<li><a href="https://www.yao123.com/category_213" target="_blank"
									isret="1">痤疮</a></li> 								<li><a href="https://www.yao123.com/category_93" target="_blank"
									isret="1">骨关节炎</a></li> 								<li><a href="https://www.yao123.com/category_62" target="_blank"
									isret="1">性功能障碍</a></li> 								<li><a href="https://www.yao123.com/category_74" target="_blank"
									isret="1">心绞痛</a></li> 
								                                   
							</ul>
						</div>
					</div>
					<div class="span2">
						<div pos="2" class="slider">
							<div style="opacity: 1; display: block;" floorslider=""
								class="owl-carousel owl-theme">
								    								<div class="item">
									<a href="https://www.yao123.com/product/GWM0506523_1"
										isret="1" target="_blank"> <img
										src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d015b3c0e2ba43a23.jpg" alt="" />
									</a>
								</div>
																<div class="item">
									<a href="/product/GWM0100497_1"
										isret="1" target="_blank"> <img
										src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d015ab6b339ea2ba0.jpg" alt="" />
									</a>
								</div>
																<div class="item">
									<a href="/product/GWM0101169_1"
										isret="1" target="_blank"> <img
										src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d015f7fd711780735.jpg" alt="" />
									</a>
								</div>
								                                  
							</div>
						</div>
					</div>
					<div class="span3">
						<div class="product">
							<ul>
								<li pos="3">      <a href="https://www.yao123.com/product/GWM0105889_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWM0105889/gcg13808201605091046548ab3e2535460133401549369061b042a.jpg@!m145"
										class="cong_a" alt="苏麦卡 托伐普坦片 15mg*5片/盒">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWM0105889_1" class="text-overflow"
											target="_blank" isret="1">苏麦卡 托伐普坦片 15mg*5片/盒</a>
									</div>
									<div class="floor_jg" floor_jg="GWM0105889"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                                
								</li>
								<li pos="4">        <a href="https://www.yao123.com/product/GWM0100017_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWM0100017/gcg7935201512021026088ab3e253515d95cf01516082e1c10050.jpg@!m145"
										class="cong_a" alt="润众 恩替卡韦分散片 0.5mg*7片/盒">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWM0100017_1" class="text-overflow"
											target="_blank" isret="1">润众 恩替卡韦分散片 0.5mg*7片/盒</a>
									</div>
									<div class="floor_jg" floor_jg="GWM0100017"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                              
								</li>
								<li pos="5">          <a href="https://www.yao123.com/product/GWM0106694_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWM0106694/gcg14613201605171313358ab3e253549a927d0154bd2231bb33ad.jpg@!m145"
										class="cong_a" alt="Medco 地黄叶总苷胶囊 0.2g*12粒/盒">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWM0106694_1" class="text-overflow"
											target="_blank" isret="1">Medco 地黄叶总苷胶囊 0.2g*12粒/盒</a>
									</div>
									<div class="floor_jg" floor_jg="GWM0106694"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                            
								</li>
								<li pos="6">            <a href="https://www.yao123.com/product/GWM0107212_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWM0107212/gcg15132201605161530528ab3e253549a927d0154b87985732a8b.jpg@!m145"
										class="cong_a" alt="莎尔福 美沙拉秦灌肠液 60g:4g*7支/盒">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWM0107212_1" class="text-overflow"
											target="_blank" isret="1">莎尔福 美沙拉秦灌肠液 60g:4g*7支/盒</a>
									</div>
									<div class="floor_jg" floor_jg="GWM0107212"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                          
								</li>
								<li pos="7">              <a href="https://www.yao123.com/product/GWM0106338_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWM0106338/gcg14257201605171246258ab3e253549a927d0154bd0951423338.jpg@!m145"
										class="cong_a" alt="舒利迭 舒利迭 沙美特罗替卡松粉吸入剂 50ug：250ug*60吸/盒">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWM0106338_1" class="text-overflow"
											target="_blank" isret="1">舒利迭 舒利迭 沙美特罗替卡松粉吸入剂 50ug：250ug*60吸/盒</a>
									</div>
									<div class="floor_jg" floor_jg="GWM0106338"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                        
								</li>
								<li pos="8">                <a href="https://www.yao123.com/product/GWM0106648_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWM0106648/gcg14567201605161431118ab3e253549a927d0154b842e0bc27aa.jpg@!m145"
										class="cong_a" alt="拜瑞妥 利伐沙班片 10mg*5片/盒">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWM0106648_1" class="text-overflow"
											target="_blank" isret="1">拜瑞妥 利伐沙班片 10mg*5片/盒</a>
									</div>
									<div class="floor_jg" floor_jg="GWM0106648"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                      
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="brands">
					<ul>
						<li pos="9">                  <a target=""
							href="/search?keyword=999" isret="1"> <img
								src="https://img.yao123.cn/gw/14485343459258a2c91bf51372d810151436008c6003a.jpg" class="brandimg" alt="9图片">
						</a>                    
						</li>
						<li pos="10">                    <a target=""
							href="/search?keyword=辉瑞" isret="1"> <img
								src="https://img.yao123.cn/gw/14570618866748a2c91bf5277d46301533fa7fad701a5.jpg" class="brandimg" alt="辉瑞">
						</a>                  
						</li>
						<li pos="11">                      <a target=""
							href="/search?keyword=施维雅" isret="1"> <img
								src="https://img.yao123.cn/gw/14634528677158a2c91bf5277d4630154bc969c860a87.jpg" class="brandimg" alt="11Bayer">
						</a>                
						</li>
						<li pos="12">                        <a target=""
							href="/search?keyword=阿斯利康" isret="1"> <img
								src="https://img.yao123.cn/gw/14570618865708a2c91bf5277d46301533fa7fa6c01a4.jpg" class="brandimg" alt="阿斯利康">
						</a>              
						</li>
						<li pos="13">                          <a target=""
							href="/search?keyword=默沙东" isret="1"> <img
								src="https://img.yao123.cn/gw/14570618865598a2c91bf5277d46301533fa7fa6001a3.jpg" class="brandimg" alt="默沙东">
						</a>            
						</li>
						<li pos="14">                            <a target=""
							href="/search?keyword=信谊" isret="1"> <img
								src="https://img.yao123.cn/gw/14570618865528a2c91bf5277d46301533fa7fa5901a2.jpg" class="brandimg" alt="信谊">
						</a>          
						</li>
						<li pos="15">                              <a target=""
							href="/search?keyword=雷允上" isret="1"> <img
								src="https://img.yao123.cn/gw/14485330478938a2c91bf51372d810151434c3a560038.jpg" class="brandimg" alt="15雷氏">
						</a>        
						</li>
						<li pos="16">                                <a target=""
							href="/search?keyword=同仁堂" isret="1"> <img
								src="https://img.yao123.cn/gw/14485343459438a2c91bf51372d810151436008d8003b.jpg" class="brandimg" alt="16同仁堂">
						</a>      
						</li>
						<li pos="17">                                  <a target=""
							href="/search?keyword=修正" isret="1"> <img
								src="https://img.yao123.cn/gw/14573252979678a2c91bf5277d46301534f5b51320210.jpg" class="brandimg" alt="修正">
						</a>    
						</li>
						<li pos="18">                                    <a target=""
							href="/search?keyword=罗氏" isret="1"> <img
								src="https://img.yao123.cn/gw/14488533158318a2c91bf5156631d0151566320fe0004.jpg" class="brandimg" alt="">
						</a>  
						</li>
					</ul>
				</div>
				<!--首页广告位-->
				
			</div>
			<div fid="81" floor="2" class="floor">
				<div class="row">
					<div class="span1">
						<h2 class="bg-1f">家庭常备药</h2>
						<div class="words">
							<ul pos="1">
								  								<li><a href="https://www.yao123.com/category_36" target="_blank"
									isret="1">鼻炎</a></li> 								<li><a href="https://www.yao123.com/category_94" target="_blank"
									isret="1">骨质疏松</a></li> 								<li><a href="https://www.yao123.com/search?keyword=阿胶" target="_blank"
									isret="1">阿胶</a></li> 								<li><a href="https://www.yao123.com/search?keyword=六味地黄丸" target="_blank"
									isret="1">六味地黄丸</a></li> 								<li><a href="https://www.yao123.com/search?keyword=过敏" target="_blank"
									isret="1">过敏</a></li> 								<li><a href="https://www.yao123.com/category_23" target="_blank"
									isret="1">补气补血</a></li> 								<li><a href="https://www.yao123.com/search?keyword=排油减肥" target="_blank"
									isret="1">排油减肥</a></li> 								<li><a href="https://www.yao123.com/search?keyword=避孕药" target="_blank"
									isret="1">避孕药</a></li> 								<li><a href="https://www.yao123.com/search?keyword=调节肠胃" target="_blank"
									isret="1">调节肠胃</a></li> 								<li><a href="https://www.yao123.com/category_124" target="_blank"
									isret="1">便秘</a></li> 								<li><a href="https://www.yao123.com/category_107" target="_blank"
									isret="1">上火</a></li> 								<li><a href="https://www.yao123.com/category_68" target="_blank"
									isret="1">增强抵抗力</a></li> 								<li><a href="https://www.yao123.com/category_105" target="_blank"
									isret="1">感冒发烧</a></li> 								<li><a href="https://www.yao123.com/search?keyword=达克宁" target="_blank"
									isret="1">达克宁</a></li> 								<li><a href="https://www.yao123.com/category_46" target="_blank"
									isret="1">跌打损伤</a></li> 								<li><a href="https://www.yao123.com/category_133" target="_blank"
									isret="1">口腔溃疡</a></li> 								<li><a href="https://www.yao123.com/category_210" target="_blank"
									isret="1">皮肤瘙痒</a></li> 								<li><a href="https://www.yao123.com/category_24" target="_blank"
									isret="1">补肾</a></li> 
								                                   
							</ul>
						</div>
					</div>
					<div class="span2">
						<div pos="2" class="slider">
							<div style="opacity: 1; display: block;" floorslider=""
								class="owl-carousel owl-theme">
								    								<div class="item">
									<a href="/search?keyword=益安宁丸"
										isret="1" target="_blank"> <img
										src="https://img.yao123.cn/gw/8a2c91bf5803e97c0158b94f64ef0fe3.jpg" alt="" />
									</a>
								</div>
																<div class="item">
									<a href="/product/GWM0404466_1"
										isret="1" target="_blank"> <img
										src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d015e7046fe6759da.jpg" alt="" />
									</a>
								</div>
																<div class="item">
									<a href="/product/GWM0204609_1"
										isret="1" target="_blank"> <img
										src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d015dabafe2a3165e.jpg" alt="" />
									</a>
								</div>
								                                  
							</div>
						</div>
					</div>
					<div class="span3">
						<div class="product">
							<ul>
								<li pos="3">      <a href="https://www.yao123.com/product/GWM0509811_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWM0509811/8a2c91bf5595a8860156727dd4014c40.jpg@!m145"
										class="cong_a" alt="同仁堂 五子衍宗丸 60g">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWM0509811_1" class="text-overflow"
											target="_blank" isret="1">同仁堂 五子衍宗丸 60g</a>
									</div>
									<div class="floor_jg" floor_jg="GWM0509811"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                                
								</li>
								<li pos="4">        <a href="https://www.yao123.com/product/GWM0302649_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWM0302649/gcg10567201601141746218ab3e253523a33d201523f875d8604c0.jpg@!m145"
										class="cong_a" alt="爱乐维  复合维生素片 30片/盒">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWM0302649_1" class="text-overflow"
											target="_blank" isret="1">爱乐维  复合维生素片 30片/盒</a>
									</div>
									<div class="floor_jg" floor_jg="GWM0302649"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                              
								</li>
								<li pos="5">          <a href="https://www.yao123.com/product/GWM0211468_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWM0211468/8a2c91bf5803e97c01586bfb8cfb0b0e.jpg@!m145"
										class="cong_a" alt="陈李济 舒筋健腰丸45g*10瓶/盒">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWM0211468_1" class="text-overflow"
											target="_blank" isret="1">陈李济 舒筋健腰丸45g*10瓶/盒</a>
									</div>
									<div class="floor_jg" floor_jg="GWM0211468"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                            
								</li>
								<li pos="6">            <a href="https://www.yao123.com/product/GWM0204605_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWM0204605/gcg12523201604061251108ab3e25353ab8e7f0153e9e8ef460f78.jpg@!m145"
										class="cong_a" alt="惠氏钙尔奇D 碳酸钙D3咀嚼片(Ⅱ) 100片">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWM0204605_1" class="text-overflow"
											target="_blank" isret="1">惠氏钙尔奇D 碳酸钙D3咀嚼片(Ⅱ) 100片</a>
									</div>
									<div class="floor_jg" floor_jg="GWM0204605"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                          
								</li>
								<li pos="7">              <a href="https://www.yao123.com/product/GWM0215412_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWM0215412/8a2c91bf58ba8c1d015f5bac34bc79ca.jpg@!m145"
										class="cong_a" alt="鸿茅 鸿茅药酒  250ml*6瓶">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWM0215412_1" class="text-overflow"
											target="_blank" isret="1">鸿茅 鸿茅药酒  250ml*6瓶</a>
									</div>
									<div class="floor_jg" floor_jg="GWM0215412"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                        
								</li>
								<li pos="8">                <a href="https://www.yao123.com/product/GWM0109575_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWM0109575/8a2c91bf5595a88601567219d864495c.jpg@!m145"
										class="cong_a" alt="古汉 古汉养生精片 0.41g*36片*5小盒">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWM0109575_1" class="text-overflow"
											target="_blank" isret="1">古汉 古汉养生精片 0.41g*36片*5小盒</a>
									</div>
									<div class="floor_jg" floor_jg="GWM0109575"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                      
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="brands">
					<ul>
						<li pos="9">                  <a target=""
							href="/search?keyword=仲景" isret="1"> <img
								src="https://img.yao123.cn/gw/14667619050438a2c91bf5277d463015581d283950bee.jpg" class="brandimg" alt="">
						</a>                    
						</li>
						<li pos="10">                    <a target=""
							href="/search?keyword=西安杨森" isret="1"> <img
								src="https://img.yao123.cn/gw/14485343464498a2c91bf51372d81015143600ad20041.jpg" class="brandimg" alt="">
						</a>                  
						</li>
						<li pos="11">                      <a target=""
							href="/search?keyword=同仁堂" isret="1"> <img
								src="https://img.yao123.cn/gw/14485343459438a2c91bf51372d810151436008d8003b.jpg" class="brandimg" alt="">
						</a>                
						</li>
						<li pos="12">                        <a target=""
							href="/search?keyword=强生" isret="1"> <img
								src="https://img.yao123.cn/gw/14667622376538a2c91bf5277d463015581d796d80bf0.jpg" class="brandimg" alt="">
						</a>              
						</li>
						<li pos="13">                          <a target=""
							href="/search?keyword=马应龙" isret="1"> <img
								src="https://img.yao123.cn/gw/14667619050368a2c91bf5277d463015581d2838e0bed.jpg" class="brandimg" alt="">
						</a>            
						</li>
						<li pos="14">                            <a target=""
							href="/search?keyword=葵花药业" isret="1"> <img
								src="https://img.yao123.cn/gw/14667624010988a2c91bf5277d463015581da154d0bf1.jpg" class="brandimg" alt="">
						</a>          
						</li>
						<li pos="15">                              <a target=""
							href="/search?keyword=东阿阿胶" isret="1"> <img
								src="https://img.yao123.cn/gw/14489493541368a2c91bf5156631d01515c1c8ea7000f.jpg" class="brandimg" alt="">
						</a>        
						</li>
						<li pos="16">                                <a target=""
							href="/search?keyword=九芝堂" isret="1"> <img
								src="https://img.yao123.cn/gw/14485343463688a2c91bf51372d81015143600a820040.jpg" class="brandimg" alt="">
						</a>      
						</li>
						<li pos="17">                                  <a target=""
							href="/search?keyword=惠氏" isret="1"> <img
								src="https://img.yao123.cn/gw/14485343462368a2c91bf51372d810151436009fe003e.jpg" class="brandimg" alt="">
						</a>    
						</li>
						<li pos="18">                                    <a target=""
							href="/search?keyword=云南白药" isret="1"> <img
								src="https://img.yao123.cn/gw/14667619050718a2c91bf5277d463015581d283b10bef.jpg" class="brandimg" alt="">
						</a>  
						</li>
					</ul>
				</div>
				<!--首页广告位-->
				<div class="floorad">
						<div class="floorggw">
						    <a href="https://www.yao123.com/activity/20190506/index.html" target="_blank"><img src="https://img.yao123.cn/gw/8a2c91bf61089c5d01621da5bb2b1f11.jpg" alt="联华ok卡首页广告位"/></a>
						</div>
					</div>

			</div>
			<div fid="72" floor="3" class="floor">
				<div class="row">
					<div class="span1">
						<h2 class="bg-1f">滋补保健</h2>
						<div class="words">
							<ul pos="1">
								  								<li><a href="https://www.yao123.com/search?keyword=补肾强身" target="_blank"
									isret="1">补肾强身</a></li> 								<li><a href="https://www.yao123.com/search?keyword=增强免疫" target="_blank"
									isret="1">增强免疫</a></li> 								<li><a href="https://www.yao123.com/search?keyword=缓解疲劳" target="_blank"
									isret="1">缓解疲劳</a></li> 								<li><a href="https://www.yao123.com/search?keyword=纤体排毒" target="_blank"
									isret="1">纤体排毒</a></li> 								<li><a href="https://www.yao123.com/search?keyword=补锌" target="_blank"
									isret="1">补锌</a></li> 								<li><a href="https://www.yao123.com/search?keyword=调节三高" target="_blank"
									isret="1">调节三高</a></li> 								<li><a href="https://www.yao123.com/search?keyword=孕妇营养" target="_blank"
									isret="1">孕妇营养</a></li> 								<li><a href="https://www.yao123.com/search?keyword=蜂胶" target="_blank"
									isret="1">蜂胶</a></li> 								<li><a href="https://www.yao123.com/search?keyword=益生菌" target="_blank"
									isret="1">益生菌</a></li> 								<li><a href="https://www.yao123.com/search?keyword=叶黄素" target="_blank"
									isret="1">叶黄素</a></li> 								<li><a href="https://www.yao123.com/search?keyword= 增加骨密度" target="_blank"
									isret="1"> 增加骨密度</a></li> 								<li><a href="https://www.yao123.com/search?keyword=改善睡眠" target="_blank"
									isret="1">改善睡眠</a></li> 								<li><a href="https://www.yao123.com/search?keyword=护肝" target="_blank"
									isret="1">护肝</a></li> 								<li><a href="https://www.yao123.com/search?keyword=胶原蛋白" target="_blank"
									isret="1">胶原蛋白</a></li> 								<li><a href="https://www.yao123.com/search?keyword=珍珠粉" target="_blank"
									isret="1">珍珠粉</a></li> 								<li><a href="https://www.yao123.com/search?keyword=润肺养胃" target="_blank"
									isret="1">润肺养胃</a></li> 								<li><a href="https://www.yao123.com/search?keyword=清咽润喉" target="_blank"
									isret="1">清咽润喉</a></li> 								<li><a href="https://www.yao123.com/search?keyword=冬虫夏草" target="_blank"
									isret="1">冬虫夏草</a></li> 
								                                   
							</ul>
						</div>
					</div>
					<div class="span2">
						<div pos="2" class="slider">
							<div style="opacity: 1; display: block;" floorslider=""
								class="owl-carousel owl-theme">
								    								<div class="item">
									<a href="/search?keyword=汤臣倍健"
										isret="1" target="_blank"> <img
										src="https://img.yao123.cn/gw/8a2c91bf67543a150167a0e7474b1216.jpg" alt="" />
									</a>
								</div>
								                                  
							</div>
						</div>
					</div>
					<div class="span3">
						<div class="product">
							<ul>
								<li pos="3">      <a href="https://www.yao123.com/product/GWF0317664_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWF0317664/8a2c91bf651b85760165320ea7cb022b.jpg@!m145"
										class="cong_a" alt="承天上品九制黄精 10g*15包">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWF0317664_1" class="text-overflow"
											target="_blank" isret="1">承天上品九制黄精 10g*15包</a>
									</div>
									<div class="floor_jg" floor_jg="GWF0317664"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                                
								</li>
								<li pos="4">        <a href="https://www.yao123.com/product/GWF0116161_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWF0116161/8a2c91bf58ba8c1d016052eee72d4390.jpg@!m145"
										class="cong_a" alt="新品特惠】健力多氨糖软骨素钙片  180片">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWF0116161_1" class="text-overflow"
											target="_blank" isret="1">新品特惠】健力多氨糖软骨素钙片  180片</a>
									</div>
									<div class="floor_jg" floor_jg="GWF0116161"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                              
								</li>
								<li pos="5">          <a href="https://www.yao123.com/product/GWF0101432_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWF0101432/8a2c91bf5803e97c0158478f95d30800.jpg@!m145"
										class="cong_a" alt="绿A天然螺旋藻精片 300g(0.5g*12T*25袋*2罐)(铁罐礼盒装)">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWF0101432_1" class="text-overflow"
											target="_blank" isret="1">绿A天然螺旋藻精片 300g(0.5g*12T*25袋*2罐)(铁罐礼盒装)</a>
									</div>
									<div class="floor_jg" floor_jg="GWF0101432"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                            
								</li>
								<li pos="6">            <a href="https://www.yao123.com/product/GWF0112082_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWF0112082/8a2c91bf58ba8c1d015ad5d2dc342f85.jpg@!m145"
										class="cong_a" alt="两盒立减60元】太太美容口服液 10ml*30支">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWF0112082_1" class="text-overflow"
											target="_blank" isret="1">两盒立减60元】太太美容口服液 10ml*30支</a>
									</div>
									<div class="floor_jg" floor_jg="GWF0112082"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                          
								</li>
								<li pos="7">              <a href="https://www.yao123.com/product/GWF0101459_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWF0101459/gcg9377201512240942458ab3e25351c8e8f60151d1a70f2c00aa.jpg@!m145"
										class="cong_a" alt="汤臣倍健 多种维生素咀嚼片（儿童型） 1000mg/片*60片">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWF0101459_1" class="text-overflow"
											target="_blank" isret="1">汤臣倍健 多种维生素咀嚼片（儿童型） 1000mg/片*60片</a>
									</div>
									<div class="floor_jg" floor_jg="GWF0101459"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                        
								</li>
								<li pos="8">                <a href="https://www.yao123.com/product/GWF0101477_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWF0101477/gcg9395201512241402588ab3e25351c8e8f60151d2954d4900fb.jpg@!m145"
										class="cong_a" alt="买一送一】汤臣倍健蛋白粉 450g">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWF0101477_1" class="text-overflow"
											target="_blank" isret="1">买一送一】汤臣倍健蛋白粉 450g</a>
									</div>
									<div class="floor_jg" floor_jg="GWF0101477"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                      
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="brands">
					<ul>
						<li pos="9">                  <a target=""
							href="/search?keyword=澳琳达" isret="1"> <img
								src="https://img.yao123.cn/gw/14570617862638a2c91bf5277d46301533fa6729a0195.jpg" class="brandimg" alt="">
						</a>                    
						</li>
						<li pos="10">                    <a target=""
							href="/search?keyword=养生堂" isret="1"> <img
								src="https://img.yao123.cn/gw/14489493547318a2c91bf5156631d01515c1c90ee0015.jpg" class="brandimg" alt="">
						</a>                  
						</li>
						<li pos="11">                      <a target=""
							href="/search?keyword=碧生源" isret="1"> <img
								src="https://img.yao123.cn/gw/14489493541018a2c91bf5156631d01515c1c8ea1000e.jpg" class="brandimg" alt="">
						</a>                
						</li>
						<li pos="12">                        <a target=""
							href="/search?keyword=健安喜" isret="1"> <img
								src="https://img.yao123.cn/gw/14489493542938a2c91bf5156631d01515c1c8f3c0010.jpg" class="brandimg" alt="">
						</a>              
						</li>
						<li pos="13">                          <a target=""
							href="/search?keyword=昂立" isret="1"> <img
								src="https://img.yao123.cn/gw/14570617861378a2c91bf5277d46301533fa6721a0194.jpg" class="brandimg" alt="">
						</a>            
						</li>
						<li pos="14">                            <a target=""
							href="/search?keyword=金奥力" isret="1"> <img
								src="https://img.yao123.cn/gw/14570617860358a2c91bf5277d46301533fa671b40193.jpg" class="brandimg" alt="">
						</a>          
						</li>
						<li pos="15">                              <a target=""
							href="/search?keyword=黄金搭档" isret="1"> <img
								src="https://img.yao123.cn/gw/14570617860278a2c91bf5277d46301533fa671ac0192.jpg" class="brandimg" alt="">
						</a>        
						</li>
						<li pos="16">                                <a target=""
							href="/search?keyword=雷允上" isret="1"> <img
								src="https://img.yao123.cn/gw/14489493545018a2c91bf5156631d01515c1c90070012.jpg" class="brandimg" alt="">
						</a>      
						</li>
						<li pos="17">                                  <a target=""
							href="/search?keyword=善存" isret="1"> <img
								src="https://img.yao123.cn/gw/14570617860148a2c91bf5277d46301533fa671a00191.jpg" class="brandimg" alt="">
						</a>    
						</li>
						<li pos="18">                                    <a target=""
							href="/search?keyword=哈药" isret="1"> <img
								src="https://img.yao123.cn/gw/14485343462518a2c91bf51372d81015143600a0d003f.jpg" class="brandimg" alt="">
						</a>  
						</li>
					</ul>
				</div>
				<!--首页广告位-->
				
			</div>
			<div fid="71" floor="4" class="floor">
				<div class="row">
					<div class="span1">
						<h2 class="bg-1f">医疗器械</h2>
						<div class="words">
							<ul pos="1">
								  								<li><a href="https://www.yao123.com/search?keyword=手机电脑" target="_blank"
									isret="1">手机电脑</a></li> 								<li><a href="https://www.yao123.com/search?keyword=空调冰箱" target="_blank"
									isret="1">空调冰箱</a></li> 								<li><a href="https://www.yao123.com/search/152?keyword=血压计" target="_blank"
									isret="1">血压计</a></li> 								<li><a href="https://www.yao123.com/search/0-0-735?keyword=欧姆龙" target="_blank"
									isret="1">欧姆龙</a></li> 								<li><a href="https://www.yao123.com/search?keyword=双立人" target="_blank"
									isret="1">双立人</a></li> 								<li><a href="https://www.yao123.com/search?keyword=空气净化器" target="_blank"
									isret="1">空气净化器</a></li> 								<li><a href="https://www.yao123.com/search/0-0-3647?keyword=松下" target="_blank"
									isret="1">松下</a></li> 								<li><a href="https://www.yao123.com/product/GWQ0116606_1" target="_blank"
									isret="1">祛疤</a></li> 								<li><a href="https://www.yao123.com/search/0-0-755?keyword=科沃斯" target="_blank"
									isret="1">科沃斯</a></li> 								<li><a href="https://www.yao123.com/search?keyword=美容仪" target="_blank"
									isret="1">美容仪</a></li> 								<li><a href="https://www.yao123.com/search?keyword=原汁机" target="_blank"
									isret="1">原汁机</a></li> 								<li><a href="https://www.yao123.com/search?keyword=机器人" target="_blank"
									isret="1">机器人</a></li> 								<li><a href="https://www.yao123.com/search?keyword=取暖器" target="_blank"
									isret="1">取暖器</a></li> 								<li><a href="https://www.yao123.com/search?keyword=戴森" target="_blank"
									isret="1">戴森</a></li> 								<li><a href="https://www.yao123.com/search?keyword=汉美驰" target="_blank"
									isret="1">汉美驰</a></li> 								<li><a href="https://www.yao123.com/search?keyword=电饭煲" target="_blank"
									isret="1">电饭煲</a></li> 								<li><a href="https://www.yao123.com/search?keyword=养生壶" target="_blank"
									isret="1">养生壶</a></li> 								<li><a href="https://www.yao123.com/search?keyword=电动牙刷" target="_blank"
									isret="1">电动牙刷</a></li> 
								                                   
							</ul>
						</div>
					</div>
					<div class="span2">
						<div pos="2" class="slider">
							<div style="opacity: 1; display: block;" floorslider=""
								class="owl-carousel owl-theme">
								    								<div class="item">
									<a href="/search/0-0-5344?keyword=三禾"
										isret="1" target="_blank"> <img
										src="https://img.yao123.cn/gw/8a2c91bf67bc411d016a8c6eeee11657.jpg" alt="" />
									</a>
								</div>
																<div class="item">
									<a href="/category_152"
										isret="1" target="_blank"> <img
										src="https://img.yao123.cn/gw/8a2c91bf5803e97c01584312d16a0718.jpg" alt="" />
									</a>
								</div>
								                                  
							</div>
						</div>
					</div>
					<div class="span3">
						<div class="product">
							<ul>
								<li pos="3">      <a href="https://www.yao123.com/product/GWQ0118269_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWQ0118269/8a2c91bf67bc411d0169807a38fa44c6.jpg@!m145"
										class="cong_a" alt="欧姆龙电子血压计（上臂式） U11">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWQ0118269_1" class="text-overflow"
											target="_blank" isret="1">欧姆龙电子血压计（上臂式） U11</a>
									</div>
									<div class="floor_jg" floor_jg="GWQ0118269"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                                
								</li>
								<li pos="4">        <a href="https://www.yao123.com/product/GWB0314969_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWB0314969/8a2c91bf61089c5d0161656162550ca6.jpg@!m145"
										class="cong_a" alt="买就送】Refa黎珐双球滚轮点部美容仪 送奇士美吸油纸5包">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWB0314969_1" class="text-overflow"
											target="_blank" isret="1">买就送】Refa黎珐双球滚轮点部美容仪 送奇士美吸油纸5包</a>
									</div>
									<div class="floor_jg" floor_jg="GWB0314969"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                              
								</li>
								<li pos="5">          <a href="https://www.yao123.com/product/GWB0318234_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWB0318234/8a2c91bf67bc411d0169765255db41c6.JPG@!m145"
										class="cong_a" alt="帅康（Sacon）20立方大吸力智能联动潜吸式油烟机CXW-220-XS9806 欧式抽油烟机 黑色">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWB0318234_1" class="text-overflow"
											target="_blank" isret="1">帅康（Sacon）20立方大吸力智能联动潜吸式油烟机CXW-220-XS9806 欧式抽油烟机 黑色</a>
									</div>
									<div class="floor_jg" floor_jg="GWB0318234"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                            
								</li>
								<li pos="6">            <a href="https://www.yao123.com/product/GWB0318376_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWB0318376/8a2c91bf67bc411d016a8add0e6f0f53.jpg@!m145"
										class="cong_a" alt="SANHO/三禾 中餐厅同款彩瓷陶铸等离子不粘锅磁通款 20CM汤锅 TLF2002-2 酒红色">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWB0318376_1" class="text-overflow"
											target="_blank" isret="1">SANHO/三禾 中餐厅同款彩瓷陶铸等离子不粘锅磁通款 20CM汤锅 TLF2002-2 酒红色</a>
									</div>
									<div class="floor_jg" floor_jg="GWB0318376"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                          
								</li>
								<li pos="7">              <a href="https://www.yao123.com/product/GWB0313979_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWB0313979/8a2c91bf58ba8c1d015dcab229b72368.jpg@!m145"
										class="cong_a" alt="戴森(Dyson) 吹风机HD01 Dyson Supersonic 306020-01(紫红色)">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWB0313979_1" class="text-overflow"
											target="_blank" isret="1">戴森(Dyson) 吹风机HD01 Dyson Supersonic 306020-01(紫红色)</a>
									</div>
									<div class="floor_jg" floor_jg="GWB0313979"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                        
								</li>
								<li pos="8">                <a href="https://www.yao123.com/product/GWB0318526_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWB0318526/8a2c91bf67bc411d016ac00cbb012a51.jpg@!m145"
										class="cong_a" alt="Apple/苹果平板 iPad mini 5-wifi版64G 深空灰/金色/银色可选">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWB0318526_1" class="text-overflow"
											target="_blank" isret="1">Apple/苹果平板 iPad mini 5-wifi版64G 深空灰/金色/银色可选</a>
									</div>
									<div class="floor_jg" floor_jg="GWB0318526"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                      
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="brands">
					<ul>
						<li pos="9">                  <a target=""
							href="/search?keyword=欧姆龙" isret="1"> <img
								src="https://img.yao123.cn/gw/14488533158488a2c91bf5156631d01515663210e0005.jpg" class="brandimg" alt="">
						</a>                    
						</li>
						<li pos="10">                    <a target=""
							href="/search?keyword=强生" isret="1"> <img
								src="https://img.yao123.cn/gw/14488533159678a2c91bf5156631d0151566321820006.jpg" class="brandimg" alt="">
						</a>                  
						</li>
						<li pos="11">                      <a target=""
							href="/search?keyword=诺斯清" isret="1"> <img
								src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d015fc7b98b4e1d48.jpg" class="brandimg" alt="">
						</a>                
						</li>
						<li pos="12">                        <a target=""
							href="/search?keyword=九阳" isret="1"> <img
								src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d015fc7b98b501d49.jpg" class="brandimg" alt="">
						</a>              
						</li>
						<li pos="13">                          <a target=""
							href="/search?keyword=虎牌" isret="1"> <img
								src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d015fc7b92f061d42.jpg" class="brandimg" alt="">
						</a>            
						</li>
						<li pos="14">                            <a target=""
							href="/search?keyword=先锋" isret="1"> <img
								src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d015fc7b98cf31d51.jpg" class="brandimg" alt="">
						</a>          
						</li>
						<li pos="15">                              <a target=""
							href="/search?keyword=夏普" isret="1"> <img
								src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d015fc7b98ccc1d50.jpg" class="brandimg" alt="">
						</a>        
						</li>
						<li pos="16">                                <a target=""
							href="/search?keyword=可复美" isret="1"> <img
								src="https://img.yao123.cn/gw/14570557773878a2c91bf5277d46301533f4ac2740177.jpg" class="brandimg" alt="">
						</a>      
						</li>
						<li pos="17">                                  <a target=""
							href="/search?keyword=美的" isret="1"> <img
								src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d015a6ea0fac0198d.jpg" class="brandimg" alt="">
						</a>    
						</li>
						<li pos="18">                                    <a target=""
							href="/search?keyword=三星" isret="1"> <img
								src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d015fc7b98c221d4c.jpg" class="brandimg" alt="">
						</a>  
						</li>
					</ul>
				</div>
				<!--首页广告位-->
				
			</div>
			<div fid="74" floor="5" class="floor">
				<div class="row">
					<div class="span1">
						<h2 class="bg-1f">美妆百货</h2>
						<div class="words">
							<ul pos="1">
								  								<li><a href="https://www.yao123.com/search?keyword=祛痘" target="_blank"
									isret="1">祛痘</a></li> 								<li><a href="https://www.yao123.com/search?keyword=淡斑" target="_blank"
									isret="1">淡斑</a></li> 								<li><a href="https://www.yao123.com/search/0-0-3498?keyword=香奈儿" target="_blank"
									isret="1">香奈儿</a></li> 								<li><a href="https://www.yao123.com/search?keyword=面膜" target="_blank"
									isret="1">面膜</a></li> 								<li><a href="https://www.yao123.com/search?keyword=爽肤水" target="_blank"
									isret="1">爽肤水</a></li> 								<li><a href="https://www.yao123.com/search?keyword=牙膏" target="_blank"
									isret="1">牙膏</a></li> 								<li><a href="https://www.yao123.com/search?keyword=面霜" target="_blank"
									isret="1">面霜</a></li> 								<li><a href="https://www.yao123.com/search?keyword=精华" target="_blank"
									isret="1">精华</a></li> 								<li><a href="https://www.yao123.com/search?keyword=润唇膏" target="_blank"
									isret="1">润唇膏</a></li> 								<li><a href="https://www.yao123.com/search?keyword=喷雾" target="_blank"
									isret="1">喷雾</a></li> 								<li><a href="https://www.yao123.com/search?keyword=卫生巾" target="_blank"
									isret="1">卫生巾</a></li> 								<li><a href="https://www.yao123.com/search?keyword=洁面" target="_blank"
									isret="1">洁面</a></li> 								<li><a href="https://www.yao123.com/search/0-0-4048?keyword=羊奶皂" target="_blank"
									isret="1">羊奶皂</a></li> 								<li><a href="https://www.yao123.com/search/0-0-3506?keyword=倩碧" target="_blank"
									isret="1">倩碧</a></li> 								<li><a href="https://www.yao123.com/search?keyword=美白" target="_blank"
									isret="1">美白</a></li> 								<li><a href="https://www.yao123.com/search?keyword=保湿" target="_blank"
									isret="1">保湿</a></li> 								<li><a href="https://www.yao123.com/search?keyword=欧舒丹" target="_blank"
									isret="1">欧舒丹</a></li> 								<li><a href="https://www.yao123.com/search/0-0-3504?keyword=兰蔻" target="_blank"
									isret="1">兰蔻</a></li> 
								                                   
							</ul>
						</div>
					</div>
					<div class="span2">
						<div pos="2" class="slider">
							<div style="opacity: 1; display: block;" floorslider=""
								class="owl-carousel owl-theme">
								    								<div class="item">
									<a href="/search/0-0-3502?keyword=后"
										isret="1" target="_blank"> <img
										src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d015ffc37d4a22974.jpg" alt="" />
									</a>
								</div>
																<div class="item">
									<a href="/search?keyword=雅漾"
										isret="1" target="_blank"> <img
										src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d015ffc37a4952973.jpg" alt="" />
									</a>
								</div>
																<div class="item">
									<a href="/search?keyword=肌研"
										isret="1" target="_blank"> <img
										src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d0159491c26150dc0.jpg" alt="" />
									</a>
								</div>
								                                  
							</div>
						</div>
					</div>
					<div class="span3">
						<div class="product">
							<ul>
								<li pos="3">      <a href="https://www.yao123.com/product/GWB0214368_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWB0214368/8a2c91bf58ba8c1d015e329a9d0c4f23.jpg@!m145"
										class="cong_a" alt="下单立减288！】后天气丹花献光彩紧颜系列礼盒(308ml)6件套">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWB0214368_1" class="text-overflow"
											target="_blank" isret="1">下单立减288！】后天气丹花献光彩紧颜系列礼盒(308ml)6件套</a>
									</div>
									<div class="floor_jg" floor_jg="GWB0214368"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                                
								</li>
								<li pos="4">        <a href="https://www.yao123.com/product/GWB0208850_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWB0208850/8a2c91bf5595a8860155e7e55f2820b1.jpg@!m145"
										class="cong_a" alt="下单仅需1488！】SK-II 护肤精华露 230ml">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWB0208850_1" class="text-overflow"
											target="_blank" isret="1">下单仅需1488！】SK-II 护肤精华露 230ml</a>
									</div>
									<div class="floor_jg" floor_jg="GWB0208850"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                              
								</li>
								<li pos="5">          <a href="https://www.yao123.com/product/GWB0418475_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWB0418475/8a2c91bf67bc411d016a91a7f1e91b4e.jpg@!m145"
										class="cong_a" alt="Dr.ma/麻博士 12CM 黄麻青少年全麻床芯床垫">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWB0418475_1" class="text-overflow"
											target="_blank" isret="1">Dr.ma/麻博士 12CM 黄麻青少年全麻床芯床垫</a>
									</div>
									<div class="floor_jg" floor_jg="GWB0418475"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                            
								</li>
								<li pos="6">            <a href="https://www.yao123.com/product/GWB0217000_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWB0217000/8a2c91bf61089c5d0162dcd0e03e3bd0.jpg@!m145"
										class="cong_a" alt="安热沙水能户外防晒喷雾 60g">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWB0217000_1" class="text-overflow"
											target="_blank" isret="1">安热沙水能户外防晒喷雾 60g</a>
									</div>
									<div class="floor_jg" floor_jg="GWB0217000"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                          
								</li>
								<li pos="7">              <a href="https://www.yao123.com/product/GWB0118517_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWB0118517/8a2c91bf67bc411d016a9b7b88381f20.jpg@!m145"
										class="cong_a" alt="黛丝恩摩洛哥油洗发水奢华损伤修护型500ml">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWB0118517_1" class="text-overflow"
											target="_blank" isret="1">黛丝恩摩洛哥油洗发水奢华损伤修护型500ml</a>
									</div>
									<div class="floor_jg" floor_jg="GWB0118517"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                        
								</li>
								<li pos="8">                <a href="https://www.yao123.com/product/GWB0418425_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWB0418425/8a2c91bf67bc411d016a8b06ddc41194.jpg@!m145"
										class="cong_a" alt="海伦凯勒2019新款时尚潮小脸太阳镜优雅偏光墨镜女猫眼镜框H8819">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWB0418425_1" class="text-overflow"
											target="_blank" isret="1">海伦凯勒2019新款时尚潮小脸太阳镜优雅偏光墨镜女猫眼镜框H8819</a>
									</div>
									<div class="floor_jg" floor_jg="GWB0418425"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                      
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="brands">
					<ul>
						<li pos="9">                  <a target=""
							href="/search/0-0-739?keyword=薇姿" isret="1"> <img
								src="https://img.yao123.cn/gw/14490253115498a2c91bf5156631d015160a393400028.jpg" class="brandimg" alt="">
						</a>                    
						</li>
						<li pos="10">                    <a target=""
							href="/search/0-0-741?keyword=理肤泉" isret="1"> <img
								src="https://img.yao123.cn/gw/14490253113018a2c91bf5156631d015160a392460023.jpg" class="brandimg" alt="">
						</a>                  
						</li>
						<li pos="11">                      <a target=""
							href="/search?keyword=雅诗兰黛" isret="1"> <img
								src="https://img.yao123.cn/gw/8a2c91bf567326520157b772531451e7.jpg" class="brandimg" alt="">
						</a>                
						</li>
						<li pos="12">                        <a target=""
							href="/search/0-0-4990?keyword=馥蕾诗" isret="1"> <img
								src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d015fc7c8627c1dd7.jpg" class="brandimg" alt="">
						</a>              
						</li>
						<li pos="13">                          <a target=""
							href="/search/0-0-3498?keyword=香奈儿" isret="1"> <img
								src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d015fc7c89c641dd8.jpg" class="brandimg" alt="">
						</a>            
						</li>
						<li pos="14">                            <a target=""
							href="/search/0-0-5009?keyword=海蓝之谜" isret="1"> <img
								src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d015fc7c7bfb21dd5.jpg" class="brandimg" alt="">
						</a>          
						</li>
						<li pos="15">                              <a target=""
							href="/search?keyword=碧欧泉" isret="1"> <img
								src="https://img.yao123.cn/gw/8a2c91bf567326520157b772074751e5.jpg" class="brandimg" alt="">
						</a>        
						</li>
						<li pos="16">                                <a target=""
							href="/search?keyword=Whoo" isret="1"> <img
								src="https://img.yao123.cn/gw/8a2c91bf567326520157b7722a0b51e6.jpg" class="brandimg" alt="">
						</a>      
						</li>
						<li pos="17">                                  <a target=""
							href="/search/0-0-3497?keyword=迪奥" isret="1"> <img
								src="https://img.yao123.cn/gw/8a2c91bf567326520157b771b70b51e3.jpg" class="brandimg" alt="">
						</a>    
						</li>
						<li pos="18">                                    <a target=""
							href="/search/239?keyword=兰芝" isret="1"> <img
								src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d015eb86c607565bd.jpg" class="brandimg" alt="">
						</a>  
						</li>
					</ul>
				</div>
				<!--首页广告位-->
				
			</div>
			<div fid="110" floor="6" class="floor">
				<div class="row">
					<div class="span1">
						<h2 class="bg-1f">母婴专区</h2>
						<div class="words">
							<ul pos="1">
								  								<li><a href="https://www.yao123.com/search?keyword=奶瓶" target="_blank"
									isret="1">奶瓶</a></li> 								<li><a href="https://www.yao123.com/search?keyword=迪士尼" target="_blank"
									isret="1">迪士尼</a></li> 								<li><a href="https://www.yao123.com/search/0-0-5019?keyword=布朗博士" target="_blank"
									isret="1">布朗博士</a></li> 								<li><a href="https://www.yao123.com/search/0-0-5034?keyword=抱被" target="_blank"
									isret="1">宝宝抱被</a></li> 								<li><a href="https://www.yao123.com/search?keyword=浴巾" target="_blank"
									isret="1">婴儿浴巾</a></li> 								<li><a href="https://www.yao123.com/category_787" target="_blank"
									isret="1">童车</a></li> 								<li><a href="https://www.yao123.com/search?keyword=婴儿睡袋" target="_blank"
									isret="1">婴儿睡袋</a></li> 								<li><a href="https://www.yao123.com/search/251?keyword=Lascal" target="_blank"
									isret="1">Lascal</a></li> 								<li><a href="https://www.yao123.com/search?keyword=笨笨" target="_blank"
									isret="1">笨笨豆</a></li> 								<li><a href="https://www.yao123.com/search?keyword=INJUSA" target="_blank"
									isret="1">INJUSA</a></li> 								<li><a href="https://www.yao123.com/search?keyword=traveller" target="_blank"
									isret="1">traveller</a></li> 								<li><a href="https://www.yao123.com/search?keyword=Pulse Safe Start" target="_blank"
									isret="1">Safe Start</a></li> 
								               
							</ul>
						</div>
					</div>
					<div class="span2">
						<div pos="2" class="slider">
							<div style="opacity: 1; display: block;" floorslider=""
								class="owl-carousel owl-theme">
								    								<div class="item">
									<a href="/search?keyword=母婴"
										isret="1" target="_blank"> <img
										src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d01600fb14837370a.jpg" alt="" />
									</a>
								</div>
																<div class="item">
									<a href="/category_787"
										isret="1" target="_blank"> <img
										src="https://img.yao123.cn/gw/8a2c91bf67543a150167a0e748b21217.jpg" alt="" />
									</a>
								</div>
								              
							</div>
						</div>
					</div>
					<div class="span3">
						<div class="product">
							<ul>
								<li pos="3">      <a href="https://www.yao123.com/product/GWB0417305_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWB0417305/8a2c91bf61089c5d0163de6b29df63db.jpg@!m145"
										class="cong_a" alt="乐高创意积木盒 L10704">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWB0417305_1" class="text-overflow"
											target="_blank" isret="1">乐高创意积木盒 L10704</a>
									</div>
									<div class="floor_jg" floor_jg="GWB0417305"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>            
								</li>
								<li pos="4">        <a href="https://www.yao123.com/product/GWB0415779_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWB0415779/8a2c91bf58ba8c1d015fddb3569b200b.jpg@!m145"
										class="cong_a" alt="布朗博士 好流畅 爱宝选5安士PPSU宽口婴儿奶瓶 WB5110-CH 150mL">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWB0415779_1" class="text-overflow"
											target="_blank" isret="1">布朗博士 好流畅 爱宝选5安士PPSU宽口婴儿奶瓶 WB5110-CH 150mL</a>
									</div>
									<div class="floor_jg" floor_jg="GWB0415779"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>          
								</li>
								<li pos="5">          <a href="https://www.yao123.com/product/GWB0418077_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWB0418077/8a2c91bf67543a150167bb0be5841804.jpg@!m145"
										class="cong_a" alt="花王婴儿纸尿裤大号L54片">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWB0418077_1" class="text-overflow"
											target="_blank" isret="1">花王婴儿纸尿裤大号L54片</a>
									</div>
									<div class="floor_jg" floor_jg="GWB0418077"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>        
								</li>
								<li pos="6">            <a href="https://www.yao123.com/product/GWB0418359_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWB0418359/8a2c91bf67bc411d016a2a1d47f07580.jpg@!m145"
										class="cong_a" alt="英巨莎INJUSA 探险吉普车 12V 双座位 儿童电动车 753007">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWB0418359_1" class="text-overflow"
											target="_blank" isret="1">英巨莎INJUSA 探险吉普车 12V 双座位 儿童电动车 753007</a>
									</div>
									<div class="floor_jg" floor_jg="GWB0418359"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>      
								</li>
								<li pos="7">              <a href="https://www.yao123.com/product/GWB0416827_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWB0416827/8a2c91bf61089c5d016274a797ea2c4a.jpg@!m145"
										class="cong_a" alt="强生婴儿牛奶润肤皂125g">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWB0416827_1" class="text-overflow"
											target="_blank" isret="1">强生婴儿牛奶润肤皂125g</a>
									</div>
									<div class="floor_jg" floor_jg="GWB0416827"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>    
								</li>
								<li pos="8">                <a href="https://www.yao123.com/product/GWB0418352_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWB0418352/8a2c91bf67bc411d0169e6289b276583.jpg@!m145"
										class="cong_a" alt="JOOLIO 佳俐优 Runner 奔跑者高景观婴儿推车">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWB0418352_1" class="text-overflow"
											target="_blank" isret="1">JOOLIO 佳俐优 Runner 奔跑者高景观婴儿推车</a>
									</div>
									<div class="floor_jg" floor_jg="GWB0418352"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>  
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="brands">
					<ul>
						<li pos="9">                
						</li>
						<li pos="10">                
						</li>
						<li pos="11">                
						</li>
						<li pos="12">                
						</li>
						<li pos="13">                
						</li>
						<li pos="14">                
						</li>
						<li pos="15">                
						</li>
						<li pos="16">                
						</li>
						<li pos="17">                
						</li>
						<li pos="18">                
						</li>
					</ul>
				</div>
				<!--首页广告位-->
				
			</div>
			<div fid="77" floor="7" class="floor">
				<div class="row">
					<div class="span1">
						<h2 class="bg-1f">计生用品</h2>
						<div class="words">
							<ul pos="1">
								  								<li><a href="https://www.yao123.com/category_54" target="_blank"
									isret="1">避孕套</a></li> 								<li><a href="https://www.yao123.com/search?keyword=003" target="_blank"
									isret="1">003</a></li> 								<li><a href="https://www.yao123.com/search?keyword=震动环" target="_blank"
									isret="1">震动环</a></li> 								<li><a href="https://www.yao123.com/category_224" target="_blank"
									isret="1">按摩棒</a></li> 								<li><a href="https://www.yao123.com/search?keyword=凸点" target="_blank"
									isret="1">凸点</a></li> 								<li><a href="https://www.yao123.com/search?keyword=诱芷" target="_blank"
									isret="1">诱芷</a></li> 								<li><a href="https://www.yao123.com/search?keyword=飞机杯" target="_blank"
									isret="1">飞机杯</a></li> 								<li><a href="https://www.yao123.com/search?keyword=缩阴球" target="_blank"
									isret="1">缩阴球</a></li> 								<li><a href="https://www.yao123.com/search?keyword=冈本" target="_blank"
									isret="1">冈本</a></li> 								<li><a href="https://www.yao123.com/category_751" target="_blank"
									isret="1">倍力乐</a></li> 								<li><a href="https://www.yao123.com/search?keyword=倍耐力" target="_blank"
									isret="1">倍耐力</a></li> 								<li><a href="https://www.yao123.com/search?keyword=香蕉计划" target="_blank"
									isret="1">香蕉计划</a></li> 								<li><a href="https://www.yao123.com/search?keyword=雷霆" target="_blank"
									isret="1">雷霆</a></li> 								<li><a href="https://www.yao123.com/category_225" target="_blank"
									isret="1">润滑剂</a></li> 								<li><a href="https://www.yao123.com/search?keyword=延时剂" target="_blank"
									isret="1">延时剂</a></li> 								<li><a href="https://www.yao123.com/search?keyword=螺纹" target="_blank"
									isret="1">螺纹</a></li> 								<li><a href="https://www.yao123.com/search?keyword=震动棒" target="_blank"
									isret="1">震动棒</a></li> 								<li><a href="https://www.yao123.com/search?keyword=超薄" target="_blank"
									isret="1">超薄</a></li> 
								                                   
							</ul>
						</div>
					</div>
					<div class="span2">
						<div pos="2" class="slider">
							<div style="opacity: 1; display: block;" floorslider=""
								class="owl-carousel owl-theme">
								    								<div class="item">
									<a href="/search?keyword=杜蕾斯"
										isret="1" target="_blank"> <img
										src="https://img.yao123.cn/gw/8a2c91bf58ba8c1d015f804636b2075d.jpg" alt="" />
									</a>
								</div>
								                                  
							</div>
						</div>
					</div>
					<div class="span3">
						<div class="product">
							<ul>
								<li pos="3">      <a href="https://www.yao123.com/product/GWQ0200272_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWQ0200272/gcg8190201512021928158ab3e253516220f50151627333df00e9.jpg@!m145"
										class="cong_a" alt="杜蕾斯激爽四合一避孕套套装 32片">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWQ0200272_1" class="text-overflow"
											target="_blank" isret="1">杜蕾斯激爽四合一避孕套套装 32片</a>
									</div>
									<div class="floor_jg" floor_jg="GWQ0200272"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                                
								</li>
								<li pos="4">        <a href="https://www.yao123.com/product/GWQ0203557_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWQ0203557/gcg11475201602261505428ab3e253529b0ab001531c65bb171d6a.jpg@!m145"
										class="cong_a" alt="冈本003白金10片装">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWQ0203557_1" class="text-overflow"
											target="_blank" isret="1">冈本003白金10片装</a>
									</div>
									<div class="floor_jg" floor_jg="GWQ0203557"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                              
								</li>
								<li pos="5">          <a href="https://www.yao123.com/product/GWQ0216468_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWQ0216468/8a2c91bf61089c5d0161301216f5038a.jpg@!m145"
										class="cong_a" alt="雷霆 无线加温女用穿戴蝴蝶隐形内裤自卫慰器 震动跳蛋 阳具 情趣性用品">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWQ0216468_1" class="text-overflow"
											target="_blank" isret="1">雷霆 无线加温女用穿戴蝴蝶隐形内裤自卫慰器 震动跳蛋 阳具 情趣性用品</a>
									</div>
									<div class="floor_jg" floor_jg="GWQ0216468"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                            
								</li>
								<li pos="6">            <a href="https://www.yao123.com/product/GWQ0216461_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWQ0216461/8a2c91bf61089c5d0161300ce3750373.jpg@!m145"
										class="cong_a" alt="名流避孕套 至薄002薄安全套10只装 男用夫妻成人情趣计生用品">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWQ0216461_1" class="text-overflow"
											target="_blank" isret="1">名流避孕套 至薄002薄安全套10只装 男用夫妻成人情趣计生用品</a>
									</div>
									<div class="floor_jg" floor_jg="GWQ0216461"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                          
								</li>
								<li pos="7">              <a href="https://www.yao123.com/product/GWQ0217006_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWQ0217006/8a2c91bf61089c5d0162f166e5123fbb.jpg@!m145"
										class="cong_a" alt="艾莱特吮吸 男用飞机杯全自动深喉夹吸抽插工具撸自慰器">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWQ0217006_1" class="text-overflow"
											target="_blank" isret="1">艾莱特吮吸 男用飞机杯全自动深喉夹吸抽插工具撸自慰器</a>
									</div>
									<div class="floor_jg" floor_jg="GWQ0217006"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                        
								</li>
								<li pos="8">                <a href="https://www.yao123.com/product/GWQ0214670_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWQ0214670/8a2c91bf58ba8c1d015e2830652f498f.jpg@!m145"
										class="cong_a" alt="JO水溶性润滑液120ml">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWQ0214670_1" class="text-overflow"
											target="_blank" isret="1">JO水溶性润滑液120ml</a>
									</div>
									<div class="floor_jg" floor_jg="GWQ0214670"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                      
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="brands">
					<ul>
						<li pos="9">                  <a target=""
							href="/search/0-0-770?keyword=杜蕾斯" isret="1"> <img
								src="https://img.yao123.cn/gw/14491485495538a2c91bf5156631d015167fc09b30097.jpg" class="brandimg" alt="">
						</a>                    
						</li>
						<li pos="10">                    <a target=""
							href="/search/0-0-774?keyword=冈本" isret="1"> <img
								src="https://img.yao123.cn/gw/14491485497718a2c91bf5156631d015167fc0a8d0099.jpg" class="brandimg" alt="">
						</a>                  
						</li>
						<li pos="11">                      <a target=""
							href="/search?keyword=第6感" isret="1"> <img
								src="https://img.yao123.cn/gw/14570618268058a2c91bf5277d46301533fa710f80199.jpg" class="brandimg" alt="">
						</a>                
						</li>
						<li pos="12">                        <a target=""
							href="/search/0-0-1681?keyword=倍力乐" isret="1"> <img
								src="https://img.yao123.cn/gw/14570618268068a2c91bf5277d46301533fa710f9019a.jpg" class="brandimg" alt="倍力乐">
						</a>              
						</li>
						<li pos="13">                          <a target=""
							href="/search/0-0-775?keyword=杰士邦" isret="1"> <img
								src="https://img.yao123.cn/gw/14491485498118a2c91bf5156631d015167fc0ab5009a.jpg" class="brandimg" alt="">
						</a>            
						</li>
						<li pos="14">                            <a target=""
							href="/search?keyword=秘诱" isret="1"> <img
								src="https://img.yao123.cn/gw/14570618266438a2c91bf5277d46301533fa710540198.jpg" class="brandimg" alt="">
						</a>          
						</li>
						<li pos="15">                              <a target=""
							href="/search/0-0-772?keyword=倍耐力" isret="1"> <img
								src="https://img.yao123.cn/gw/14491485495418a2c91bf5156631d015167fc09a70096.jpg" class="brandimg" alt="">
						</a>        
						</li>
						<li pos="16">                                <a target=""
							href="/search?keyword=TENGA" isret="1"> <img
								src="https://img.yao123.cn/gw/8a2c91bf5595a88601562f8c0b8c3701.jpg" class="brandimg" alt="">
						</a>      
						</li>
						<li pos="17">                                  <a target=""
							href="/search?keyword=大卫" isret="1"> <img
								src="https://img.yao123.cn/gw/14491485497298a2c91bf5156631d015167fc0a640098.jpg" class="brandimg" alt="">
						</a>    
						</li>
						<li pos="18">                                    <a target=""
							href="/search?keyword=皮克朋" isret="1"> <img
								src="https://img.yao123.cn/gw/8a2c91bf5595a88601562f8bcd6236fe.jpg" class="brandimg" alt="">
						</a>  
						</li>
					</ul>
				</div>
				<!--首页广告位-->
				
			</div>
			<div fid="76" floor="8" class="floor">
				<div class="row">
					<div class="span1">
						<h2 class="bg-1f">隐形眼镜</h2>
						<div class="words">
							<ul pos="1">
								  								<li><a href="https://www.yao123.com/search?keyword=月抛 " target="_blank"
									isret="1">月抛</a></li> 								<li><a href="https://www.yao123.com/search?keyword=日抛" target="_blank"
									isret="1">日抛</a></li> 								<li><a href="https://www.yao123.com/search?keyword=年抛" target="_blank"
									isret="1">年抛</a></li> 								<li><a href="https://www.yao123.com/search?keyword=视康日抛" target="_blank"
									isret="1">视康日抛</a></li> 								<li><a href="https://www.yao123.com/category_234" target="_blank"
									isret="1">美瞳</a></li> 								<li><a href="https://www.yao123.com/search?keyword=2周抛" target="_blank"
									isret="1">2周抛</a></li> 								<li><a href="https://www.yao123.com/category_339" target="_blank"
									isret="1">护理液</a></li> 								<li><a href="https://www.yao123.com/category_340" target="_blank"
									isret="1">润眼液</a></li> 								<li><a href="https://www.yao123.com/search?keyword=强生" target="_blank"
									isret="1">强生</a></li> 								<li><a href="https://www.yao123.com/search?keyword=KKR" target="_blank"
									isret="1">KKR</a></li> 								<li><a href="https://www.yao123.com/category_232-1639" target="_blank"
									isret="1">库博光学</a></li> 								<li><a href="https://www.yao123.com/search?keyword=SAP" target="_blank"
									isret="1">SAP</a></li> 								<li><a href="https://www.yao123.com/search?keyword=爱尔康日抛" target="_blank"
									isret="1">爱尔康日抛</a></li> 								<li><a href="https://www.yao123.com/search?keyword=半年抛" target="_blank"
									isret="1">半年抛</a></li> 								<li><a href="https://www.yao123.com/search?keyword=博士伦" target="_blank"
									isret="1">博士伦</a></li> 								<li><a href="https://www.yao123.com/search?keyword=海俪恩" target="_blank"
									isret="1">海俪恩</a></li> 								<li><a href="https://www.yao123.com/search?keyword=全润护理液" target="_blank"
									isret="1">全润护理液</a></li> 								<li><a href="https://www.yao123.com/search?keyword=傲滴" target="_blank"
									isret="1">傲滴</a></li> 
								                                   
							</ul>
						</div>
					</div>
					<div class="span2">
						<div pos="2" class="slider">
							<div style="opacity: 1; display: block;" floorslider=""
								class="owl-carousel owl-theme">
								    								<div class="item">
									<a href="/search?keyword=隐形眼镜"
										isret="1" target="_blank"> <img
										src="https://img.yao123.cn/gw/8a2c91bf67543a150167a0e747051215.jpg" alt="" />
									</a>
								</div>
								                                  
							</div>
						</div>
					</div>
					<div class="span3">
						<div class="product">
							<ul>
								<li pos="3">      <a href="https://www.yao123.com/product/GWQ0316326_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWQ0316326/8a2c91bf58ba8c1d0160baf4abee5188.jpg@!m145"
										class="cong_a" alt="强生美瞳水凝日抛30片装晶恬">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWQ0316326_1" class="text-overflow"
											target="_blank" isret="1">强生美瞳水凝日抛30片装晶恬</a>
									</div>
									<div class="floor_jg" floor_jg="GWQ0316326"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                                
								</li>
								<li pos="4">        <a href="https://www.yao123.com/product/GWQ0316838_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWQ0316838/8a2c91bf61089c5d01626674608129e7.jpg@!m145"
										class="cong_a" alt="绮芙莉美瞳月抛1片日本Givre混血小直径隐形眼镜网红同款">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWQ0316838_1" class="text-overflow"
											target="_blank" isret="1">绮芙莉美瞳月抛1片日本Givre混血小直径隐形眼镜网红同款</a>
									</div>
									<div class="floor_jg" floor_jg="GWQ0316838"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                              
								</li>
								<li pos="5">          <a href="https://www.yao123.com/product/GWQ0303693_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWQ0303693/gcg11611201603081614478ab3e253534f269c0153554aed82073c.jpg@!m145"
										class="cong_a" alt="博士伦清朗半年 2片/盒">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWQ0303693_1" class="text-overflow"
											target="_blank" isret="1">博士伦清朗半年 2片/盒</a>
									</div>
									<div class="floor_jg" floor_jg="GWQ0303693"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                            
								</li>
								<li pos="6">            <a href="https://www.yao123.com/product/GWQ0303530_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWQ0303530/gcg11448201603081737288ab3e253534f269c01535596a3a307ce.jpg@!m145"
										class="cong_a" alt="视康多水润天天抛日抛30片">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWQ0303530_1" class="text-overflow"
											target="_blank" isret="1">视康多水润天天抛日抛30片</a>
									</div>
									<div class="floor_jg" floor_jg="GWQ0303530"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                          
								</li>
								<li pos="7">              <a href="https://www.yao123.com/product/GWQ0303167_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWQ0303167/8a2c91bf58ba8c1d015e2832b17149b6.jpg@!m145"
										class="cong_a" alt="爱尔康傲滴护理液隐形近视眼镜美瞳药水355*2+60ml原装进口">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWQ0303167_1" class="text-overflow"
											target="_blank" isret="1">爱尔康傲滴护理液隐形近视眼镜美瞳药水355*2+60ml原装进口</a>
									</div>
									<div class="floor_jg" floor_jg="GWQ0303167"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                        
								</li>
								<li pos="8">                <a href="https://www.yao123.com/product/GWQ0317840_1"
									target="_blank" isret="1"> 
									<img src="https://img.yao123.com/gc/GWQ0317840/8a2c91bf651b85760165f4db197f1744.jpg@!m145"
										class="cong_a" alt="强生雅培全能滋润型隐形近视眼镜多功能美瞳护理液100ml">
								</a>
									<div class="floor_tit_min">
										<a href="https://www.yao123.com/product/GWQ0317840_1" class="text-overflow"
											target="_blank" isret="1">强生雅培全能滋润型隐形近视眼镜多功能美瞳护理液100ml</a>
									</div>
									<div class="floor_jg" floor_jg="GWQ0317840"
										tpi="1">
										<div>
											<span class="price_opr pricelist" tit="0"> <em></em>
											</span> <span class="xjzt"></span>
										</div>
									</div>                      
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="brands">
					<ul>
						<li pos="9">                  <a target=""
							href="/search?keyword=海俪恩" isret="1"> <img
								src="https://img.yao123.cn/gw/14491125311868a2c91bf5156631d015165d670ff0042.jpg" class="brandimg" alt="">
						</a>                    
						</li>
						<li pos="10">                    <a target=""
							href="/search/0-0-1638?keyword=爱尔康" isret="1"> <img
								src="https://img.yao123.cn/gw/14573331439718a2c91bf5277d46301534fd309a40224.jpg" class="brandimg" alt="">
						</a>                  
						</li>
						<li pos="11">                      <a target=""
							href="/search?keyword=博士伦" isret="1"> <img
								src="https://img.yao123.cn/gw/14491124439498a2c91bf5156631d015165d51c32003e.jpg" class="brandimg" alt="">
						</a>                
						</li>
						<li pos="12">                        <a target=""
							href="/search?keyword=海昌" isret="1"> <img
								src="https://img.yao123.cn/gw/14491124982728a2c91bf5156631d015165d5f0650040.jpg" class="brandimg" alt="">
						</a>              
						</li>
						<li pos="13">                          <a target=""
							href="/search/0-0-1631?keyword=卫康" isret="1"> <img
								src="https://img.yao123.cn/gw/14491127794398a2c91bf5156631d015165da3ab3004c.jpg" class="brandimg" alt="">
						</a>            
						</li>
						<li pos="14">                            <a target=""
							href="/search?keyword=强生" isret="1"> <img
								src="https://img.yao123.cn/gw/14491122174138a2c91bf5156631d015165d1a753003c.jpg" class="brandimg" alt="">
						</a>          
						</li>
						<li pos="15">                              <a target=""
							href="/search?keyword=视康" isret="1"> <img
								src="https://img.yao123.cn/gw/14570619197918a2c91bf5277d46301533fa87c3001a6.jpg" class="brandimg" alt="">
						</a>        
						</li>
						<li pos="16">                                <a target=""
							href="/search/0-0-1639?keyword=酷柏" isret="1"> <img
								src="https://img.yao123.cn/gw/14573341391828a2c91bf5277d46301534fe2392f0225.jpg" class="brandimg" alt="">
						</a>      
						</li>
						<li pos="17">                                  <a target=""
							href="/search?keyword=KKR" isret="1"> <img
								src="https://img.yao123.cn/gw/14570668423798a2c91bf5277d46301533ff3990d01ae.jpg" class="brandimg" alt="">
						</a>    
						</li>
						<li pos="18">                                    <a target=""
							href="/search?keyword=SAP" isret="1"> <img
								src="https://img.yao123.cn/gw/14491126186098a2c91bf5156631d015165d7c6740046.jpg" class="brandimg" alt="">
						</a>  
						</li>
					</ul>
				</div>
				<!--首页广告位-->
				
			</div>

			<div id="guess" class="guess" style="display: none;">
				<h2></h2>
				<div id="guessContent">
					<div class="loading"></div>
				</div>
			</div>
			<!--热门推荐广告位-->
			
			<!--热门推荐广告位end-->

			<div id="partners" class="partners">

				<div class="tab" style="display: none">
					<span tab-target="brand">品牌旗舰店</span> <span class="spacer"
						style="display: none"></span> <span tab-target="friendly"
						style="display: none">友情链接</span> <span tab-target="government"
						style="display: none">aaa</span>
				</div>
				<div class="items government">
					<div brand style="display: none">
						<div class="loading"></div>
					</div>
					<div friendly>
						<p class="fl govern_tit">友情链接：</p>
						<ul class="fl govern_cen">
							<li><a href="https://m.yao123.com" target="_blank">国药网上药店</a>
							</li> 							<li><a href="http://www.kzj365.com/ask/" target="_blank">健康问答</a>
							</li> 							<li><a href="http://yao.xywy.com/ " target="_blank">寻医问药药品网</a>
							</li> 							<li><a href="http://jb.999ask.com/" target="_blank">邻医网</a>
							</li> 							<li><a href="http://www.360bzl.com/ask/" target="_blank">宝芝林健康问答</a>
							</li> 							<li><a href="http://www.yaofangwang.com/yao/  " target="_blank">药品大全</a>
							</li> 							<li><a href="http://xinli.familydoctor.com.cn" target="_blank">心理健康</a>
							</li> 							<li><a href="http://fenlei.iask.sina.com.cn/sh/" target="_blank">上海生活服务</a>
							</li> 							<li><a href="http://wiki.smzdm.com/" target="_blank">商品指南</a>
							</li> 							<li><a href="http://www.12yao.com/baojian/" target="_blank">保健资讯</a>
							</li> 							<li><a href="http://www.xinli001.com/zx" target="_blank">心理咨询</a>
							</li> 							<li><a href="http://www.linktech.cn/newhome/" target="_blank">领克特</a>
							</li> 							<li><a href="http://www.ziyimall.com/zhishi/ " target="_blank">健康知识</a>
							</li> 							<li><a href="http://jbk.999ask.com" target="_blank">疾病库</a>
							</li> 							<li><a href="http://www.jiankang.com/waike/  " target="_blank">外科 </a>
							</li> 							<li><a href="http://www.baiyangwang.com/muying/ " target="_blank">母婴知识</a>
							</li> 							<li><a href="http://www.j1.com" target="_blank">药房网</a>
							</li> 							<li><a href="http://www.hzypk.com/" target="_blank">药品批发</a>
							</li> 							<li><a href="https://www.shuzibencao.com/" target="_blank">数字本草中药材批发</a>
							</li> 							<li><a href="http://www.shfft.com/" target="_blank">付费通</a>
							</li> 
						</ul>
					</div>
					<div government class="govern">
						<p class="fl govern_tit">政府机构：</p>
						<ul class="fl govern_cen">
							<li><a href="http://www.sda.gov.cn/WS01/CL0001/" target="_blank">国家食品药品监督管理局</a>
							</li> 							<li><a href="http://www.sasac.gov.cn/" target="_blank">国务院国有资产监督管理委员会</a>
							</li> 							<li><a href="http://www.sinopharmholding.com/" target="_blank">国药控股股份有限公司</a>
							</li> 
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="display:none" class="header_ed">
		 
	</div>
	<div style="display:none" class="headimg_ed">
		 
	</div>
	<!-- 尾页开始 -->
	<div class="footer">
	<img width="218" style="display:none;" alt="国药网,网上药店" src="https://www.yao123.com/static/image/logo/logo.png">
	<div class="slogen">
		<div class="w1200" style="width: 900px;">
			<ul style="slogen_li">
				<li>
					<i class="icon-honor"></i>
					权威荣誉
				</li>
				<li>
					<i class="icon-brand"></i>
					品牌授权
				</li>
				<li>
					<i class="icon-real"></i>
					正品保证
				</li>
				<li>
					<i class="icon-certification"></i>
					药监认证
				</li>
				<!--
				<li>
					<i class="icon-benefits"></i>
					满79包邮
				</li>
				-->
				<li>
					<i class="icon-easy"></i>
					退换无忧
				</li>
				<li>
					<i class="icon-privacy"></i>
					隐私包装
				</li>
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
				<a href="#">国药网</a>
			</div>
			<div class="help" style="width:600px;">
				<dl>
					<dt>新手入门</dt>
					<dd>
						<p><a href="/helpRegister">会员注册</a></p>
						<p><a href="/helpFindPsd">找回密码</a></p>
						<p><a href="/procedure">购物流程</a></p>
						<p><a href="/memberpoints">会员积分说明</a></p>
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
						<p><a href="/helpPayment">支付方式</a></p>
						<p><a href="/refundsInstructions">退款说明</a></p>
						<p><a href="/cardInstructions">优惠券说明</a></p>
						<p><a href="/activity/20171115/index.html">平安卡购物说明</a></p>
					</dd>
				</dl>
				<dl>
					<dt>配送服务</dt>
					<dd>
						<p><a href="/shipping">配送范围及费用</a></p>
						<p><a href="/distributionProgress">配送进度查询</a></p>
						<p><a href="/receipt">商品签收与验货</a></p>
					</dd>
				</dl>
			
				<dl>
					<dt>售后帮助</dt>
					<dd>
						<p><a href="/returnPolicy">退换货政策</a></p>
						<p><a href="/returnProcedure">退换货流程</a></p>
						<p><a href="/customerService">联系客服</a></p>
					</dd>
				</dl>
				<dl>
					<dt>国药网</dt>
					<dd>
						<p><a href="/about">关于我们</a></p>
						<p><a href="/certificate">资质证书</a></p>
						<p><a href="/helpcenter">意见反馈</a></p>
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
						<div><img src="/static/image/base/qrcode_wx.png" alt="国药网官方微信"/></div>
						<h5>国药网官方微信</h5>
						<!--<p>关注官方微信</p>
						<p>掌握最新健康产品信息</p>
						-->
					</li>
				</ul>
			</div>
		</div>
		<div class="authentication"></div>
		<div class="copyright">
			<p>
			    <a href="http://www.yao123.cn" target="_blank">关于国药网</a>
			     &nbsp;&nbsp;|&nbsp;&nbsp;
			    <a target="_blank" href="https://www.yao123.com/quality">质量信息</a> 
			    &nbsp;&nbsp;|&nbsp;&nbsp;
			    <a target="_blank" href="https://www.yao123.com/sitemap">网站地图</a>
			    &nbsp;&nbsp;|&nbsp;&nbsp;
			    <a target="_blank" href="https://www.yao123.com/productmap_1">商品地图</a>
			    &nbsp;&nbsp;|&nbsp;&nbsp;
			    <a href="/link">友情链接</a>
			    &nbsp;&nbsp;|&nbsp;&nbsp;
			    <a href="#">诚征英才</a>
			    &nbsp;&nbsp;|&nbsp;&nbsp;
			    <a href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank">沪ICP备16002394号-1</a> 
			    &nbsp;&nbsp;</p>
			<p>公司名称：国药堂大药房（上海）有限公司&nbsp;&nbsp;|&nbsp;&nbsp;公司地址：上海市闵行区合川路2679号虹桥商务广场B座3A楼303-305&nbsp;&nbsp;</p>
			<p>Copyright&nbsp;©&nbsp;2010-2015&nbsp;&nbsp;国药网版权所有<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1260208244'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1260208244%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
			&nbsp;&nbsp;&nbsp;&nbsp;客服电话：4001-151-161&nbsp;&nbsp;&nbsp;&nbsp;合作电话：021-60841111-3612
			</p>
		</div>
	</div>
	</div>
	<!-- 尾页结束 -->
	<script src="js/index/jquery.js"
		type="text/javascript"></script>
	<script src="js/index/jquery.color.js"
		type="text/javascript"></script>
	<script src="js/index/owl.carousel.min.js"
		type="text/javascript"></script>
	<script src="js/index/base.js"
		type="text/javascript"></script>
	<script src="js/index/index.js"
		type="text/javascript"></script>
	<!-- 百度统计代码 -->
	<script>
		var _hmt = _hmt || [];
	    (function() {
	        var hm = document.createElement("script");
	        hm.src = "https://hm.baidu.com/hm.js?ac1708c616050ecad730f332cfb07a81";
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
	
</body>
</html>