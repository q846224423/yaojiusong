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
import com.java.pojo.Doctor;
import com.java.pojo.DoctorChange;
import com.java.pojo.DrugStore_copy;
import com.java.pojo.Kb;
import com.java.pojo.Pcad;
import com.java.pojo.KbKsZhongjianlei;
import com.java.pojo.Ks;
import com.java.pojo.Pca;
import com.java.pojo.Users;
import com.java.pojo.Users_copy;
import com.java.pojo.ZhongjianCalssYiShi;
import com.java.service.AdminService;
import com.java.service.Doctorservice;import net.sf.jsqlparser.util.AddAliasesVisitor;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	@Autowired

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
	
	//用户信息审核详情页面
	@RequestMapping("usersh")
	public String usersh(Model model,int id) {
		Users_copy selectOneUC = adminService.selectOneUC(id);
		model.addAttribute("selectOneUC",selectOneUC);
		return "houtai/usersh";
	}
	
	//通过实名
	@RequestMapping("tgsm")
	public String tgsm(Model model,@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum,int id) {
		adminService.updateTYSM(id);
		adminService.deleteUC(id);
		PageHelper.startPage(pageNum, 5);
		List<Users_copy> selectUC = adminService.selectUC();
		PageInfo<Users_copy> pageInfo = new PageInfo<Users_copy>(selectUC);
		model.addAttribute("selectAllUC",pageInfo);
		int selectAllUCNum = adminService.selectAllUCNum();
		model.addAttribute("NumAll", selectAllUCNum);
		return "houtai/userAll";
	}
	
	//未通过实名
	@RequestMapping("jjsm")
	public String jjsm(Model model,@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum,int id) {
		adminService.updateJJSM(id);
		adminService.deleteUC(id);
		PageHelper.startPage(pageNum, 5);
		List<Users_copy> selectUC = adminService.selectUC();
		PageInfo<Users_copy> pageInfo = new PageInfo<Users_copy>(selectUC);
		model.addAttribute("selectAllUC",pageInfo);
		int selectAllUCNum = adminService.selectAllUCNum();
		model.addAttribute("NumAll", selectAllUCNum);
		return "houtai/userAll";
	}
	
	//用户信息审核主页面
		@RequestMapping("userAll")
		public String userAll(Model model,@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum) {
			PageHelper.startPage(pageNum, 5);
			List<Users_copy> selectUC = adminService.selectUC();
			PageInfo<Users_copy> pageInfo = new PageInfo<Users_copy>(selectUC);
			model.addAttribute("selectAllUC",pageInfo);
			int selectAllUCNum = adminService.selectAllUCNum();
			model.addAttribute("NumAll", selectAllUCNum);
			return "houtai/userAll";
		}
	
	//删除一个用户
	@RequestMapping("deleteOneUser")
	public String deleteOneUser(Model model,@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum,Integer id,Integer pid) {
		int deleteOneUsers = adminService.deleteOneUsers(id);
		int deleteP = adminService.deleteP(pid);
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
	public String super_cg4(Model model,@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum) {
		PageHelper.startPage(pageNum,5);
		List<Ks> ks = adminService.selectAllKs();
		PageInfo<Ks> info = new PageInfo<Ks>(ks);
		model.addAttribute("ks",info);
		model.addAttribute("NumAll",adminService.ksAll());
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
	public String super_cg6(Model model,@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum,Integer id) {
		PageHelper.startPage(pageNum, 3);
		List<KbKsZhongjianlei> selectAllkb = adminService.selectAllkb(id);
		PageInfo<KbKsZhongjianlei> pageInfo = new PageInfo<KbKsZhongjianlei>(selectAllkb);
		model.addAttribute("selectAllkb",pageInfo);
		model.addAttribute("NumAll",adminService.Allkbnum(id));
		model.addAttribute("id",id);
		return "houtai/super_cg6";
	}

	//添加科室
	@RequestMapping("tianjiakeshi")
	public String insertks(Model model,Ks ks,@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum) {
		PageHelper.startPage(pageNum,5);
		adminService.insertOneKs(ks);
		List<Ks> kss = adminService.selectAllKs();
		PageInfo<Ks> info = new PageInfo<Ks>(kss);
		model.addAttribute("ks",info);
		model.addAttribute("NumAll",adminService.ksAll());
		return "houtai/super_cg4";
		
	}
	//添加科别
		@RequestMapping("tianjiakebie")
		public String insertOneKb(Model model,Kb kb,@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum) {
		adminService.insertOneKb(kb);
		PageHelper.startPage(pageNum,3);
		List<KbKsZhongjianlei> selectAllkb = adminService.selectAllkb(kb.getKs_id());
		PageInfo<KbKsZhongjianlei> pageInfo = new PageInfo<KbKsZhongjianlei>(selectAllkb);
		model.addAttribute("selectAllkb",pageInfo);
		model.addAttribute("NumAll",adminService.Allkbnum(kb.getKs_id()));
		return "houtai/super_cg6";	
	}
	
	//删除科室
	@RequestMapping("deleteks")
	public String deleteks(Model model,@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum,Integer id) {
		List<KbKsZhongjianlei> selectAllkb = adminService.selectAllkb(id);
		if(selectAllkb.size()==0) {
			adminService.deleteOneKs(id);
			PageHelper.startPage(pageNum, 5);
			List<Ks> ks = adminService.selectAllKs();
			PageInfo<Ks> info = new PageInfo<Ks>(ks);
			model.addAttribute("ks",info);
			model.addAttribute("NumAll",adminService.ksAll());
			return "houtai/super_cg4";
		}else {
			return "houtai/cuowu";
		}
	}
	// iframe显示jsp代码 不要动
	@RequestMapping("mendian_dtl")
	// 门店审核详情界面
	public String mendian_dtl(Model model,int id) {
		DrugStore_copy selectOneDC = adminService.selectOneDC(id);
		Integer county_id = selectOneDC.getCounty_id();
		Pca selectPCA = adminService.selectPCA(county_id);
		model.addAttribute("selectOneDS",selectOneDC);
		model.addAttribute("PCA",selectPCA);
		return "houtai/mendian_dtl";
	}
	
	//通过审核门店申请
	@RequestMapping("mendian_shenhe1")
	public String mendian_shenhe(Model model,@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum,int id) {
		DrugStore_copy selectOneDC = adminService.selectOneDC(id);
		String yd_statu = selectOneDC.getYd_statu();
		Integer yd_id = selectOneDC.getYd_id();
		if (yd_statu.equals("认证中")) {
			adminService.updateTYRZ(yd_id);
			adminService.deleteOneSQ(yd_id);
		}
		else {
			int updateOneStore = adminService.updateOneStore(selectOneDC);
			adminService.deleteOneSQ(yd_id);
		}
		PageHelper.startPage(pageNum, 5);
		List<DrugStore_copy> selectAllDs2 = adminService.selectAllDs2();
		PageInfo<DrugStore_copy> pageInfo = new PageInfo<DrugStore_copy>(selectAllDs2);
		model.addAttribute("selectAllDS",pageInfo);
		int selectAllStoreNum = adminService.SelectAllStoreNum2();
		model.addAttribute("NumAll", selectAllStoreNum);
		return "houtai/mendian_Team";
	}
	
	//未通过审核门店申请
	@RequestMapping("mendian_shenhe2")
	public String mendian_shenhe2(Model model,@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum,int id) {
		DrugStore_copy selectOneDC = adminService.selectOneDC(id);
		String yd_statu = selectOneDC.getYd_statu();
		Integer yd_id = selectOneDC.getYd_id();
		if (yd_statu.equals("认证中")) {
			adminService.updateJJRZ(yd_id);
			adminService.deleteOneSQ(yd_id);
		}
		else {
			adminService.deleteOneSQ(yd_id);
		}
		PageHelper.startPage(pageNum, 5);
		List<DrugStore_copy> selectAllDs2 = adminService.selectAllDs2();
		PageInfo<DrugStore_copy> pageInfo = new PageInfo<DrugStore_copy>(selectAllDs2);
		model.addAttribute("selectAllDS",pageInfo);
		int selectAllStoreNum = adminService.SelectAllStoreNum2();
		model.addAttribute("NumAll", selectAllStoreNum);
		return "houtai/mendian_Team";
	}

	// iframe显示jsp代码 不要动
	// 门店审核主界面
	@RequestMapping("mendian_Team")
	public String mendian_Team(Model model,@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum) {
		PageHelper.startPage(pageNum, 5);
		List<DrugStore_copy> selectAllDs2 = adminService.selectAllDs2();
		PageInfo<DrugStore_copy> pageInfo = new PageInfo<DrugStore_copy>(selectAllDs2);
		model.addAttribute("selectAllDS",pageInfo);
		int selectAllStoreNum = adminService.SelectAllStoreNum2();
		model.addAttribute("NumAll", selectAllStoreNum);
		return "houtai/mendian_Team";
	}

	// iframe显示jsp代码 不要动
	// 门店信息界面
	@RequestMapping("mendian_guanli")
	public String mendian_guanli(Model model,@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum) {
		PageHelper.startPage(pageNum, 5);
		List<Pcad> selectAllDs = adminService.selectAllDs();
		PageInfo<Pcad> pageInfo = new PageInfo<Pcad>(selectAllDs);
		model.addAttribute("selectAllDS",pageInfo);
		int selectAllStoreNum = adminService.SelectAllStoreNum();
		model.addAttribute("NumAll", selectAllStoreNum);
		return "houtai/mendian_guanli";
	}
	
	//删除一个门店
		@RequestMapping("deleteOneDs")
		public String deleteOneDs(Model model,@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum,Integer id,Integer pid) {
			int deleteOneDrugStore = adminService.deleteOneDrugStore(id);
			int deleteP = adminService.deleteP(pid);
			PageHelper.startPage(pageNum, 5);
			List<Pcad> selectAllDs = adminService.selectAllDs();
			PageInfo<Pcad> pageInfo = new PageInfo<Pcad>(selectAllDs);
			model.addAttribute("selectAllDS",pageInfo);
			int selectAllStoreNum = adminService.SelectAllStoreNum();
			model.addAttribute("NumAll", selectAllStoreNum);
			return "houtai/mendian_guanli";
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
	public String yishi_dtl(Model model,Integer id) {
		model.addAttribute("findonedoctor",adminService.findonedoctor(id));
		return "houtai/yishi_dtl";
	}

	// iframe显示jsp代码 不要动
	// 医师信息主界面
	@RequestMapping("yishi_guanli")
	public String yishi_guanli(Model model,@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum) {
		PageHelper.startPage(pageNum,5);
		 List<ZhongjianCalssYiShi> selectAll01 = adminService.selectAll01();
		PageInfo<ZhongjianCalssYiShi> pageInfo = new PageInfo<ZhongjianCalssYiShi>(selectAll01);
		model.addAttribute("selectAllDoctor",pageInfo);
		int allDoctorNum = adminService.AllDoctorNum();
		model.addAttribute("allDoctorNum",allDoctorNum);
		return "houtai/yishi_guanli";
	}
	
	// iframe显示jsp代码 不要动
	// 医师信息审核界面
	@RequestMapping("yishi_Team")
	public String yishi_Team(Model model,@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum) {
		PageHelper.startPage(pageNum, 5);
		List<DoctorChange> selectwrz = adminService.selectwrz();
		PageInfo<DoctorChange> pageInfo = new PageInfo<DoctorChange>(selectwrz);
		model.addAttribute("pageInfo",pageInfo);
		model.addAttribute("num",adminService.wrzNum());
		return "houtai/yishi_Team";
	}
	
	//审核修改
	@RequestMapping("shenheyishi")
	public String shenheyishi(Model model,@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum,Integer id) {
		adminService.shenheyishi(id);
		PageHelper.startPage(pageNum,5);
		List<ZhongjianCalssYiShi> selectAll01 = adminService.selectAll01();
		PageInfo<ZhongjianCalssYiShi> pageInfo = new PageInfo<ZhongjianCalssYiShi>(selectAll01);
		model.addAttribute("selectAllDoctor",pageInfo);
		int allDoctorNum = adminService.AllDoctorNum();
		model.addAttribute("allDoctorNum",allDoctorNum);
		return "houtai/yishi_guanli";
	}
}
