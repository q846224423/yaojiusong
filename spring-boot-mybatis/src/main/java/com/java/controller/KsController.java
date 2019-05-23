package com.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.pojo.Ks;
import com.java.service.impl.KsServiceImpl;

@Controller
public class KsController {
	//跳转选择科室界面
	@Autowired
	KsServiceImpl ksi;
	@RequestMapping("keshi")
     public String selectKs(Model model) {
		List<Ks> ksList = ksi.KsList();
		for (int i = 0; i <ksList.size(); i++) {
			System.out.println(ksList.get(i).getKs_name());
		}
		model.addAttribute("keshi", ksList);
		return "zhuanjiakeshi2";
    	 
     }
}
