package com.java.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.CommonMapper;
import com.java.pojo.Admin;
import com.java.pojo.Doctor;
import com.java.pojo.DrugStore;
import com.java.pojo.People;
import com.java.service.Commonservice;
@Service
public class Commonserviceipml implements Commonservice {
	@Autowired
	private CommonMapper commonMapper;
	
	

	public People FindPeople(String username, String pwd) {
		
		return commonMapper.FindPeople(username, pwd);
	}

	public Admin getAdmin(int id) {
		return commonMapper.getAdmin(id);
	}
    //医生
	public Doctor getDoctor(int id) {
		return commonMapper.getDoctor(id);
	}

	public DrugStore getUser(int id) {
		return commonMapper.getUser(id);
	}

}
