package com.java.service;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.java.pojo.Doctor;
import com.java.pojo.Doctor_big;

import com.java.pojo.Ks;

public interface Doctorservice {

    //查询所有
    public List<Doctor> selectall();
    //查询单条
    public  Doctor_big selectone(int id);
    //修改数据
    public int update(Doctor doctor);
    //添加数据
    public int insert(Doctor doctor);
    //删除数据
    public int delete(int id);
    //查询所以科室
    List<Ks> selectallKs();
    
    //查询医生总条数
  	@Select("select count(0) from doctor")
  	public int AllDoctorNum();

}
