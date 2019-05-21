package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.pojo.Student;
import com.java.service.StudentService;

@Controller
public class StudentController {
	@Autowired
	private StudentService ssi;

	// 查询所有，展示
	@RequestMapping("show")
	public String show(Model model) {
		model.addAttribute("list", ssi.selectAll());
		return "show";
	}

	// 跳转到修改页面
	@RequestMapping("toupdate")
	public String show(Model model, int id) {
		model.addAttribute("stu", ssi.selectOne(id));
		return "update";
	}

	// 修改
	@RequestMapping("update")
	public String show(Model model, Student stu) {
		ssi.update(stu);
		model.addAttribute("list", ssi.selectAll());
		return "show";
	}
}
