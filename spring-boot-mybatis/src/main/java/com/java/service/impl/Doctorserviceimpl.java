package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.DoctorMapper;
import com.java.pojo.Doctor;
import com.java.service.Doctorservice;
@Service
public class Doctorserviceimpl implements Doctorservice {
@Autowired
private DoctorMapper doctorMapper;
	


	@Override
	public List<Doctor> selectall() {
		
		return doctorMapper.selectall();
	}

	@Override
	public Doctor selectone(int id) {
		
		return doctorMapper.selectone(id);
	}

	@Override
	public int update(Doctor doctor) {
	
		return doctorMapper.update(doctor);
	}

	@Override
	public int insert(Doctor doctor) {
		
		return doctorMapper.insert(doctor);
	}

	@Override
	public int delete(int id) {
		
		return doctorMapper.delete(id);
	}

}
