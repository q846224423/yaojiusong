package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.java.pojo.Lookcart;
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
}
