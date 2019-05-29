package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.java.pojo.ZhongjianCalssYiShi;

public interface YishiMapper {
	
	// 通过点击科室ID获取所有医师信息
	@Select("SELECT * FROM shituOne WHERE ks_id=${id} ")
	List<ZhongjianCalssYiShi> yishiShouAll(@Param("id") int id);
	//通过科室ID医生ID找到医师的详细信息
	@Select("SELECT * FROM shituOne WHERE ks_id=${ks_id} and d_id=${d_id}")
	ZhongjianCalssYiShi yishiShouOne(@Param("ks_id") int ks_id,@Param("d_id") int d_id);
}
