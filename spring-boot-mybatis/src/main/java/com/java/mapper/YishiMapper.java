package com.java.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.java.pojo.DrugStore;
import com.java.pojo.Users_biger;
import com.java.pojo.ZhongjianCalssYiShi;

public interface YishiMapper {

	// 通过点击科室ID获取所有医师信息
	@Select("SELECT * FROM shituOne WHERE ks_id=${id} ")
	List<ZhongjianCalssYiShi> yishiShouAll(@Param("id") int id);

	// 通过科室ID医生ID找到医师的详细信息
	@Select("SELECT * FROM shituOne WHERE ks_id=${ks_id} and d_id=${d_id}")
	ZhongjianCalssYiShi yishiShouOne(@Param("ks_id") int ks_id, @Param("d_id") int d_id);

	// 添加问诊记录
	
	@Insert("INSERT INTO record(user_id,d_id)VALUES(${yh_id},${yishi_id})")
	public int insertWenzhen(@Param("yishi_id") int yishi_id, @Param("yh_id") int yh_id);
//查询所有问诊记录
	@Select("select * from wzjlu")
	public List<Users_biger> wzjl();

	// 通过县得ID查询该县所有的药店
	@Select("SELECT * FROM drugstore WHERE county_id=${county_id}")
	List<DrugStore> showAllYao(@Param("county_id") int county_id);
	//修改处方状态 当处方状态为0开处方时才可以修改处方申请中将状态0改成1
	@Update("update record set isOpenDrug=1 where isOpenDrug=0 and r_id=${yhid}")
	int updatestart(@Param("yhid") int yhid);
	//通过医师ID查找处方信息
	@Select("select * from wzjlu where r_id =${wzid}")
	Users_biger chufang(@Param("wzid") int wzid);
}
