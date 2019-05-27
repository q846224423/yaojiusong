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
