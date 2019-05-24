package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.java.pojo.ZhongjianCalssYiShi;

public interface YishiMapper {
	// 通过点击科室ID获取所有医师信息
	@Select("SELECT * FROM shituOne WHERE ks_id=${id} ")
	List<ZhongjianCalssYiShi> yishiShouAll(@Param("id") int id);
}
