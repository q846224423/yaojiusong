package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.service.KsService;

@Controller
public class Ceshi02 {
	@Autowired
	private KsService ks;
	
	@RequestMapping("/show2")
	public String ceshi2(Model model) {
		model.addAttribute("fj2",ks.KsList());
		return "ceshi2";
		
	}
}
