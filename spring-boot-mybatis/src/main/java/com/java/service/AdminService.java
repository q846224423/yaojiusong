package com.java.service;

import java.util.List;

import com.java.pojo.Doctor;
import com.java.pojo.DrugStore;
import com.java.pojo.Users;

public interface AdminService {
	
	/*
	 * 所有医生管理方法接口
	 */
	
	//查询所有医生
    public List<Doctor> selectAllDoctor();
    //查询单个医生
    public Doctor selectOneDoctor(int id);
    //修改一个医生
    public int updateDoctor(Doctor doctor);
    //添加一个医生
    public int insertDoctor(Doctor doctor);
    //删除一个医生
    public int deleteDoctor(int id);
    
    
    /*
     * 所有药店管理方法接口
     */
    
    //查询所有药店
    public List<DrugStore> selectAllDrugStore();
    //查询单个药店
    public DrugStore selectOneDrugStore();
    //修改一个药店
    public int updateDrugStore(DrugStore drugStore);
    //添加一个药店
    public int insertDrugStore(DrugStore drugStore);
    //删除一个药店
    public int deleteOneDrugStore(int id);
    
    /*
     * 所有用户管理方法接口
     */
    //查询所有用户
    public List<Users> selectAllUsers();
    //查询单个用户
    public Users selectOneUsers();
    //修改一个用户
    public int updateUsers(Users users);
    //添加一个用户
    public int insertUsers(Users users);
    //删除一个用户
    public int deleteOneUsers(int id);
    
	
}
