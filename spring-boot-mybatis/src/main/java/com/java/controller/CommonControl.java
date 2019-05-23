package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.pojo.Admin;
import com.java.pojo.Doctor;
import com.java.pojo.DrugStore;
import com.java.pojo.People;
import com.java.pojo.Users;
import com.java.service.impl.Commonserviceipml;

@Controller
public class CommonControl {
	@Autowired
	private Commonserviceipml cm;
	
		//验证账号密码，跳转不同页面
	@RequestMapping("/Tojump")
	public String Tojump(String username,String pwd,Model model) {
		//通过账号密码找到people中对象
		People p = cm.FindPeople(username, pwd);
		//如果找不到跳转首页
		if(p==null) {
			return "login";
		}
		
		//判断角色，通过id确定具体的那个人
		if(p.getRole()==1) {
			Admin admin = cm.getAdmin(p.getId());
			model.addAttribute("admin",admin);
			return "admin";
		}else if(p.getRole()==2) {
			Doctor doctor = cm.getDoctor(p.getId());
			
			model.addAttribute("doctor",doctor);
			return "index";
		}else if(p.getRole()==3) {
			Users user = cm.getUser(p.getId());
			model.addAttribute("user",user);
			return "user";
		}else if(p.getRole()==4) {
			DrugStore drugStore = cm.getDrugStore(p.getId());
			model.addAttribute("drugStore",drugStore);
			return "drugStore";
		}else {
			return "login";
		}
	}
	//iframe显示jsp代码
	@RequestMapping("public_left")
	public String public_left() {
		return "public_left";
		
	}
	//iframe显示jsp代码
	@RequestMapping("public_header")
	public String public_header() {
		return "public_header";
		
	}
	//iframe显示jsp代码
	@RequestMapping("doctoruser")
	public String doctorInfo() {
		return "doctoruser";
		
	}

	

}
