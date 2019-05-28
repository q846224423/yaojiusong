package com.java.service;

import java.util.List;

import com.java.pojo.FjtArea;
import com.java.pojo.FjtCity;
import com.java.pojo.FjtProvince;
import com.java.pojo.Menu1;
import com.java.pojo.Menu2;
import com.java.pojo.Menu3;
import com.java.pojo.People;
import com.java.pojo.User_big;
import com.java.pojo.Users;
import com.java.pojo.Users_copy;

public interface StoreService {

	/**
	 * @主页面的菜单
	 */
	// 所有1级药类
	public List<Menu1> selectA1();

	// 通过1级id找二级
	public List<Menu2> select2By1id(int id);

	// 通过2级id找三级
	public List<Menu3> select3By2id(int id);

	// 获取左侧三级菜单栏集合

	public List<Menu1> getAllMenu();

	/**
	 * @各种菜单的点击查询
	 */
	// 搜索框来模糊查询

	public List<Menu3> select3ByName(String name);

	// 通过1级查询所有商品
	public List<Menu3> select3By1id(int id);

	// 通过2级查询所有商品 select3By2id
	// 通过3级查询商品
	public Menu3 select3By3id(int id);

	// 修改密码
	public void updatePwd(People p);

	// 地址的三级联动:
	// 查询所有省
	public List<FjtProvince> getProvince();

	// 通过省code查询所有市
	public List<FjtCity> getCity(String code);

	// 通过市code查询所有区
	public List<FjtArea> getArea(String code);

	//修改用户部分信息
	public void updateUser(Users users);
	
	//查询单个用户
	public User_big getUser(int id);
	
	//提交实名认证信息，待审核
	public void checkIdcard(Users_copy users_copy);
	//提交后改变状态为审核中
	public void change_control(int id);
}
