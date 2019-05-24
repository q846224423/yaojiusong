package com.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.pojo.Menu1;
import com.java.service.StoreService;

@Controller
public class StoreController {

	@Autowired
	private StoreService ssi;
	@RequestMapping("show")
	public String showMenu(Model model) {
		List<Menu1> list1 = ssi.getAllMenu();
		model.addAttribute("list",list1);
		return "shouye";
	}
	
}
