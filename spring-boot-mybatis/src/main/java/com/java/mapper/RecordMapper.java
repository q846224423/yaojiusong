package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.java.pojo.Ks;
import com.java.pojo.Record;

@Repository
public interface RecordMapper {
		//查询所有问诊记录
		@Select("select * from record")
		List<Ks> KsList();
		//查询单个问诊记录
		@Select("select * from record where r_id=#{id}")
		public Ks selectOneKs(int id);
		//增加问诊记录
		@Insert("insert into record (d_id,isOpenDrug,isGetMedicine,u_id) values (#{d_id},#{isOpenDrug},#{isGetMedicine},#{u_id})")
		public int insertOneKs(Record record);
		//删除问诊记录
		@Delete("delete from record where r_id = #{id}")
		public int deleteOneKs(int id);
		//修改问诊记录
		@Update("update ks set (d_id = #{d_id},isOpenDrug = #{isOpenDrug},isGetMedicine = #{isGetMedicine},u_id = #{u_id}")
		public int updateOneKs(Record record);
}