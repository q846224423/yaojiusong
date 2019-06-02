package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.YishiMapper;
import com.java.pojo.DrugStore;
import com.java.pojo.ZhongJianWenZhen2;
/*import com.java.pojo.ZhongJianWenZhen2;*/
import com.java.pojo.ZhongjianCalssYiShi;
import com.java.service.YiShiService;

@Service
public class YiShiServiceImpl implements YiShiService {
	@Autowired
	YishiMapper ym;

	// 通过点击科室ID获取所有医师信息
	public List<ZhongjianCalssYiShi> yishiShouAll(int id) {
		return ym.yishiShouAll(id);
	}
	//通过科室ID医生ID找到医师的详细信息
	public ZhongjianCalssYiShi yishiShouOne(int ks_id, int d_id) {
		
		return ym.yishiShouOne(ks_id, d_id);
	}
	//添加问诊信息
	public int insertWenzhen(int yishi_id, int yh_id) {
		return ym.insertWenzhen(yishi_id, yh_id);
	}
	//查看所有问诊记录
	public List<ZhongJianWenZhen2> wzjl() {
		return ym.wzjl();
	}
	//通过县的ID查询该县所有的药店
	public List<DrugStore> showAllYao(int county_id) {
		return ym.showAllYao(county_id);
	}


}
