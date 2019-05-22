package com.java.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.DoctorMapper;
import com.java.service.Doctorservice;
@Service
public class Doctorserviceimpl implements Doctorservice {
@Autowired
private DoctorMapper doctorMapper;
	
	public void selectdoctorall() {
		

	}

}
