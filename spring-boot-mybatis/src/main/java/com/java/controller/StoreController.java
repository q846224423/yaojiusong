package com.java.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

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
import com.java.pojo.Menu1;
import com.java.pojo.Menu3;
import com.java.pojo.People;
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
		session.setAttribute("list", list1);
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
		System.out.println(list.toString());
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
	@RequestMapping(value="getProvince" ,produces="application/json;charset=UTF-8")
	public List<FjtProvince> getProvince() {
		return ssi.getProvince();
	}

	// ajax中查市
	@ResponseBody
	@RequestMapping(value="getCity" ,produces="application/json;charset=UTF-8")
	public List<FjtCity> getCity(String provinceCode) {
		return ssi.getCity(provinceCode);
	}

	// ajax中查区
	@ResponseBody
	@RequestMapping(value="getArea" ,produces="application/json;charset=UTF-8")
	public List<FjtArea> getArea(String cityCode) {
		return ssi.getArea(cityCode);
	}
	
	// 修改用户信息
	@RequestMapping("updateUser")
	public String updateUser(Users users,HttpSession session) {
		ssi.updateUser(users);
		User_big user = ssi.getUser(users.getPeople_id());
		session.setAttribute("user", user);
		return "store/userMessage";
	}
	
	// 实名认证
		@RequestMapping("checkIdcard")
		public String checkIdcard(MultipartFile file,HttpServletRequest rq) throws IllegalStateException, IOException {
			//获取IDcard文件夹所在的绝对路径
			String path="c:/Users/Administrator/git/yaojiusongy/spring-boot-mybatis/src/main/resources/static/upload/IDcard";
			String fileName = file.getOriginalFilename();
			//上传
			MultipartHttpServletRequest request = (MultipartHttpServletRequest)rq;
			file.transferTo(new File(path+fileName));
			String user_id1 = request.getParameter("user_id");
			int user_id = Integer.parseInt(user_id1);
			String user_name = request.getParameter("user_name");
			String user_card = request.getParameter("user_card");
			String user_url = "upload/IDcard/"+fileName;
			System.out.println(user_id+user_name+user_card+user_url);
			Users_copy uc = new Users_copy();
			uc.setUser_card(user_card);
			uc.setUser_id(user_id);
			uc.setUser_name(user_name);
			uc.setUser_url(user_url);
			//审核，即向副表中加入待管理员审核
		    ssi.checkIdcard(uc);
		    //改变状态审核中，即control为1
		    ssi.change_control(user_id);
		    User_big users = (User_big)(rq.getSession().getAttribute("user"));
		    User_big user = ssi.getUser(users.getPeople_id());
		    System.out.println("peopleid"+users.getPeople_id());
			rq.getSession().setAttribute("user", user);
			
			return "store/userMessage";
		}
	
	
	
}
