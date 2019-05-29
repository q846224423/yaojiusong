package com.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.java.pojo.Ks;
import com.java.pojo.ZhongjianCalssYiShi;
import com.java.service.impl.KsServiceImpl;
import com.java.service.impl.YiShiServiceImpl;

@Controller
public class KsController {
	// 跳转选择科室界面
	@Autowired
	KsServiceImpl ksi;
	@Autowired
	YiShiServiceImpl ysi;

	@RequestMapping("keshi")
	public String selectKs(Model model) {
		List<Ks> ksList = ksi.KsList();
		model.addAttribute("keshi", ksList);
		return "zhuanjiakeshi2";
	}

	// 通过科室ID查询到所有医师返回所有医师界面
	@RequestMapping("yisheng")
	public String selectyishi(Model model, @RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum) {
		int id = 5;
		PageHelper.startPage(pageNum, 5);
		List<ZhongjianCalssYiShi> shouAll = ysi.yishiShouAll(id);
		PageInfo<ZhongjianCalssYiShi> pageInfo = new PageInfo<ZhongjianCalssYiShi>(shouAll);
		model.addAttribute("pageInfo", pageInfo);
		return "yishi";
	}

	// 显示所有医师界面跳转过来带一个科室ID一个医师ID找到该医师的详细信息进入支付界面
	@RequestMapping("yishengone")
	public String selectOneYishi(Model model, int ks_id, int d_id, Integer pageNum) {
		ZhongjianCalssYiShi yishiShouOne = ysi.yishiShouOne(ks_id, d_id);
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
		return null;
	}

}
