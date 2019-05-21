package com.java.mapper;

import java.util.List;

import com.java.pojo.Student;

public interface StudentMapper {
	
	public List<Student> selectAll();
	
	public Student selectOne(int id);
	
	public void update(Student stu);
}
