package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.DrugstoreMapper;
import com.java.pojo.DrugStore;
import com.java.pojo.DrugStore_copy;
import com.java.pojo.Menu3;
import com.java.pojo.Shop_orderx;
import com.java.pojo.Shop_orderz;
import com.java.pojo.Users_biger;
import com.java.service.FjtDrugstoreService;

@Service
public class DrugstoreServiceImpl implements FjtDrugstoreService {
	@Autowired
	private DrugstoreMapper dm;

	//门店查询所有
	public List<DrugStore> dsselectall() {
		return dm.dsselectall();
	}

	//门店查询单条
	public DrugStore dsselectone(int id) {
		return dm.dsselectone(id);
	}

	//门店修改数据
	public int dsupdate(DrugStore drugStore) {
		return dm.dsupdate(drugStore);
	}

	//门店添加数据
	public int dsinsert(DrugStore drugStore) {
		return dm.dsinsert(drugStore);
	}

	//门店删除数据
	public int dsdelete(int id) {
		return dm.dsdelete(id);
	}

	//发货
	@Override
	public void wyfh(int id) {
		dm.wyfh(id);
		
	}
	//退款
	@Override
	public void qdtk(int id) {
		dm.qdtk(id);
	}

	@Override
	public List<Shop_orderz> ydOrderz(int yd_id) {
		return dm.ydOrderz(yd_id);
	}

	@Override
	public List<Shop_orderx> ydOrderx(int id) {
		return dm.ydOrderx(id);
	}

	@Override
	public List<Menu3> getAllmenu3(int id) {
		return dm.getAllmenu3(id);
	}

	@Override
	public void delSp(int id) {
		dm.delSp(id);
		
	}

	@Override
	public void addSp(Menu3 menu3) {
		dm.addSp(menu3);
	}

	@Override
	public List<Menu3> ydByName(String name, int yd_id) {
		return dm.ydByName(name, yd_id);
	}

	@Override
	public void zdsp(int id) {
		dm.zdsp(id);
	}

	@Override
	public void qxzd(int id) {
		dm.qxzd(id);
	}

	@Override
	public void insertYdcopy(DrugStore_copy dc) {
		dm.insertYdcopy(dc);
	}

	@Override
	public void storeChangerz(int id) {
		dm.storeChangerz(id);
	}

	@Override
	public List<Users_biger> ydcfOrder(int id) {
		return dm.ydcfOrder(id);
	}

	@Override
	public void ydcfwyfh(int id) {
		dm.ydcfwyfh(id);
	}

	@Override
	public void xiugaisp(Menu3 menu3) {
		dm.xiugaisp(menu3);
	}
	
	
}
