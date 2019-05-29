package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.java.pojo.Doctor;
import com.java.pojo.DoctorChange;


public interface DoctorChangeMapper {
	
	
	//医生查询所有
    @Select("select * from DoctorChange")
    List<DoctorChange> selectall();
    //医生查询单条
    @Select("select * from shituone where people_id=#{id}")
    DoctorChange selectone(int id);
    //医生修改数据
    @Update("update `shop1`.`doctor` set`d_name` = #{d_name},`d_sex` = #{d_sex},`d_age` = #{d_age},`d_control` = #{d_control},`d_url` = #{d_url},`d_introduce` = #{d_introduce},`d_state` = #{d_state},`kb_id` = #{kb_id},`d_zc` = #{d_zc},`d_money` = #{d_money},`d_tel` = #{d_tel},`people_id` = #{people_id},`d_head` = #{d_head} where `d_id` = #{d_id}")
    int update(DoctorChange doctorChange);
    //医生添加数据
    @Insert("insert into `shop1`.`DoctorChange` (`d_name`,`d_sex`,`d_age`,`d_control`,`d_url`,`d_introduce`,`d_state`,`kb_id`,`d_zc`,`d_money`,`d_tel`,`people_id`,`d_head`) values(#{d_name},#{d_sex},#{d_age},#{d_control},#{d_url},#{d_introduce}#{d_state},#{kb_id},#{d_zc},#{d_money},#{d_tel},#{people_id},#{d_head})")
    int insert(DoctorChange doctorChange);
    //医生删除数据
    @Delete("delete from doctor where d_id = #{id}")
    int delete(int id);

}
