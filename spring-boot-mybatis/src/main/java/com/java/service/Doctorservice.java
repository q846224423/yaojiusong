package com.java.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

import com.java.pojo.Doctor;
import com.java.pojo.Doctor_big;

import com.java.pojo.Ks;
import com.java.pojo.Users_biger;

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
    
    public void d_change(int id);
    
    public List<Users_biger> userall(@Param("id")int id,@Param("id1")int id1);
    
    public Users_biger userone(int id);
    
    public void  insertrtul(String r_tel ,int id);
    
    public void d_isOpenDrug(int id);
    
    
	public void  updatexyzg(String d_tel ,int id);

	public void  changerzzt(int id);


}
