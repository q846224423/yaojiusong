package com.java.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.pojo.Menu1;
import com.java.pojo.Menu3;
import com.java.service.StoreService;

@Controller
public class StoreController {

	@Autowired
	private StoreService ssi;

	// 展示所有的左侧菜单
	@RequestMapping("show")
	public String showMenu(Model model) {
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
	

}
