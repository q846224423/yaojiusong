package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class StudentController {
	@RequestMapping("/show")
	   public String add() {
		return "zhuanjiakeshi2";
		   
		  
	   }

}
