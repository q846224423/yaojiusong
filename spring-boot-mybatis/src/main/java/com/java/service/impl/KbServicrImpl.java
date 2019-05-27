package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.KbMapper;
import com.java.pojo.Kb;
import com.java.service.KbService;
@Service
public class KbServicrImpl implements KbService {
  @Autowired
  private  KbMapper kb;
  
	@Override
	public List<Kb> selectkb(int id) {
		return kb.selectkb(id);
	}

}
