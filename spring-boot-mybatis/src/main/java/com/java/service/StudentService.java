package com.java.service;

import java.util.List;

import com.java.pojo.Student;

public interface StudentService {
	public List<Student> selectAll();
	public Student selectOne(int id);
	public void update(Student stu);
}
