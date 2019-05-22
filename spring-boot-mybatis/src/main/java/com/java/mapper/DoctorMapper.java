package com.java.mapper;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
@Repository
public interface DoctorMapper {
	//查询账号密码
	@Select("select * from people")
	public void selectdoctorall();
	

}
