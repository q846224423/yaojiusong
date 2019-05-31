package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import com.java.pojo.DrugStore;
import com.java.pojo.Pcad;

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
    
    //门店信息查询所有
    @Select("select * from pcad")
    public List<Pcad> selectAllDs();
    
    //查询门店总数
 	@Select("select count(0) from pcad")
 	public int AllNum();
}
