package com.java.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.java.pojo.DrugStore;
import com.java.pojo.Users_biger;
/*import com.java.pojo.ZhongJianWenZhen2;*/
import com.java.pojo.ZhongjianCalssYiShi;

public interface YiShiService {
	// 通过点击科室ID获取所有医师信息
	List<ZhongjianCalssYiShi> yishiShouAll(int id);

	// 通过科室ID医生ID找到医师的详细信息
	ZhongjianCalssYiShi yishiShouOne(@Param("id") int ks_id, int d_id);

	// 添加问诊记录
	public int insertWenzhen(@Param("yishi_id") int yishi_id, @Param("yh_id") int yh_id);

//查询所有问诊记录
	public List<Users_biger> wzjl();
	
	// 通过县得ID查询该县所有的药店
	List<DrugStore> showAllYao(@Param("county_id") int county_id);
	
	//修改处方状态 当处方状态为0开处方时才可以修改处方申请中将状态0改成1
		int updatestart(@Param("yhid") int yhid);
		//通过医师ID查找处方信息
		Users_biger chufang(@Param("wzid") int wzid);
}
