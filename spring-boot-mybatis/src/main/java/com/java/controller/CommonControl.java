package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonControl {
	
		//这里跳转到医生注册界面
		@RequestMapping("/doctrzc")
		public String  doctorzc() {
			

			return "doctorzc";	  
		}
		
		


}
