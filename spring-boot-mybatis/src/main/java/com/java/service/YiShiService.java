package com.java.service;

import java.util.List;


import com.java.pojo.ZhongjianCalssYiShi;

public interface YiShiService {
	// 通过点击科室ID获取所有医师信息
	List<ZhongjianCalssYiShi> yishiShouAll(int id);
}
