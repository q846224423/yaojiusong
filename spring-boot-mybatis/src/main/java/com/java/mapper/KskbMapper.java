package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.java.pojo.KbKsZhongjianlei;

public interface KskbMapper {
	//根据科室id查科别
	@Select("select * from kbks where ks_id=#{id}")
	List<KbKsZhongjianlei> selectAllkb(int id);
	//科别总条数
	@Select("select count(0) from kbks where ks_id=#{id} ")
	int Allkbnum();
}
