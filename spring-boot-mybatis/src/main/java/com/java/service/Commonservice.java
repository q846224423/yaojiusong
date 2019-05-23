package com.java.service;

import org.apache.ibatis.annotations.Select;

import com.java.pojo.Admin;
import com.java.pojo.Doctor;
import com.java.pojo.DrugStore;
import com.java.pojo.People;

public interface Commonservice {
	
	public People FindPeople(String username,String pwd);
	

	public Admin getAdmin(int id);
	
	
	public Doctor getDoctor(int id);
	
	//如果people的role为3，调用该方法，返回admmin具体对象
	//@Select("select * from users where user_id= #{id}")
	//public User getUser(int id);

	public DrugStore getUser(int id);
	

}
