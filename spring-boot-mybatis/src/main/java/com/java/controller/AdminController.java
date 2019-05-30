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

	// iframe显示jsp代码      
	//总页面
	@RequestMapping("public_super_cg")
	public String public_super_cg() {
		return "houtai/public_super_cg";
	}

	// iframe显示jsp代码 
	//用户界面
	@RequestMapping("super_cg")
	public String super_cg() {
		return "houtai/super_cg";

	}

	// iframe显示jsp代码
	//左侧点击栏
	@RequestMapping("public_left_cg")
	public String AdminLeft() {
		return "houtai/public_left_cg";
	}

	// iframe显示jsp代码
	//
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

	// iframe显示jsp代码 不要动
	@RequestMapping("mendian_dtl")
	public String mendian_dtl() {
		return "houtai/mendian_dtl";
	}

	// iframe显示jsp代码 不要动
	@RequestMapping("mendian_Team")
	public String mendian_Team() {
		return "houtai/mendian_Team";
	}

	// iframe显示jsp代码 不要动
	@RequestMapping("mendian_guanli")
	public String mendian_guanli() {
		return "houtai/mendian_guanli";
	}

	// iframe显示jsp代码 不要动
	@RequestMapping("mendianzl_dtl")
	public String mendianzl_dtl() {
		return "houtai/mendianzl_dtl";
	}

	// iframe显示jsp代码 不要动
	@RequestMapping("mendianzl_Team")
	public String mendianzl_Team() {
		return "houtai/mendianzl_Team";
	}

	// iframe显示jsp代码 不要动
	@RequestMapping("xingyi_dtl")
	public String xingyi_dtl() {
		return "houtai/xingyi_dtl";
	}

	// iframe显示jsp代码 不要动
	@RequestMapping("xingyi_Team")
	public String xingyi_Team() {
		return "houtai/xingyi_Team";
	}

	// iframe显示jsp代码 不要动
	@RequestMapping("yishi_dtl")
	public String yishi_dtl() {
		return "houtai/yishi_dtl";
	}

	// iframe显示jsp代码 不要动
	@RequestMapping("yishi_guanli")
	public String yishi_guanli() {
		return "houtai/yishi_guanli";
	}

	// iframe显示jsp代码 不要动
	@RequestMapping("yishi_Team")
	public String yishi_Team() {
		return "houtai/yishi_Team";
	}

}
