package com.java.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.DoctorChangeMapper;
import com.java.pojo.Doctor;
import com.java.pojo.DoctorChange;
import com.java.service.DoctorChangeservice;
@Service
public class DoctorChangeImpl implements DoctorChangeservice {
@Autowired
private DoctorChangeMapper doctorChangeMapperge;


	
	public int insert(Doctor doctor) {
		
		return doctorChangeMapperge.insert(doctor);
	}



	@Override
	public void update(int id) {
		doctorChangeMapperge.update(id);		
	}

}
