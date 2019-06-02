package com.java.service;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.java.pojo.DrugStore;
import com.java.pojo.Menu3;
import com.java.pojo.Shop_orderx;
import com.java.pojo.Shop_orderz;

public interface FjtDrugstoreService {

	// 门店查询所有
	public List<DrugStore> dsselectall();

	// 门店查询单条
	public DrugStore dsselectone(int id);

	// 门店修改数据
	public int dsupdate(DrugStore drugStore);

	// 门店添加数据
	public int dsinsert(DrugStore drugStore);

	// 门店删除数据
	public int dsdelete(int id);

	// 药店查看用户非处方订单主表
	public List<Shop_orderz> ydOrderz(int yd_id);

	// 通过主订单的z_id查找出详单信息
	public List<Shop_orderx> ydOrderx(int id);

	// 药店我要发货
	public void wyfh(int id);

	// 药店确定退款
	public void qdtk(int id);
	//药品管理，查询所有药品
	public List<Menu3>  getAllmenu3(int id);
	
	//药店删除药品
	public void delSp(int id);
	//添加商品
	public void addSp(Menu3 menu3);
	// 搜索框来模糊查询
	public List<Menu3> ydByName(String name,int yd_id);
	
	//商品置顶
	public void zdsp(int id);
	//商品取消置顶
	public void qxzd(int id);
}
