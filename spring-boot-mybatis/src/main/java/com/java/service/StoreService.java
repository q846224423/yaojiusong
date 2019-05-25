package com.java.service;

import java.util.List;

import org.springframework.cache.annotation.Cacheable;

import com.java.pojo.Menu1;
import com.java.pojo.Menu2;
import com.java.pojo.Menu3;

public interface StoreService {

	/**@主页面的菜单
	 */
	//所有1级药类
	public List<Menu1> selectA1();
	//通过1级id找二级
	public List<Menu2> select2By1id(int id);
	//通过2级id找三级
	public List<Menu3> select3By2id(int id);
	
	//获取左侧三级菜单栏集合
	
	public List<Menu1> getAllMenu();
	
	/**
	 * @各种菜单的点击查询
	 */
	//搜索框来模糊查询
	
	public List<Menu3> select3ByName(String name);
	//通过1级查询所有商品
	public List<Menu3> select3By1id(int id);
	//通过2级查询所有商品  select3By2id
	//通过3级查询商品
	public Menu3 select3By3id(int id);
}
