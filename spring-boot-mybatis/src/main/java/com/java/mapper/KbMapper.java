package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.java.pojo.Kb;

@Repository
public interface KbMapper {
	
    //通过科室的id查询科别
    @Select("select * from kb where ks_id=#{id}")
    List<Kb> selectkb(int id);
}
