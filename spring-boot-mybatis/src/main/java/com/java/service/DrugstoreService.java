package com.java.service;

import java.util.List;

import com.java.pojo.Doctor;
import com.java.pojo.DrugStore;

public interface DrugstoreService {
	
	//门店查询所有
    public List<Doctor> dsselectall();
    
    //门店查询单条
    public Doctor dsselectone(int id);
    
    //门店修改数据
    public int dsupdate(DrugStore drugStore);
    
    //门店添加数据
    public int dsinsert(DrugStore drugStore);
    
    //门店删除数据
    public int dsdelete(int id);	
}
