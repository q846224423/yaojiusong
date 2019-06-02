package com.java.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.java.pojo.Menu1;
import com.java.pojo.Menu2;
import com.java.pojo.Menu3;
import com.java.pojo.Shop_orderx;
import com.java.pojo.Shop_orderz;
import com.java.service.FjtDrugstoreService;
import com.java.service.StoreService;

@Controller
public class DrugStoreController {
	@Autowired
	private FjtDrugstoreService ds;
	
	@Autowired
	private StoreService ssi;

	//跳转药店后台iframe需要
	@RequestMapping("Store_info")
	public String Store_info() {
		return "drugstore/Store_info";
	}
	
	//跳转药店后台iframe需要
	@RequestMapping("public_left_store")
	public String public_left_store() {
		return "drugstore/public_left_store";
	}
	
	//跳转药店后台iframe需要 
	// 显示药店所有药品
	@RequestMapping("sp_guanli")
	public String sp_guanli(Model model,int yd_id) {
		List<Menu3> allmenu3 = ds.getAllmenu3(yd_id);
		List<Menu1> allmenu1 = ssi.selectA1();
		model.addAttribute("allmenu3",allmenu3);
		model.addAttribute("allmenu1",allmenu1);
		return "drugstore/sp_guanli";
	}
	
	//删除商品
	@RequestMapping("yddelSp")
	public String yddelSp(Model model,int menu3_id,int yd_id) {
		ds.delSp(menu3_id);
		List<Menu3> allmenu3 = ds.getAllmenu3(yd_id);
		model.addAttribute("allmenu3",allmenu3);
		return "drugstore/sp_guanli";
	}
	
	//select2By1id
	//通过一级查二级
	@ResponseBody
	@RequestMapping(value = "yd2By1id", produces = "application/json;charset=UTF-8")
	public List<Menu2> yd2By1id(int menu1_id) {
		return ssi.select2By1id(menu1_id);
	}
	
	//添加商品
	@RequestMapping("addSp")
	public String checkIdcard(MultipartFile file1, HttpServletRequest rq,Model model) throws IllegalStateException, IOException {
		// 获取IDcard文件夹所在的绝对路径
		String path = "c:/Users/Administrator/git/yaojiusongy/spring-boot-mybatis/src/main/resources/static/upload/sp/";
		String fileName = file1.getOriginalFilename();
		// 上传
		MultipartHttpServletRequest request = (MultipartHttpServletRequest) rq;
		file1.transferTo(new File(path + fileName));
		String id1 = request.getParameter("yd_id");
		int yd_id = Integer.parseInt(id1);      //
		String id2 = request.getParameter("menu2");
		int menu2_id = Integer.parseInt(id2);      //
		String ep_stock1 = request.getParameter("ep_stock");
		int ep_stock = Integer.parseInt(ep_stock1);   //
		String ep_price1 = request.getParameter("ep_price");
		double ep_price = Double.parseDouble(ep_price1); //
		
		String menu3_name = request.getParameter("menu3_name");
		String ep_size = request.getParameter("ep_size");
		String ep_description = request.getParameter("ep_description");
		String ep_url = "upload/sp/" + fileName;
		
		Menu3 menu3 = new Menu3();
		menu3.setMenu3_menu2_id(menu2_id);
		menu3.setYd_id(yd_id);
		menu3.setMenu3_name(menu3_name);
		menu3.setEp_price(ep_price);
		menu3.setEp_description(ep_description);
		menu3.setEp_size(ep_size);
		menu3.setEp_stock(ep_stock);
		menu3.setEp_url(ep_url);
		System.out.println(menu3.toString());
		ds.addSp(menu3);
		//更新
		List<Menu3> allmenu3 = ds.getAllmenu3(yd_id);
		List<Menu1> allmenu1 = ssi.selectA1();
		model.addAttribute("allmenu3",allmenu3);
		model.addAttribute("allmenu1",allmenu1);
		return "drugstore/sp_guanli";
	}
	// 旁边的搜素框
	@RequestMapping("ydByName")
	public String ydByName(String name, Model model,int yd_id) {
		List<Menu3> allmenu3 = ds.ydByName(name, yd_id);
		List<Menu1> allmenu1 = ssi.selectA1();
		model.addAttribute("allmenu3",allmenu3);
		model.addAttribute("allmenu1",allmenu1);
		return "drugstore/sp_guanli";
	}
	
	//修改前记住商品信息 
	@RequestMapping("remenberSp")
	public String remenberSp(int menu3_id, Model model,int yd_id) {
		Menu3 sp = ssi.select3By3id(menu3_id);
		
		
		List<Menu3> allmenu3 = ds.getAllmenu3(yd_id);
		List<Menu1> allmenu1 = ssi.selectA1();
		model.addAttribute("sp", sp);
		model.addAttribute("allmenu3",allmenu3);
		model.addAttribute("allmenu1",allmenu1);
		return "drugstore/sp_guanli";
	}
	
	//取消置顶 
	@RequestMapping("qxzd")
	public String qxzd(int menu3_id, Model model,int yd_id) {
		ds.qxzd(menu3_id);
		List<Menu3> allmenu3 = ds.getAllmenu3(yd_id);
		List<Menu1> allmenu1 = ssi.selectA1();
		model.addAttribute("allmenu3",allmenu3);
		model.addAttribute("allmenu1",allmenu1);
		return "drugstore/sp_guanli";
	}	
	//置顶 
	@RequestMapping("zdsp")
	public String zdsp(int menu3_id, Model model,int yd_id) {
		ds.zdsp(menu3_id);
		List<Menu3> allmenu3 = ds.getAllmenu3(yd_id);
		List<Menu1> allmenu1 = ssi.selectA1();
		model.addAttribute("allmenu3",allmenu3);
		model.addAttribute("allmenu1",allmenu1);
		return "drugstore/sp_guanli";
	}	
	
	//跳转药店后台iframe需要
	@RequestMapping("Flag_gl")
	public String Flag_gl() {
		return "drugstore/Flag_gl";
	}
	
	//跳转药店后台iframe需要
	@RequestMapping("TopShow_gl")
	public String TopShow_gl() {
		return "drugstore/TopShow_gl";
	}
	
	//跳转药店后台iframe需要, 非处方订单z
	@RequestMapping("Order_gl")
	public String Order_gl(int yd_id,Model model) {
		List<Shop_orderz> ydOrderz = ds.ydOrderz(yd_id);
		model.addAttribute("ydOrderz",ydOrderz);
		return "drugstore/Order_gl";
	}
	
	//跳转药店后台iframe需要, 非处方订单x
	@RequestMapping("Order_glx")
	public String Order_glx(int z_id,Model model) {
		List<Shop_orderx> ydOrderx = ds.ydOrderx(z_id);
		model.addAttribute("ydOrderx",ydOrderx);
		return "drugstore/Order_glx";
	}
	
	// 商家发货
	@RequestMapping("wyfh")
	public String qdsh(int yd_id, Model model,int z_id) {
		ds.wyfh(z_id);
		List<Shop_orderz> ydOrderz = ds.ydOrderz(yd_id);
		model.addAttribute("ydOrderz",ydOrderz);
		return "drugstore/Order_gl";
	}

	// 商家确定退款操作
	@RequestMapping("qdtk")
	public String wytk(int yd_id, Model model,int z_id) {
		ds.qdtk(z_id);
		List<Shop_orderz> ydOrderz = ds.ydOrderz(yd_id);
		model.addAttribute("ydOrderz",ydOrderz);
		return "drugstore/Order_gl";
	}
	
	
	//跳转药店后台iframe需要，处方
		@RequestMapping("Order_gl1")
		public String Order_gl1() {
			return "drugstore/Order_gl1";
		}
	
	//跳转药店后台iframe需要
	@RequestMapping("drugstore_manager")
	public String drugstore_manager() {
		
		return "drugstore/drugstore_manager";
	}
	
	
	
}
