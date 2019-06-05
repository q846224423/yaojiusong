package com.java.controller;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.java.mapper.DrugstoreMapper;
import com.java.mapper.UsersMapper;
import com.java.pojo.DrugStore;
import com.java.pojo.FjtArea;
import com.java.pojo.FjtCity;
import com.java.pojo.FjtProvince;
import com.java.pojo.Lookcart;
import com.java.pojo.Menu1;
import com.java.pojo.Menu3;
import com.java.pojo.People;
import com.java.pojo.Shop_orderx;
import com.java.pojo.Shop_orderz;
import com.java.pojo.Shopcart;
import com.java.pojo.User_big;
import com.java.pojo.Users;
import com.java.pojo.Users_copy;
import com.java.service.StoreService;

@Controller
public class StoreController {

	@Autowired
	private StoreService ssi;
	@Autowired
	private DrugstoreMapper dsm;
	
	@Autowired
	private UsersMapper um;

	// 展示所有的左侧菜单
	@RequestMapping("show")
	public String showMenu(Model model, HttpSession session) {
		int yd_id; //定义一个
		
		Object attribute = session.getAttribute("yd_id");
		if(attribute==null) {
			yd_id = 1;
		}else {
		yd_id = Integer.parseInt(attribute.toString());
		}
		
		List<Menu1> list1 = ssi.getAllMenu(yd_id);
		// 菜单列表
		User_big users = (User_big) (session.getAttribute("user"));
		if (users == null) {
			session.setAttribute("list", list1);
			return "store/shouye";
		}
		
		List<Menu3> selectZD = ssi.selectZD(yd_id);
		System.out.println("selectZD"+selectZD.toString());
		List<Lookcart> lookCart = ssi.lookCart(users.getUser_id());
		double allPrice = ssi.getAllPrice(lookCart);
		
		DrugStore drugStore = dsm.dsselectone(yd_id);
		String yd_name = drugStore.getYd_name();
		session.setAttribute("yd_name1", yd_name);
		
		session.setAttribute("list", list1);
		session.setAttribute("selectZD", selectZD);
		session.setAttribute("Cartlist", lookCart);
		session.setAttribute("AllPrice", allPrice);
		session.setAttribute("yd_id", yd_id);
		return "store/shouye";
	}

	// 跳转Product显示详细的药品信息
	@RequestMapping("Showinfo")
	public String Showinfo(int id, Model model) {
		Menu3 menu3 = ssi.select3By3id(id);
		model.addAttribute("menu3", menu3);
		return "store/Product";
	}

	// 跳转Brand显示详细的药品信息
	@RequestMapping("showBy1id")
	public String showBy1id(int id, Model model,HttpSession session) {
		Object attribute = session.getAttribute("yd_id");//session中的药店id
		int yd_id = Integer.parseInt(attribute.toString());//一种是直接登陆id为1
		List<Menu3> list = ssi.select3By1id(id,yd_id);//一种是选择改变session中id
		model.addAttribute("productlist", list);
		return "store/BrandByid";
	}

	// 跳转Brand显示详细的药品信息
	@RequestMapping("showByname")
	public String showByname(String name, Model model,HttpSession session) {
		Object attribute = session.getAttribute("yd_id");
		int yd_id = Integer.parseInt(attribute.toString());
		List<Menu3> list = ssi.select3ByName(name,yd_id);
		model.addAttribute("productlist", list);
		return "store/BrandByName";
	}

	// 跳转用户个人信息
	@RequestMapping("userMessage")
	public String touserMessage(Model model,HttpSession session) {
		User_big users = (User_big) (session.getAttribute("user"));
		User_big user = ssi.getUser(users.getPeople_id());
		System.out.println("peopleid" + users.getPeople_id());
		session.setAttribute("user", user);
		
		return "store/userMessage";
	}

	// 修改用户密码
	@RequestMapping("updatePwd")
	public String updatePwd(Model model, People p) {
		ssi.updatePwd(p);
		return "store/userMessage";
	}

	// 跳转修改信息页面
	@RequestMapping("toupdateMessage")
	public String toupdateMessage(Model model) {
		return "store/updateMessage";
	}

	// ajax中查省
	@ResponseBody
	@RequestMapping(value = "getProvince", produces = "application/json;charset=UTF-8")
	public List<FjtProvince> getProvince() {
		return ssi.getProvince();
	}

	// ajax中查市
	@ResponseBody
	@RequestMapping(value = "getCity", produces = "application/json;charset=UTF-8")
	public List<FjtCity> getCity(String provinceCode) {
		return ssi.getCity(provinceCode);
	}

	// ajax中查区
	@ResponseBody
	@RequestMapping(value = "getArea", produces = "application/json;charset=UTF-8")
	public List<FjtArea> getArea(String cityCode) {
		return ssi.getArea(cityCode);
	}

	// 修改用户信息
	@RequestMapping("updateUser")
	public String updateUser(Users users, HttpSession session) {
		ssi.updateUser(users);
		User_big user = ssi.getUser(users.getPeople_id());
		session.setAttribute("user", user);
		return "store/userMessage";
	}

	// 实名认证
	@RequestMapping("checkIdcard")
	public String checkIdcard(MultipartFile file, HttpServletRequest rq) throws IllegalStateException, IOException {
		// 获取IDcard文件夹所在的绝对路径
		String path = "D:/Git/ck/yaojiusong/spring-boot-mybatis/src/main/resources/static/upload/IDcard/";
		String fileName = file.getOriginalFilename();
		// 上传
		MultipartHttpServletRequest request = (MultipartHttpServletRequest) rq;
		file.transferTo(new File(path + fileName));
		String user_id1 = request.getParameter("user_id");
		int user_id = Integer.parseInt(user_id1);
		String user_name = request.getParameter("user_name");
		String user_card = request.getParameter("user_card");
		String user_url = "upload/IDcard/" + fileName;
		System.out.println(user_id + user_name + user_card + user_url);
		Users_copy uc = new Users_copy();
		uc.setUser_card(user_card);
		uc.setUser_id(user_id);
		uc.setUser_name(user_name);
		uc.setUser_url(user_url);
		// 审核，即向副表中加入待管理员审核
		ssi.checkIdcard(uc);
		// 改变状态审核中，即control为1
		ssi.change_control(user_id);
		User_big users = (User_big) (rq.getSession().getAttribute("user"));
		User_big user = ssi.getUser(users.getPeople_id());
		System.out.println("peopleid" + users.getPeople_id());
		rq.getSession().setAttribute("user", user);

		return "store/userMessage";
	}

	// ajax加入购物车后并更新
	@ResponseBody
	@RequestMapping(value = "addShopcart", produces = "application/json;charset=UTF-8")
	public void addShopcart(Shopcart cart, HttpSession session) {
		// 添加
		ssi.addshopcar(cart);
		// 查询显示
		List<Lookcart> lookCart = ssi.lookCart(cart.getUser_id());
		// 计算总价
		double allPrice = ssi.getAllPrice(lookCart);
		// 存入session
		session.setAttribute("Cartlist", lookCart);
		session.setAttribute("AllPrice", allPrice);
	}

	// 跳转buycar1页面
	@RequestMapping("buycar1")
	public String buycar1() {
		return "store/BuyCar";
	}

	// buycar1页面删除购物车某个商品
	@RequestMapping("delcarByid")
	public String delcarByid(int sssid, HttpSession session) {
		// 删除
		ssi.delcarByid(sssid);
		User_big users = (User_big) (session.getAttribute("user"));
		// 更新
		List<Lookcart> lookCart = ssi.lookCart(users.getUser_id());
		double allPrice = ssi.getAllPrice(lookCart);
		session.setAttribute("Cartlist", lookCart);
		session.setAttribute("AllPrice", allPrice);

		return "store/BuyCar";
	}

	// ajax动态显示buycar1
	@ResponseBody
	@RequestMapping(value = "changeXj", produces = "application/json;charset=UTF-8")
	public Map<String, Object> changeXj(int menu3_id, int trade_num) {
		// 查找指定药品
		Menu3 m = ssi.select3By3id(menu3_id);
		int stock = m.getEp_stock();
		double pri = m.getEp_price();
		Map<String, Object> map = new HashMap<String, Object>();

		// 如果大于库存
		if (trade_num > stock) {
			String tip = "最多可购买" + stock + "件";
			double xj = stock * pri;
			// 保留两位小数处理
			String valueOf = String.valueOf(xj);
			map.put("trade_num", stock);
			map.put("tip", tip);
			map.put("doubleValue", valueOf);
		} else {
			double xj = trade_num * pri;
			String valueOf = String.valueOf(xj);

			/*
			 * //保留两位小数处理 BigDecimal b = new BigDecimal(xj); double doubleValue =
			 * b.setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
			 */
			// System.out.println("小计" + valueOf);
			map.put("trade_num", trade_num);
			map.put("tip", "有货");
			map.put("doubleValue", valueOf);
		}
		return map;
	}

	// ajax动态显示buycar1
	@ResponseBody
	@RequestMapping(value = "updateCar", produces = "application/json;charset=UTF-8")
	public void updateCar(int car_id, int trade_num, HttpSession session) {
		ssi.updateCar(trade_num, car_id);
		User_big users = (User_big) (session.getAttribute("user"));
		// 更新
		List<Lookcart> lookCart = ssi.lookCart(users.getUser_id());
		double allPrice = ssi.getAllPrice(lookCart);
		session.setAttribute("Cartlist", lookCart);
		session.setAttribute("AllPrice", allPrice);

	}

	// 跳转buycar2页面
	@RequestMapping("buycar2")
	public String buycar2() {
		return "store/BuyCar_Two";
	}

	// 跳转buycar3页面,
	// 此时生成了订单并删除了购物车数据
	@RequestMapping("buycar3")
	@Transactional(rollbackFor = { Exception.class }) // 事务回滚
	public String buycar3(HttpSession session, HttpServletRequest request) {
		try {
			// 添加主单
			User_big users = (User_big) (session.getAttribute("user"));
			//添加到对应药店
/*			Object attribute = session.getAttribute("yd_id");
			Integer yd_id = Integer.valueOf(attribute.toString());*/
			int userid = users.getUser_id();
			
			//默认的yd_id=1,长江大药店,其实是一开始选择时，存入session中的
			int yd_id = 1;
			Object obj = session.getAttribute("AllPrice");
			double parseDouble = Double.parseDouble(obj.toString());
			System.out.println("sumprice" + parseDouble + "," + "userid" + userid);
			ssi.addshopZ(parseDouble,userid,yd_id);
			// 添加详单
			int zid = ssi.getMaxzid();// 祥表对应的主表id
			List<Lookcart> lookCart = ssi.lookCart(users.getUser_id());
			// 遍历购物车某一条，然后赋予zid，生成详单
			for (Lookcart cart : lookCart) {
				// 改变药品库存,若购买数量大于库存回滚
				Menu3 m = ssi.select3By3id(cart.getMenu3_id());
				if (cart.getTrade_num() > m.getEp_stock()) {
					throw new SQLException("发生异常了..");
				}
				ssi.changeStock(cart);

				cart.setZ_id(zid);
				ssi.addshopX(cart);
			}
			// 删除购物车
			ssi.DelShopcart(userid);

			// 遇到异常捕捉，跳转到错误页面，并可以回滚
		} catch (Exception e) {
			e.printStackTrace();
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();// 就是这一句了，加上之后，如果doDbStuff2()抛了异常,
																					// //doDbStuff1()是会回滚的
			request.setAttribute("wrong", "商品库存异常，请重新选择");
			return "store/BuyCar";
		}

		return "store/BuyCar_Three";
	}

	// 跳转支付宝支付1
	@RequestMapping("goPay")
	public String goPay(HttpSession session, Model model) {
		Object attribute = session.getAttribute("AllPrice");
		String money1 = String.valueOf(attribute);
		double parseDouble = Double.parseDouble(money1);
		model.addAttribute("money", parseDouble);
		return "store/indexx";
	}

	// 跳转支付宝支付2
	@RequestMapping("goPay2")
	public String goPay2() {

		return "store/alipay.trade.page.pay";
	}

	// 查看我的订单，主
	@RequestMapping("userOrderz")
	public String userOrderz(int user_id, Model model) {
		List<Shop_orderz> zlist = ssi.userOrderz(user_id);
		model.addAttribute("zlist", zlist);
		return "store/UserOrder";
	}

	// 查看我的订单，详
	@RequestMapping("userOrderx")
	public String userOrderx(int z_id, Model model) {
		List<Shop_orderx> xlist = ssi.userOrderx(z_id);
		model.addAttribute("xlist", xlist);
		return "store/UserOrderInfo";
	}

	// 改变主单中的订单状态之 确定收获
	@RequestMapping("qdsh")
	public String qdsh(int user_id, Model model,int z_id) {
		ssi.qdsh(z_id);
		List<Shop_orderz> zlist = ssi.userOrderz(user_id);
		model.addAttribute("zlist", zlist);
		return "store/UserOrder";
	}

	// 改变主单中的订单状态之 我要退款
	@RequestMapping("wytk")
	public String wytk(int user_id, Model model,int z_id) {
		ssi.wytq(z_id);
		List<Shop_orderz> zlist = ssi.userOrderz(user_id);
		model.addAttribute("zlist", zlist);
		return "store/UserOrder";
	}
	//wenzhenjilu
	// 用户订单的 问诊记录
	@RequestMapping("wenzhenjilu")
	public String wenzhenjilu(int user_id, Model model) {
		model.addAttribute("user_id", user_id);
		return "store/wenzhenjilu";
	}
	
	//首页的选择药店，改变session中yd_id
	//changeYd
	// ajax动态显示buycar1
		@ResponseBody
		@RequestMapping(value = "changeYd", produces = "application/json;charset=UTF-8")
		public String changeYd(int yd_id,HttpSession session ) {
			session.setAttribute("yd_id", yd_id);	
			DrugStore drugStore = dsm.dsselectone(yd_id);
			String yd_name = drugStore.getYd_name();
			session.setAttribute("yd_name1", yd_name);
			return yd_name;
		}
		
	//商城的用户注册
		@RequestMapping("userzc")
		public String regist() {
			
			return "store/userzc";
		}
	
		//商城的用户注册操作
		@RequestMapping("userzcc")
		public String userzc(People p) {
			People people = um.checkname(p.getUsername());
			//该用户名不存在，可添加
			if(people==null) {
				um.userzc1(p);//添加到people
				//获得该对象的people——id
		  People p1 = um.checkname(p.getUsername());	
		  System.out.println("peopleid"+p1.getId());
		  
				//添加带有people_id的记录，完成注册
				um.userzc2(p1.getId());	
				return "chen/loginb1";
			}else {
				return "store/userzc";
			}
			
		};
		
}
