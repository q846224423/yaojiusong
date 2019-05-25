package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.java.pojo.Doctor;

public interface DrugstoreMapper {
    //门店查询所有
    @Select("select * from drugstore")
    List<Doctor> dsselectall();
    //门店查询单条
    @Select("select * from drugstore where yd_id=#{yd_id}")
    Doctor selectone(int id);
    //门店修改数据
    @Update("update `shop1`.`drugstore` set `yd_name` = #{yd_name},`county_id` = #{county_id},`comment` = #{comment},`regist_info` = #{regist_info},`yd_statu` = #{yd_statu},`people_id` = #{people_id} where `yd_id` = #{yd_id}")
    int update(Doctor doctor);
    //门店添加数据
    @Insert("insert into `shop1`.`drugstore` (`yd_name`,`county_id`,`comment`,`regist_info`,`yd_statu`,`people_id`) values(#{yd_name},#{county_id},#{comment},#{regist_info},#{yd_statu},#{people_id})")
    int insert(Doctor doctor);
    //门店删除数据
    @Delete("delete from drugstore where yd_id = #{yd_id}")
    int delete(int id);	
}
