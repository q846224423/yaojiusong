package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import com.java.pojo.DrugStore;
import com.java.pojo.DrugStore_copy;
import com.java.pojo.Menu3;
import com.java.pojo.Pcad;
import com.java.pojo.Shop_orderx;
import com.java.pojo.Shop_orderz;

public interface DrugstoreMapper {
	
    //门店查询所有
    @Select("select * from drugstore")
    List<DrugStore> dsselectall();
    
    //门店查询单条
    @Select("select * from drugstore where yd_id=#{0}")
    DrugStore dsselectone(int id);
    
    //门店修改数据
    @Update("update `shop1`.`drugstore` set `yd_name` = #{yd_name},`county_id` = #{county_id},`comment` = #{comment},`regist_info` = #{regist_info},`yd_statu` = #{yd_statu},`people_id` = #{people_id} where `yd_id` = #{yd_id}")
    int dsupdate(DrugStore drugStore);
    
    //门店添加数据
    @Insert("insert into `shop1`.`drugstore` (`yd_name`,`county_id`,`comment`,`regist_info`,`yd_statu`,`people_id`) values(#{yd_name},#{county_id},#{comment},#{regist_info},#{yd_statu},#{people_id})")
    int dsinsert(DrugStore drugStore);
    
    //门店删除数据
    @Delete("delete from drugstore where yd_id = #{id}")
    int dsdelete(int id);
    
    //门店信息查询所有已认证
    @Select("select * from pcad where yd_statu='已认证'")
    public List<Pcad> selectAllDs();
    
    //查询门店已认证总数
 	@Select("select count(0) from pcad")
 	public int AllNum();
 	
 	//门店信息查询所有未认证
    @Select("select * from drugstore_copy")
    public List<DrugStore_copy> selectAllDs2();
    
    //查询门店未认证总数
 	@Select("select count(0) from drugstore_copy")
 	public int AllNum2();
 	
 	//查询单条未认证门店
 	@Select("select * from DrugStore_copy where dc_id=#{0}")
    public DrugStore_copy selectOneDC(int id);
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	//yb
    //药店查看用户非处方订单主表
	@Select("select * from order_z where yd_id = #{yd_id}")
	public List<Shop_orderz> ydOrderz(int yd_id);
    
	// 通过主订单的z_id查找出详单信息
	@Select("select * from order_x where z_id= #{id}")
	public List<Shop_orderx> ydOrderx(int id);
	
	//详单中跳转详细商品
	//直接跳转了用户网上药店查看该药品
	
	//药店我要发货
	@Update("update order_z set z_statu='已发货' where z_statu = '未发货' and z_id = #{id}")
	public void wyfh(int id);
	
	//药店确定退款
	@Update("update order_z set z_statu='已退款' where z_statu = '退款中' and z_id =#{id}")
	public void qdtk(int id);
	
	//药品管理，查询所有药品
	@Select("select * from menuthree where yd_id =#{id}")
	public List<Menu3>  getAllmenu3(int id);
	
	//药店删除药品
	@Delete("delete from menuthree where menu3_id = #{id}")
	public void delSp(int id);

	//添加商品
	@Insert("insert into menuthree(menu3_menu2_id,menu3_name,ep_price,ep_size,ep_description,ep_stock,ep_url,yd_id) values (#{menu3_menu2_id},#{menu3_name},#{ep_price},#{ep_size},#{ep_description},#{ep_stock},#{ep_url},#{yd_id})")
	public void addSp(Menu3 menu3);
	
	// 搜索框来模糊查询
	@Select("select * from menuthree where menu3_name like concat('%',#{0},'%') and yd_id=#{1}")
	public List<Menu3> ydByName(String name,int yd_id);
	
	//商品置顶
	@Update("update menuthree set ep_stick=1 where ep_stick=0 and menu3_id = #{id}")
	public void zdsp(int id);
	//商品置顶
	@Update("update menuthree set ep_stick=0 where ep_stick=1 and menu3_id = #{id}")
	public void qxzd(int id);
	
}
