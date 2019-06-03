package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.java.pojo.Doctor;
import com.java.pojo.DoctorChange;

@Repository
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
     @Insert("insert into doctorchange(d_name,d_age,d_sex,d_tel,kb_id,d_money,d_zc,d_introduce,d_head,d_id,d_change,d_control,d_state,people_id) values (#{d_name},#{d_age},#{d_sex},#{d_tel},#{kb_id},#{d_money},#{d_zc},#{d_introduce},#{d_head},#{d_id},#{d_change},#{d_control},#{d_state},#{people_id})")
    int insert(Doctor doctor);
     
     
     
     
     
    //医生删除数据
    @Delete("delete from doctor where d_id = #{id}")
    int delete(int id);
    
    
    
    //@修改医生修改状态
    @Update("update `shop1`.`doctor` set`d_change`=1 where  d_id= #{id}")
    void updated_change(int id);

	//查询所有未认证的医师
	@Select("select * from doctorchange")
	public List<DoctorChange> selectwrz();
	
	//查询所有未认证的医师总数
	@Select("select count(0) from doctorchange")
	public int wrzNum();
	
	//根据id查对应医师
	@Select("select * from doctorchange where d_id=#{id}")
	public DoctorChange findonedoctor(int id);
	
	//根据id审核
	@Update("update doctor  set d_name = #{d_name},d_sex =#{d_sex},`d_age`=#{d_age},`d_introduce`=#{d_introduce},`kb_id`=#{kb_id},`d_zc`=#{d_zc},`d_money`=#{d_money},`d_tel`=#{d_tel},`d_head`=#{d_head},d_change=2 where `d_id` = #{d_id}")
	public int shenheyishi(DoctorChange doctorChange);
	
	//通过后删除
	@Delete("delete from doctorchange where d_id=#{id}")
	public int deleteshenhe(int id);
}
