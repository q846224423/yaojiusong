package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.KeshifenleiMapper;
import com.java.pojo.Ks;
import com.java.service.KsService;
@Service
public class KsServiceImpl implements KsService {
	@Autowired
	KeshifenleiMapper km;

	// 查询所有科室
	public List<Ks> KsList() {
		return km.KsList();
	}

}
