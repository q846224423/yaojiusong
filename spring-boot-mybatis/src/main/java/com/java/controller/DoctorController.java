package com.java.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.pojo.Doctor;
import com.java.pojo.Doctor_big;
import com.java.service.Doctorservice;

@Controller
public class DoctorController {
	@Autowired
	private Doctorservice big;
	
	// iframe显示jsp代码左 不要动
		@RequestMapping("public_left")
		public String public_left() {
			return "chen/public_left";

		}

		// iframe显示jsp代码头 不要动
		@RequestMapping("public_header")
		public String public_header() {
			return "chen/public_header";

		}

		// iframe显示jsp代码医生个人信息 不要动
		@RequestMapping("zixun_dtl")
		public String doctorInfo() {
			return "chen/zixun_dtl";

		}

		// iframe显示jsp代码 不要动
		@RequestMapping("change_psw")
		public String change_psw() {
			return "chen/change_psw";

		}

		// iframe显示jsp代码 不要动
		@RequestMapping("doctorrz")
		public String doctorrz() {
			return "chen/doctorrz";

		}

		// iframe显示jsp代码 不要动
		@RequestMapping("doctorwzjlu")
		public String doctorwzjlu() {
			return "chen/doctorwzjlu";

		}

		// iframe显示jsp代码 不要动
		@RequestMapping("doctorwzjlu1")
		public String doctorwzjlu1() {
			return "chen/doctorwzjlu1";

		}

		// iframe显示jsp代码 不要动
		@RequestMapping("loginb1")
		public String loginb1() {
			return "chen/loginb1";

		}

		// iframe显示jsp代码 不要动
		@RequestMapping("super_cg")
		public String AdminIndex() {
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
	
	
	//修改跳转
		@RequestMapping("updatesession")
		public String doctorupdate(HttpServletRequest request ,Doctor doctor) {
			Doctor_big p = (Doctor_big)request.getSession().getAttribute("doctor");
			big.update(doctor);
			Doctor_big doctor1 = big.selectone(p.getPeople_id());
			request.getSession().setAttribute("doctor", doctor1);
			return "chen/updatesession";

		}
		//去修改
		@RequestMapping("doctorupdate")
		public String doctortoupdate(){
			
			
			return  "chen/doctorupdate";
		}
	
}
