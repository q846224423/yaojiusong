package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.java.pojo.Doctor;
import com.java.pojo.DoctorChange;
import com.java.pojo.Doctor_big;
import com.java.pojo.Ks;
@Repository
public interface DoctorMapper {
    
	//医生查询所有
    @Select("select * from doctor")
    List<Doctor> selectall();
    //医生查询单条
    @Select("select * from shituone where people_id=#{id}")
    Doctor_big selectone(int id);
    //医生修改数据
    @Update("update `shop1`.`doctor` set`d_name` = #{d_name},`d_sex` = #{d_sex},`d_age` = #{d_age},`d_control` = #{d_control},`d_url` = #{d_url},`d_introduce` = #{d_introduce},`d_state` = #{d_state},`kb_id` = #{kb_id},`d_zc` = #{d_zc},`d_money` = #{d_money},`d_tel` = #{d_tel},`people_id` = #{people_id},`d_head` = #{d_head}, d_change=#{d_change}  where `d_id` = #{d_id}")
    int update(Doctor doctor);
    //医生添加数据
    @Insert("insert into `shop1`.`doctor` (`d_name`,`d_sex`,`d_age`,`d_control`,`d_url`,`d_introduce`,`d_state`,`kb_id`,`d_zc`,`d_money`,`d_tel`,`people_id`,`d_head`) values(#{d_name},#{d_sex},#{d_age},#{d_control},#{d_url},#{d_introduce}#{d_state},#{kb_id},#{d_zc},#{d_money},#{d_tel},#{people_id},#{d_head})")
    int insert(Doctor doctor);
    //医生删除数据
    @Delete("delete from doctor where d_id = #{id}")
    int delete(int id);
   
    //查询所有医生提交的修改
    @Select("select * from doctorchange")
    public DoctorChange selectAllDc();
    //查询单个医生提交的修改
    @Select("select * from doctorchange where d_id = #{id}")
    public DoctorChange selectOneDc(int id);
    //增加医生修改数据
    @Insert("insert into doctorchange values(#{d_name},#{d_age},#{d_sex},#{d_tel},#{d_kb_id},#{d_money},#{d_zc},#{d_introduce},#{d_head},#{d_id}),#{d_change}")
    public int insertDc(DoctorChange doctorChange);
    //删除医生修改数据
    @Delete("delete from doctorchange where dc_id = #{id}")
    public int deleteDc(int id);
    //修改医生删除数据
    @Update("update doctorchange set dc_name=#{dc_name},dc_age=#{dc_age},dc_sex=#{dc_sex},dc_tel=#{dc_tel},dc_kb_id=#{dc_kb_id},dc_money=#{dc_money},dc_zc=#{dc_zc},dc_introduce=#{dc_introduce},dc_head=#{dc_head},dc_id=#{dc_id}")
    public int updateDc(DoctorChange doctorChange);
    
	//查询医生总条数
	@Select("select count(0) from doctor")
	public int AllDoctorNum();
	
	@Select("select * from doctor left join kb on doctor.`kb_id`=kb.`kb_id` ")
	List<Doctor> selectAll01();
}
