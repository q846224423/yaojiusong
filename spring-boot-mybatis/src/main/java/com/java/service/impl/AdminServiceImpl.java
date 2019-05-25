package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.DoctorMapper;
import com.java.pojo.Doctor;
import com.java.pojo.DrugStore;
import com.java.pojo.Users;
import com.java.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private DoctorMapper doctorMapper;
	
	/*
	 * 所有医生操作
	 */
	
	//查询所有医生
	public List<Doctor> selectAllDoctor() {
		List<Doctor> selectall = doctorMapper.selectall();
		return selectall;
	}

	//查询单个医生
	public Doctor selectOneDoctor(int id) {
		Doctor selectone = doctorMapper.selectone(id);
		return selectone;
	}

	//修改一个医生
	public int updateDoctor(Doctor doctor) {
		int update = doctorMapper.update(doctor);
		return update;
	}

	//添加一个医生
	public int insertDoctor(Doctor doctor) {
		int insert = doctorMapper.insert(doctor);
		return insert;
	}

	//删除一个医生
	public int deleteDoctor(int id) {
		int delete = doctorMapper.delete(id);
		return delete;
	}
	
	/*
	 * 所有药店操作
	 */
	
	//查询所有药店
	public List<DrugStore> selectAllDrugStore() {
		// TODO Auto-generated method stub
		return null;
	}

	//查询单个药店
	public DrugStore selectOneDrugStore() {
		// TODO Auto-generated method stub
		return null;
	}

	//修改一个药店
	public int updateDrugStore(DrugStore drugStore) {
		// TODO Auto-generated method stub
		return 0;
	}

	//添加一个药店
	public int insertDrugStore(DrugStore drugStore) {
		// TODO Auto-generated method stub
		return 0;
	}

	//删除一个药店
	public int deleteOneDrugStore(int id) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	/*
	 * 所有用户操作
	 */
	
	//查询所有用户
	public List<Users> selectAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	//查询单个用户
	public Users selectOneUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	//修改一个用户
	public int updateUsers(Users users) {
		// TODO Auto-generated method stub
		return 0;
	}

	//添加一个用户
	public int insertUsers(Users users) {
		// TODO Auto-generated method stub
		return 0;
	}

	//删除一个用户
	public int deleteOneUsers(int id) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
