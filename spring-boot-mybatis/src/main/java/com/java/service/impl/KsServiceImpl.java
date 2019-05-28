package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.KsMapper;
import com.java.pojo.Ks;
import com.java.service.KsService;
@Service
public class KsServiceImpl implements KsService {
	@Autowired
	KsMapper km;

	// 查询所有科室
	public List<Ks> KsList() {
		return km.selectAllKs();
	}

}
