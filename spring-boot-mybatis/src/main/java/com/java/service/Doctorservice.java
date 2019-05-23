package com.java.service;

import java.util.List;

import com.java.pojo.Doctor;

public interface Doctorservice {

    //查询所有
    public List<Doctor> selectall();
    //查询单条
    public Doctor selectone(int id);
    //修改数据
    public int update(Doctor doctor);
    //添加数据
    public int insert(Doctor doctor);
    //删除数据
    public int delete(int id);

}
