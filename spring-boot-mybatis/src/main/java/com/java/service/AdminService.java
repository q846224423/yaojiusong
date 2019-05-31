package com.java.service;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.java.pojo.Doctor;
import com.java.pojo.Doctor_big;
import com.java.pojo.DrugStore;
import com.java.pojo.KbKsZhongjianlei;
import com.java.pojo.Ks;
import com.java.pojo.Users;
import com.java.pojo.ZhongjianCalssYiShi;

public interface AdminService {

	/*
	 * 所有医生管理方法接口
	 */

	// 查询所有医生
	public List<Doctor> selectAllDoctor();

	// 查询单个医生
	public Doctor_big selectOneDoctor(int id);

	// 修改一个医生
	public int updateDoctor(Doctor doctor);

	// 添加一个医生
	public int insertDoctor(Doctor doctor);

	// 删除一个医生
	public int deleteDoctor(int id);

	// 查询医生总条数
	public int AllDoctorNum();

	// 查所有医师
	public List<ZhongjianCalssYiShi> selectAll01();

	/*
	 * 所有药店管理方法接口
	 */

	// 查询所有药店
	public List<DrugStore> selectAllDrugStore();

	// 查询单个药店
	public DrugStore selectOneDrugStore(int id);

	// 修改一个药店
	public int updateDrugStore(DrugStore drugStore);

	// 添加一个药店
	public int insertDrugStore(DrugStore drugStore);

	// 删除一个药店
	public int deleteOneDrugStore(int id);

	/*
	 * 所有用户管理方法接口
	 */
	// 查询所有用户
	public List<Users> selectAllUsers();

	// 查询单个用户
	public Users selectOneUsers(int id);

	// 修改一个用户
	public int updateUsers(Users users);

	// 添加一个用户
	public int insertUsers(Users users);

	// 删除一个用户
	public int deleteOneUsers(int id);

	// 查询用户总数
	public int selectAllUsersNum();

	// 注销一个用户
	public int deleteP(int id);

	/*
	 * 所有科别科室的方法
	 * 
	 */
	// 查询所有科室
	public List<Ks> selectAllKs();

	// 查科室总条数
	public int ksAll();

	// 根据科室id查科别
	public List<KbKsZhongjianlei> selectAllkb(int id);

	// 科别总条数
	public int Allkbnum();

	// 增加科室
	public int insertOneKs(Ks ks);

	// 删除科室
	public int deleteOneKs(int id);

	// 修改科室
	public int updateOneKs(Ks ks);
}
