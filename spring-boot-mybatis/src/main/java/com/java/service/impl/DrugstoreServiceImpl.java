package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.DrugstoreMapper;
import com.java.pojo.Doctor;
import com.java.pojo.DrugStore;
import com.java.service.DrugstoreService;

@Service
public class DrugstoreServiceImpl implements DrugstoreService {
	@Autowired
	private DrugstoreMapper drugstoreMapper;

	//门店查询所有
	public List<DrugStore> dsselectall() {
		return drugstoreMapper.dsselectall();
	}

	//门店查询单条
	public DrugStore dsselectone(int id) {
		return drugstoreMapper.dsselectone(id);
	}

	//门店修改数据
	public int dsupdate(DrugStore drugStore) {
		return drugstoreMapper.dsupdate(drugStore);
	}

	//门店添加数据
	public int dsinsert(DrugStore drugStore) {
		return drugstoreMapper.dsinsert(drugStore);
	}

	//门店删除数据
	public int dsdelete(int id) {
		return drugstoreMapper.dsdelete(id);
	}
	
	
}
