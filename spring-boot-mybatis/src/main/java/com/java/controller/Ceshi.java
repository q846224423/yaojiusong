package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.service.DrugstoreService;
@Controller
public class Ceshi {
	
	@Autowired	
	private DrugstoreService drugstoreService;
	
	@RequestMapping("/fjshow")
	public String ceshi(Model model) {
		model.addAttribute("fj",drugstoreService.dsselectall());
		return "ceshi";
	}
	
}
