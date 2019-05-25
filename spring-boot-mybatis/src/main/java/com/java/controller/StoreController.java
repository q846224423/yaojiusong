package com.java.controller;

import java.util.List;

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
	//展示所有的左侧菜单
	@RequestMapping("show")
	public String showMenu(Model model) {
		List<Menu1> list1 = ssi.getAllMenu();
		model.addAttribute("list",list1);
		return "store/shouye";
	}
	
	//展示所有的左侧菜单
		@RequestMapping("Showinfo")
		public String Showinfo(int id,Model model) {
			Menu3 menu3 = ssi.select3By3id(id);
			model.addAttribute("menu3",menu3);
			return "store/Product";
		}
	
}
