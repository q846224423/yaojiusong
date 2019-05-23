package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.java.pojo.Doctor;
@Repository
public interface DoctorMapper {
    //医生查询所有
    @Select("select * from doctor")
    List<Doctor> selectall();
    //医生查询单条
    @Select("select * from doctor where id=#{id}")
    Doctor selectone(int id);
    //医生修改数据
    @Update("update doctor set age=#{age},name=#{name} where id=#{id}")
    int update(Doctor doctor);
    //医生添加数据
    @Insert("insert into doctor( `age`, `name`) values(#{age}, #{name})")
    int insert(Doctor doctor);
    //医生删除数据
    @Delete("delete from doctor where id = #{id}")
    int delete(int id);
}
