package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.java.pojo.Menu1;
import com.java.pojo.Menu2;
import com.java.pojo.Menu3;
import com.java.pojo.People;
@Repository
public interface StoreMapper {
	
	/*
	 *@主页面的菜单
	 */
	//所有1级药类
	@Select("select * from menuone")
	public List<Menu1> selectA1();
	//通过1级id找二级
	@Select("select * from menutwo where menu2_menu1_id=#{id}")
	public List<Menu2> select2By1id(int id);
	//通过2级id找三级
	@Select("select * from menuthree where menu3_menu2_id=#{id}")
	public List<Menu3> select3By2id(int id);
	
	//获取左侧三级菜单栏集合
	//public List<Menu1> getAllMenu();
	
	/**
	 * @各种菜单的点击查询
	 */
	//搜索框来模糊查询
	@Select("select * from menuthree where menu3_name like concat('%',#{name},'%')")
	public List<Menu3> select3ByName(String name);
	//通过1级查询所有商品
	@Select("select `menu3_id`,`menu3_menu2_id`,`menu3_name`,`ep_price`,`ep_size`,`ep_description`,`ep_stock`,`ep_url`,`ep_stick`,`yd_id` from view1  where menu1_id=#{id}")
	public List<Menu3> select3By1id(int id);
	//通过2级查询所有商品  select3By2id
	//通过3级查询商品
	@Select("select * from menuthree where menu3_id=#{id}")
	public Menu3 select3By3id(int id);
	
	/**
	 * @修改信息
	 */
	//修改密码
	@Update("update people set pwd=#{pwd} where id=#{id}")
	public void updatePwd(People p);
	
	
}
