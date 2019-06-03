package com.java.service;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.java.pojo.FjtArea;
import com.java.pojo.FjtCity;
import com.java.pojo.FjtProvince;
import com.java.pojo.Lookcart;
import com.java.pojo.Menu1;
import com.java.pojo.Menu2;
import com.java.pojo.Menu3;
import com.java.pojo.People;
import com.java.pojo.Shop_orderx;
import com.java.pojo.Shop_orderz;
import com.java.pojo.Shopcart;
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

	// 修改用户部分信息
	public void updateUser(Users users);

	// 查询单个用户
	public User_big getUser(int id);

	// 提交实名认证信息，待审核
	public void checkIdcard(Users_copy users_copy);

	// 提交后改变状态为审核中
	public void change_control(int id);

	// 用户添加商品进购物车
	public void addshopcar(Shopcart cart);

	// 查看购物车
	public List<Lookcart> lookCart(int userid);

	// 查询购物车药品总价
	public double getAllPrice(List<Lookcart> list);

	// 删除购物车某商品
	public void delcarByid(int id);

	// 改变购物车商品数量/buycar1页面
	public void updateCar(int num, int car_id);

	// 添加订单主表
	public void addshopZ(double total, int userid,int yd_id);

	// 查询主表最大id值,为后面的祥表对应字段
	public int getMaxzid();

	// 遍历shopcart，添加到祥表
	public void addshopX(Lookcart cart);

	// 清空该用户购物车
	public void DelShopcart(int user_id);

	// 查询用户的主订单
	public List<Shop_orderz> userOrderz(int id);

	// 通过主订单的z_id查找出详单信息
	public List<Shop_orderx> userOrderx(int id);
	
	//结算时，改变药品库存
	public void changeStock(Lookcart look);
	
	//用户确定收获
	public void qdsh(int id);
	
	//用户我要退款
	public void wytq(int id);
	
	//查询置顶的商品
	public List<Menu3> selectZD(int id);
	
	public Users selectOneUsers(int id);
}
