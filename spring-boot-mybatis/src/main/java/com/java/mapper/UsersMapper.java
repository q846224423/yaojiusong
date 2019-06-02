package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.java.pojo.Lookcart;
import com.java.pojo.Shop_orderx;
import com.java.pojo.Shop_orderz;
import com.java.pojo.Shopcart;
import com.java.pojo.User_big;
import com.java.pojo.Users;
import com.java.pojo.Users_copy;

@Repository
public interface UsersMapper {

	// 查询所有用户
	@Select("select * from users")
	public List<Users> selectAllUsers();

	// 查询单个用户
	@Select("select * from users where user_id = #{id}")
	public Users selectOneUsers(int id);

	// 增加用户
	@Insert("inser into users (user_name,user_age,user_sex,user_card,user_control,user_tel,user_address,user_countyid,people_id) values (#{user_name},#{user_age},#{user_sex},#{user_card},#{user_control},#{user_tel},#{user_address},#{user_countyid},#{people_id})")
	public int insertOneUsers(Users users);

	// 删除用户
	@Delete("delete from users where user_id = #{id}")
	public int deleteOneUsers(int id);

	// 修改用户
	@Update("update users set user_name=#{user_name},user_age=#{user_age},user_sex=#{user_sex},user_card=#{user_card},user_control=#{user_control},user_tel=#{user_tel},user_address=#{user_address},user_countyid=#{user_countyid},people_id=#{people_id} where user_id = #{user_id}")
	public int updateUsers(Users users);

	// 修改用户部分信息
	@Update("update users set user_name=#{user_name},user_age=#{user_age},user_sex=#{user_sex},user_tel=#{user_tel},user_address=#{user_address},user_countyid=#{user_countyid} where user_id = #{user_id}")
	public void updateUser(Users users);
	
	//查询所有审核用户
	@Select("select * from users_copy")
	public List<Users_copy> selectUC();
	
	//查询单个审核用户
	@Select("select * from users_copy where user_id =#{id}")
	public Users_copy selectOneUC(int id);
	
	//通过用户实名
	@Update("update users set user_control = 2 where user_id=#{user_id}")
	public int updateTYSM(int id);
	
	//拒绝用户实名
	@Update("update users set user_control = 0 where user_id=#{user_id} ")
	public int updateJJSM(int id);
	
	//删除修改用户信息
	@Delete("delete from users_copy where user_id=#{id}")
	public int deleteUC(int id);
	
	//查询修改用户个数
	@Select("select count(0) from users_copy")
	public int selectAllUCNum();
	
	//Begin
	// 查询单个用户
	@Select("select * from view2 where id = #{id}")
	public User_big getUser(int id);

	// 用户实名验证，加入副表等待管理员审核
	@Insert("insert into `users_copy`(user_name,user_card,user_url,user_id) values (#{user_name},#{user_card},#{user_url},#{user_id})")
	public void checkIdcard(Users_copy users_copy);

	// 用户提交审核后改变其认证状态
	@Update("update users set user_control=1 where user_id =#{id}")
	public void change_control(int id);

	// 查询用户总条数
	@Select("select count(0) from users")
	public int AllNum();

	// 用户添加商品进购物车
	@Insert("insert into shopcart(menu3_id,menu3_name,trade_num,user_id) values (#{menu3_id},#{menu3_name},#{trade_num},#{user_id})")
	public void addshopcar(Shopcart cart);

	// 查看购物车
	@Select("select menuthree.*,shopcart.`trade_num`,shopcart.`car_id`,trade_num*ep_price'sum_price' from shopcart left join menuthree on menuthree.`menu3_id`=shopcart.`menu3_id` where user_id =#{userid}")
	public List<Lookcart> lookCart(int userid);

	// 删除购物车某商品
	@Delete("delete from shopcart where car_id= #{id}")
	public void delcarByid(int id);

	// 改变购物车商品数量/buycar1页面
	@Update("update shopcart set trade_num = #{0} where car_id = #{1}")
	public void updateCar(int num, int car_id);

	// 添加订单主表
	@Insert("insert into order_z(z_total,user_id,yd_id) values (#{0},#{1},#{2})")
	public void addshopZ(double total, int userid,int yd_id);

	// 查询主表最大id值,为后面的祥表对应字段
	@Select("select max(z_id) from order_z")
	public int getMaxzid();

	// 添加祥表，遍历shopcart中的商品信息
	@Insert("insert into order_x(z_id,menu3_id,menu3_name,menu3_price,trade_num,sum_price)values (#{z_id},#{menu3_id},#{menu3_name},#{ep_price},#{trade_num},#{sum_price}) ")
	public void addshopX(Lookcart cart);

	// 清空该用户的购物车
	@Delete("delete from shopcart where user_id=#{user_id}")
	public void DelShopcart(int user_id);

	// 查询用户的主订单
	@Select("select * from order_z where user_id = #{id}")
	public List<Shop_orderz> userOrderz(int id);

	// 通过主订单的z_id查找出详单信息
	@Select("select * from order_x where z_id= #{id}")
	public List<Shop_orderx> userOrderx(int id);

	//结算时，遍历shopcart的同时，改变库存
	@Update("update menuthree set ep_stock=ep_stock-#{trade_num} where menu3_id =#{menu3_id} ")
	public void changeStock(Lookcart look);
	
	//用户确定收获
	@Update("update order_z set z_statu='已签收' where z_statu = '已发货' and z_id = #{id}")
	public void qdsh(int id);
	
	//用户我要退款
	@Update("update order_z set z_statu='退款中' where z_statu = '未发货' and z_id =#{id}")
	public void wytq(int id);
	
}
