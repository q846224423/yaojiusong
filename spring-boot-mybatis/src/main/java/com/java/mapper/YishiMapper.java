package com.java.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.java.pojo.DrugStore;
import com.java.pojo.ZhongJianWenZhen2;
import com.java.pojo.ZhongjianCalssYiShi;

public interface YishiMapper {

	// 通过点击科室ID获取所有医师信息
	@Select("SELECT * FROM shituOne WHERE ks_id=${id} ")
	List<ZhongjianCalssYiShi> yishiShouAll(@Param("id") int id);

	// 通过科室ID医生ID找到医师的详细信息
	@Select("SELECT * FROM shituOne WHERE ks_id=${ks_id} and d_id=${d_id}")
	ZhongjianCalssYiShi yishiShouOne(@Param("ks_id") int ks_id, @Param("d_id") int d_id);

	// 添加问诊记录
	@Insert("INSERT INTO order1(user_id,did,TIME,statu)VALUES(${yh_id},${yishi_id},NOW(),1)")
	public int insertWenzhen(@Param("yishi_id") int yishi_id, @Param("yh_id") int yh_id);
//查询所有问诊记录
	@Select("select * from wenzhen")
	public List<ZhongJianWenZhen2> wzjl();

	// 通过县得ID查询该县所有的药店
	@Select("SELECT * FROM drugstore WHERE county_id=${county_id}")
	List<DrugStore> showAllYao(@Param("county_id") int county_id);
}
