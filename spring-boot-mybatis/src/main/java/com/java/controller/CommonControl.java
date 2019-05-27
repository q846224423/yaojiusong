package com.java.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.pojo.Admin;
import com.java.pojo.Doctor;
import com.java.pojo.Doctor_big;
import com.java.pojo.DrugStore;
import com.java.pojo.Menu1;
import com.java.pojo.People;
import com.java.pojo.Users;
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
			return "admin";
		} else if (p.getRole() == 2) {
			Doctor_big doctor = big.selectone(p.getId());
			session.setAttribute("doctor", doctor);

			return "chen/index1";
		} else if (p.getRole() == 3) {
			Users user = cm.getUser(p.getId());
			List<Menu1> list1 = ssi.getAllMenu();
			session.setAttribute("list", list1);
			session.setAttribute("user", user);
			session.setAttribute("p",p);
			return "store/shouye";
		} else if (p.getRole() == 4) {
			DrugStore drugStore = cm.getDrugStore(p.getId());
			session.setAttribute("drugStore", drugStore);
			return "drugStore";
		} else {
			return "login";
		}
	}

	// 电话****方法
	public String phone(int d_tel) {

		String phone = String.valueOf(d_tel);
		String phoneNumber = phone.substring(0, 3) + "****" + phone.substring(7, phone.length());

		return phoneNumber;
	}

}
