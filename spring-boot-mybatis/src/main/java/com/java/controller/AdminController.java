package com.java.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.java.pojo.Users;
import com.java.pojo.ZhongjianCalssYiShi;
import com.java.service.AdminService;
import com.java.service.Doctorservice;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

	// iframe显示jsp代码
	// 总页面
	@RequestMapping("public_super_cg")
	public String public_super_cg() {
		return "houtai/public_super_cg";
	}

	// iframe显示jsp代码
	// 用户界面
	@RequestMapping("super_cg")
	public String super_cg(Model model,@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum) {
		PageHelper.startPage(pageNum, 5);
		List<Users> selectAllUsers = adminService.selectAllUsers();
		PageInfo<Users> pageInfo = new PageInfo<Users>(selectAllUsers);
		model.addAttribute("selectAllUsers",pageInfo);
		int selectAllUsersNum = adminService.selectAllUsersNum();
		model.addAttribute("NumAll", selectAllUsersNum);
		return "houtai/super_cg";

	}

	// iframe显示jsp代码
	// 左侧点击栏
	@RequestMapping("public_left_cg")
	public String AdminLeft() {
		return "houtai/public_left_cg";
	}

	// iframe显示jsp代码
	// 订单管理
	@RequestMapping("super_cg3")
	public String super_cg3() {
		return "houtai/super_cg3";
	}

	// iframe显示jsp代码 不要动
	// 科别科室管理
	@RequestMapping("super_cg4")
	public String super_cg4() {
		return "houtai/super_cg4";
	}

	// iframe显示jsp代码 不要动
	// 处方管理
	@RequestMapping("super_cg5")
	public String super_cg5() {
		return "houtai/super_cg5";
	}

	// iframe显示jsp代码 不要动
	// 科别详情页面
	@RequestMapping("super_cg6")
	public String super_cg6() {
		return "houtai/super_cg6";
	}

	// iframe显示jsp代码 不要动
	//
	@RequestMapping("mendian_dtl")
	// 门店审核详情界面
	public String mendian_dtl() {
		return "houtai/mendian_dtl";
	}

	// iframe显示jsp代码 不要动
	// 门店审核主界面
	@RequestMapping("mendian_Team")
	public String mendian_Team() {
		return "houtai/mendian_Team";
	}

	// iframe显示jsp代码 不要动
	// 门店信息界面
	@RequestMapping("mendian_guanli")
	public String mendian_guanli() {
		return "houtai/mendian_guanli";
	}

	// iframe显示jsp代码 不要动
	// 门店资格详情页面
	@RequestMapping("mendianzl_dtl")
	public String mendianzl_dtl() {
		return "houtai/mendianzl_dtl";
	}

	// iframe显示jsp代码 不要动
	// 门店资格主页面
	@RequestMapping("mendianzl_Team")
	public String mendianzl_Team() {
		return "houtai/mendianzl_Team";
	}

	// iframe显示jsp代码 不要动
	// 医师行医资格详情页面
	@RequestMapping("xingyi_dtl")
	public String xingyi_dtl() {
		return "houtai/xingyi_dtl";
	}

	// iframe显示jsp代码 不要动
	// 医师行医资格主界面
	@RequestMapping("xingyi_Team")
	public String xingyi_Team() {
		return "houtai/xingyi_Team";
	}

	// iframe显示jsp代码 不要动
	// 医师信息审核详情页面
	@RequestMapping("yishi_dtl")
	public String yishi_dtl() {
		return "houtai/yishi_dtl";
	}

	// iframe显示jsp代码 不要动
	// 医师信息主界面
	@RequestMapping("yishi_guanli")
	public String yishi_guanli() {
		return "houtai/yishi_guanli";
	}

	// iframe显示jsp代码 不要动
	// 医师信息审核
	@RequestMapping("yishi_Team")
	public String yishi_Team() {
		return "houtai/yishi_Team";
	}

}
