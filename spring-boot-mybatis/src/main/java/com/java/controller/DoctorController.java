package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class DoctorController {
//这里跳转到医生注册界面
@RequestMapping("/doctorzc")
public String  doctorzc() {
	

	return "loginb";	  
}

//这里跳转到医生个人信息界面
@RequestMapping("/doctoruser")
public String doctoruser(Model model) {
	
	
	
	
	
	return null;	
}



}
