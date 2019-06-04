package com.java.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.mapper.DrugstoreMapper;
import com.java.pojo.Admin;
import com.java.pojo.Doctor_big;
import com.java.pojo.DrugStore;
import com.java.pojo.Ks;
import com.java.pojo.Lookcart;
import com.java.pojo.Menu1;
import com.java.pojo.Menu3;
import com.java.pojo.People;
import com.java.pojo.User_big;
import com.java.service.Doctorservice;
import com.java.service.StoreService;
import com.java.service.impl.Commonserviceipml;

@Controller
public class CommonControl {
	@Autowired
	private Commonserviceipml cm;
	@Autowired
	private StoreService ssi;
	@Autowired
	private Doctorservice big;
	@Autowired
	private Doctorservice ks;
	
	@Autowired
	private DrugstoreMapper dsm;

	// 验证账号密码，跳转不同页面
	@RequestMapping("/Tojump")
	public String Tojump(String username, String pwd, Model model, HttpSession session) {
		// 通过账号密码找到people中对象
		People p = cm.FindPeople(username, pwd);
		// 如果找不到跳转首页
		if (p == null) {
			return "login";
		}

		// 判断角色，通过id确定具体的那个人
		if (p.getRole() == 1) {
			Admin admin = cm.getAdmin(p.getId());
			session.setAttribute("admin", admin);
			return "houtai/public_super_cg";
		} else if (p.getRole() == 2) {
			
			Doctor_big doctor = big.selectone(p.getId());
			List<Ks> Ks = ks.selectallKs();
			session.setAttribute("doctor",doctor);
			session.setAttribute("Ks",Ks);

			return "chen/index1";
		} else if (p.getRole() == 3) {
			User_big user = ssi.getUser(p.getId());
			//默认跳转1药店
			int yd_id = 1;
			List<Menu1> list1 = ssi.getAllMenu(yd_id);
			//查出左侧菜单，置顶商品，购物车，总价
			List<Menu3> selectZD = ssi.selectZD(yd_id);
			System.out.println("selectZD"+selectZD.toString());
			List<Lookcart> lookCart = ssi.lookCart(user.getUser_id());
			double allPrice = ssi.getAllPrice(lookCart);
			
			DrugStore drugStore = dsm.dsselectone(yd_id);
			String yd_name = drugStore.getYd_name();
			session.setAttribute("yd_name1", yd_name);
			
			session.setAttribute("yd_id", yd_id);
			session.setAttribute("list", list1);
			session.setAttribute("selectZD", selectZD);
			session.setAttribute("Cartlist", lookCart);
			session.setAttribute("AllPrice", allPrice);
			session.setAttribute("user", user);
			return "store/shouye";
		} else if (p.getRole() == 4) {
			DrugStore drugStore = cm.getDrugStore(p.getId());
			session.setAttribute("drugStore", drugStore);
			return "drugstore/drugstore_manager";
		} else {
			return "login";
		}
	}

	// 电话****方法
	public static String phone(int d_tel) {
		String phone = String.valueOf(d_tel);
		String phoneNumber = phone.substring(0, 3) + "****" + phone.substring(7, phone.length());
		return phoneNumber;
	}

}
