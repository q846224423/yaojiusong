package com.java.controller;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.java.pojo.FjtArea;
import com.java.pojo.FjtCity;
import com.java.pojo.FjtProvince;
import com.java.pojo.Lookcart;
import com.java.pojo.Menu1;
import com.java.pojo.Menu3;
import com.java.pojo.People;
import com.java.pojo.Shopcart;
import com.java.pojo.User_big;
import com.java.pojo.Users;
import com.java.pojo.Users_copy;
import com.java.service.StoreService;

@Controller
public class StoreController {

	@Autowired
	private StoreService ssi;

	// 展示所有的左侧菜单
	@RequestMapping("show")
	public String showMenu(Model model, HttpSession session) {
		List<Menu1> list1 = ssi.getAllMenu();
		// 菜单列表
		User_big users = (User_big) (session.getAttribute("user"));
		if (users == null) {
			session.setAttribute("list", list1);
			return "store/shouye";
		}
		List<Lookcart> lookCart = ssi.lookCart(users.getUser_id());
		double allPrice = ssi.getAllPrice(lookCart);
		session.setAttribute("list", list1);
		session.setAttribute("Cartlist", lookCart);
		session.setAttribute("AllPrice", allPrice);
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
	public String showBy1id(int id, Model model) {
		List<Menu3> list = ssi.select3By1id(id);
		model.addAttribute("productlist", list);
		return "store/BrandByid";
	}

	// 跳转Brand显示详细的药品信息
	@RequestMapping("showByname")
	public String showByname(String name, Model model) {
		List<Menu3> list = ssi.select3ByName(name);
		model.addAttribute("productlist", list);
		return "store/BrandByName";
	}

	// 跳转用户个人信息
	@RequestMapping("userMessage")
	public String touserMessage(Model model) {
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
		String path = "c:/Users/Administrator/git/yaojiusongy/spring-boot-mybatis/src/main/resources/static/upload/IDcard/";
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
			System.out.println("小计" + valueOf);
			map.put("trade_num", trade_num);
			map.put("tip", "有货");
			map.put("doubleValue", valueOf);
		}
		return map;
	}

	// ajax动态显示buycar1
	@ResponseBody
	@RequestMapping(value = "updateCar", produces = "application/json;charset=UTF-8")
	public void updateCar(int car_id, int trade_num,HttpSession session) {
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
	//此时生成了订单并删除了购物车数据
	@RequestMapping("buycar3")
	public String buycar3() {
		
		return "store/BuyCar_Three";
	}

	// 跳转支付宝支付
	@RequestMapping("goPay")
	public String goPay(HttpSession session, Model model) {
		Object attribute = session.getAttribute("AllPrice");
		String money1 = String.valueOf(attribute);
		double parseDouble = Double.parseDouble(money1);
		model.addAttribute("money", parseDouble);
		return "store/indexx";
	}

}
