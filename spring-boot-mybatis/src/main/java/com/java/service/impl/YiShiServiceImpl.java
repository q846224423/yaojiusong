package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.YishiMapper;
import com.java.pojo.DrugStore;
import com.java.pojo.Users_biger;
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
	public List<Users_biger> wzjl( int user_id) {
		return ym.wzjl(user_id);
	}
	//通过县的ID查询该县所有的药店
	public List<DrugStore> showAllYao(int county_id) {
		return ym.showAllYao(county_id);
	}
	//修改处方状态 当处方状态为0开处方时才可以修改处方申请中将状态0改成1
	public int updatestart(int yhid) {
		return ym.updatestart(yhid);
	}
	//通过医师ID查找处方信息
	public Users_biger chufang(int wzid) {
		return ym.chufang(wzid);
	}


}
