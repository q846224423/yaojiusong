package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.java.mapper.StoreMapper;
import com.java.pojo.Menu1;
import com.java.pojo.Menu2;
import com.java.pojo.Menu3;
import com.java.service.StoreService;

@Service
public class StoreServiceImpl implements StoreService {

	@Autowired
	private StoreMapper ss;
	
	@Override
	public List<Menu1> selectA1() {
		return ss.selectA1();
	}

	@Override
	public List<Menu2> select2By1id(int id) {
		return ss.select2By1id(id);
	}

	@Override
	public List<Menu3> select3By2id(int id) {
		return ss.select3By2id(id);
	}

	@Override
	public List<Menu1> getAllMenu() {
		 List<Menu1> list1 = ss.selectA1();
			for (Menu1 menu1 : list1) {
				List<Menu2> list2 = ss.select2By1id(menu1.getMenu1_id());
			menu1.setChlidren(list2);
			
			for (Menu2 menu2 : list2) {
				List<Menu3> list3 = ss.select3By2id(menu2.getMenu2_id());
				menu2.setChlidren(list3);
				
			}}	
			///第一个名字
			//list1.get(0)
			//list1.get(0).getChlidren()
			return 	list1;	
	}

	@Override
	public List<Menu3> select3ByName(String name) {
		return ss.select3ByName(name);
	}

	@Override
	public List<Menu3> select3By1id(int id) {
		return ss.select3By1id(id);
	}

	@Override
	public Menu3 select3By3id(int id) {
		return ss.select3By3id(id);
	}

}
