package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.java.pojo.Ks;
@Repository 
public interface KsMapper {
	
	//查询所有科室
	@Select("select * from ks")
	List<Ks> selectAllKs();
	//查询单个科室
	@Select("select * from ks where ks_id=#{id}")
	public Ks selectOneKs(int id);
	//增加科室
	@Insert("insert into ks(ks_name) values (#{ks_name})")
	public int insertOneKs(Ks ks);
	//删除科室
	@Delete("delete from ks where ks_id = #{id}")
	public int deleteOneKs(int id);
	//修改科室
	@Update("update ks set ks_name = #{ks_name}")
	public int updateOneKs(Ks ks);
	//查科室总条数
	@Select("select count(0) from ks")
	public int ksAll();

	 
}
