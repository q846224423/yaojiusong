package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.java.pojo.Kb;
import com.java.pojo.Ks;

@Repository
public interface KbMapper {
	
    //通过科室的id查询科别
    @Select("select * from kb where ks_id=#{id}")
    List<Kb> selectkb(int id);
    //增加科别
  	@Insert("insert into kb(kb_name,ks_id) values (#{kb_name},#{ks_id})")
  	public int insertOneKb(Kb kb);
  	
  	//删除科别
  	@Delete("delete from kb where kb_id = #{id}")
  	int deletekb(int id);
  	

}
