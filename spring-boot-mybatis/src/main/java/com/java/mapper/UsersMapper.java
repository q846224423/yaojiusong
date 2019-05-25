package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.java.pojo.Users;

@Repository
public interface UsersMapper {
	
	//查询所有用户
	@Select("select * from users")
	public List<Users> selectAllUsers();
	//查询单个用户
	@Select("select * from users where user_id = {id}")
	public List<Users> selectOneUsers(int id);
	//增加用户
	@Insert("inser into users (user_name,user_age,user_sex,user_card,user_control,user_tel,user_address,user_countyid,people_id) values (#{user_name},#{user_age},#{user_sex},#{user_card},#{user_control},#{user_tel},#{user_address},#{user_countyid},#{people_id})")
	public int insertOneUsers(Users users);
	//删除用户
	@Delete("delete from users where user_id = {id}")
	public int deleteOneUsers(int id);
	//修改用户
	@Update("update users set user_name=#{user_name},user_age=#{user_age},user_sex=#{user_sex},user_card=#{user_card},user_control=#{user_control},user_tel=#{user_tel},user_address=#{user_address},user_countyid=#{user_countyid},people_id=#{people_id} where user_id = #{user_id}")
	public int updateUsers(Users users);
}
