package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.java.pojo.Ks;
@Repository
public interface KeshifenleiMapper {
	@Select("select * from ks")
	//查询所有科室
	List<Ks> KsList();
}
