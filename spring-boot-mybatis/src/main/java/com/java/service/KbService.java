package com.java.service;


import java.util.List;

import com.java.pojo.Kb;

public interface  KbService  {

	 //通过科室的id查询科别
  
	List<Kb>  selectkb(int id);

}
