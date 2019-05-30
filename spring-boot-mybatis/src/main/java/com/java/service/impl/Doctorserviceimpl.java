package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.DoctorMapper;
import com.java.mapper.KsMapper;
import com.java.pojo.Doctor;
import com.java.pojo.Doctor_big;
import com.java.pojo.Kb;
import com.java.pojo.Ks;
import com.java.service.Doctorservice;
@Service
public class Doctorserviceimpl implements Doctorservice {
@Autowired
private DoctorMapper doctorMapper;
@Autowired
private KsMapper ksMapper;


	@Override
	public List<Doctor> selectall() {
		
		return doctorMapper.selectall();
	}

	@Override
	public Doctor_big selectone(int id) {
		
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

	@Override
	public List<Ks> selectallKs() {
		
		return ksMapper.selectAllKs();
	}

	//查询医生总条数
	public int AllDoctorNum() {
		return doctorMapper.AllDoctorNum();
	}


}
