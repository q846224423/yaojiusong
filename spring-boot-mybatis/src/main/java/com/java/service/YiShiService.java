package com.java.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.pojo.ZhongjianCalssYiShi;

public interface YiShiService {
	// 通过点击科室ID获取所有医师信息
	List<ZhongjianCalssYiShi> yishiShouAll(int id);
	//通过科室ID医生ID找到医师的详细信息
    ZhongjianCalssYiShi yishiShouOne(@Param("id") int ks_id,int d_id);
}
