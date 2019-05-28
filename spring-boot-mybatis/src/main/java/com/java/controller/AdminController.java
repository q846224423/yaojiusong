package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.service.Doctorservice;

@Controller
public class AdminController {

	@Autowired
	private Doctorservice doctorservice;

	// iframe显示jsp代码 不要动
	@RequestMapping("public_super_cg")
	public String public_super_cg() {
		return "houtai/public_super_cg";
	}

	// iframe显示jsp代码 不要动
	@RequestMapping("super_cg")
	public String super_cg() {
		return "houtai/super_cg";

	}

	// iframe显示jsp代码 不要动
	@RequestMapping("public_left_cg")
	public String AdminLeft() {
		return "houtai/public_left_cg";
	}

	// iframe显示jsp代码 不要动
	@RequestMapping("super_cg1")
	public String super_cg1() {
		return "houtai/super_cg1";
	}

	// iframe显示jsp代码 不要动
	@RequestMapping("super_cg2")
	public String super_cg2() {
		return "houtai/super_cg2";
	}

	// iframe显示jsp代码 不要动
	@RequestMapping("super_cg3")
	public String super_cg3() {
		return "houtai/super_cg3";
	}

	// iframe显示jsp代码 不要动
	@RequestMapping("super_cg4")
	public String super_cg4() {
		return "houtai/super_cg4";
	}

	// iframe显示jsp代码 不要动
	@RequestMapping("super_cg5")
	public String super_cg5() {
		return "houtai/super_cg5";
	}
	
}
