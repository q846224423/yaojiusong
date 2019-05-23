package com.java.mapper;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.java.pojo.Admin;
import com.java.pojo.Doctor;
import com.java.pojo.DrugStore;
import com.java.pojo.People;
import com.java.pojo.Users;
@Repository
public interface CommonMapper {

	//通过账号密码找到people的对象
	@Select("select * from people where username=#{0} and pwd=#{1}")
	public People FindPeople(String username,String pwd);
	
	//如果people的role为1，调用该方法，返回admmin具体对象
	@Select("select * from admin where a_id= #{id}")
	public Admin getAdmin(int id);
	
	//如果people的role为2，调用该方法，返回admmin具体对象
	@Select("select * from doctor where d_id= #{id}")
	public Doctor getDoctor(int id);
	
	//如果people的role为3，调用该方法，返回admmin具体对象
	@Select("select * from users where user_id= #{id}")
	public Users getUser(int id);
	
	//如果people的role为4，调用该方法，返回admmin具体对象
	@Select("select * from drugstore where yd_id= #{id}")
	public DrugStore getDrugStore(int id);
	
}
