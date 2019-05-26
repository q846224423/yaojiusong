package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.service.Doctorservice;
import com.java.service.FjtDrugstoreService;

@Controller
public class DoctorController {
	
	@Autowired	
	private Doctorservice doctorservice;
	
	@RequestMapping("/show1")
	public String ShowDoctorAll(Model model) {
		model.addAttribute("fjt", doctorservice.selectall());
		return "houtai/super_cg1";
	}
}
