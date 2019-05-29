package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.YishiMapper;
import com.java.pojo.ZhongjianCalssYiShi;
import com.java.service.YiShiService;

@Service
public class YiShiServiceImpl implements YiShiService {
	@Autowired
	YishiMapper ym;

	// 通过点击科室ID获取所有医师信息
	public List<ZhongjianCalssYiShi> yishiShouAll(int id) {
		return ym.yishiShouAll( id);
	}
	//通过科室ID医生ID找到医师的详细信息
	public ZhongjianCalssYiShi yishiShouOne(int ks_id, int d_id) {
		
		return ym.yishiShouOne(ks_id, d_id);
	}

}
