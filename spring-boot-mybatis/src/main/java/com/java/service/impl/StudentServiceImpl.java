package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.java.mapper.StudentMapper;
import com.java.pojo.Student;
import com.java.service.StudentService;
@Service
public class StudentServiceImpl implements StudentService {
    
	@Autowired
	private StudentMapper sm;
	
	public List<Student> selectAll() {
		// TODO Auto-generated method stub
		return sm.selectAll();
	}

	@Cacheable(value="users")
	public Student selectOne(int id) {
		// TODO Auto-generated method stub
		return sm.selectOne(id);
	}

	
	public void update(Student stu) {
		sm.update(stu);

	}

}
