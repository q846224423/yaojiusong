package com.java.controller;


import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.java.pojo.Doctor_big;
import com.java.pojo.DrugStore;
import com.java.pojo.Ks;
import com.java.pojo.User_big;
import com.java.pojo.ZhongJianWenZhen2;
import com.java.pojo.ZhongjianCalssYiShi;
import com.java.service.impl.KsServiceImpl;
import com.java.service.impl.YiShiServiceImpl;

@Controller
public class KsController {
	int ys_id;
	@Autowired
	KsServiceImpl ksi;
	@Autowired
	YiShiServiceImpl ysi;
	// 跳转选择科室界面
	@RequestMapping("keshi")
	public String selectKs(Model model) {
		List<Ks> ksList = ksi.KsList();
		model.addAttribute("keshi", ksList);
		return "zhuanjiakeshi2";
	}

	// 通过科室ID查询到所有医师返回所有医师界面
	@RequestMapping("yisheng")
	public String selectyishi(Model model, @RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum,int id) {
		PageHelper.startPage(pageNum, 6);
		
		List<ZhongjianCalssYiShi> shouAll = ysi.yishiShouAll(id);
		PageInfo<ZhongjianCalssYiShi> pageInfo = new PageInfo<ZhongjianCalssYiShi>(shouAll);
		model.addAttribute("pageInfo", pageInfo);
	
		model.addAttribute("id", id);
		return "yishi";
	}

	// 显示所有医师界面跳转过来带一个科室ID一个医师ID找到该医师的详细信息进入支付界面
	@RequestMapping("yishengone")
	public String selectOneYishi(Model model, Integer ks_id, Integer d_id, Integer pageNum
			,HttpSession session) {
		ZhongjianCalssYiShi yishiShouOne = ysi.yishiShouOne(ks_id, d_id);
		ys_id=yishiShouOne.getD_id();
		if (yishiShouOne.getD_state() == 0) {
			PageHelper.startPage(pageNum, 5);
			List<ZhongjianCalssYiShi> shouAll = ysi.yishiShouAll(ks_id);
			PageInfo<ZhongjianCalssYiShi> pageInfo = new PageInfo<ZhongjianCalssYiShi>(shouAll);
			model.addAttribute("pageInfo", pageInfo);
			return "yishi";
		} else {
			model.addAttribute("yishi", yishiShouOne);
			System.out.println(456);
			return "zhifu";
		}
	}
	
	 //点击支付进入支付宝支付
	@RequestMapping("zhifubao")
	public String zhifubao() {
		return "alipay/index";
	}
	//点击支付跳转支付页面
	@RequestMapping("zhifu")
	public String zhifu() {
		return "alipay/alipay.trade.page.pay";
	}
    //添加问诊记录
	@RequestMapping("wenzhen")
	public void wenzhen(HttpSession session) {
		/*int attribute = (int) session.getAttribute("yishengID");*/
		/*User_big attribute2 = (User_big)session.getAttribute("doctor");
		Integer user_id = attribute2.getUser_id();*/
		System.out.println(ys_id);
		int i = ysi.insertWenzhen(ys_id, 2);
		System.out.println(i);
	}
	//跳转问诊记录
	//@RequestMapping("wenzhen2")
	public String wenzhen2(Model model, @RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum) {
		PageHelper.startPage(pageNum, 5);
		List<ZhongJianWenZhen2> wzjl = ysi.wzjl();
		PageInfo<ZhongJianWenZhen2> pageInfo = new PageInfo<ZhongJianWenZhen2>(wzjl);
		model.addAttribute("pageInfo", pageInfo);
		
		return "wenzhenjilu";
	}
	//测试跳转
	@RequestMapping("qwe")
	public String asd() {
		return "sanjiliandong";
	}
	//通过曲得ID获取所有区得药店
	@ResponseBody
	@RequestMapping(value="yaodian" ,produces="application/json;charset=UTF-8")
	public List<DrugStore> showAllYaoDian(int cit) {
		return ysi.showAllYao(cit);
	}
	
	
/*	//测试跳转聊天
	@RequestMapping("rt")
	public String tiaozhuan() {
		return "yishiliaotian";
	}
	//测试跳转聊天
		@RequestMapping("rt2")
		public String tiaozhuan2() {
			return "yonghuliaotian";
		}*/
	@RequestMapping("zf2")
	public String zf() {
		return "wenzhenjilu";
	}
}
