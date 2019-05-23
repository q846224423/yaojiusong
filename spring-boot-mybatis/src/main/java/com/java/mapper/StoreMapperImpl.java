package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.pojo.Menu1;
import com.java.pojo.Menu2;
import com.java.pojo.Menu3;

@Mapper
public abstract class StoreMapperImpl implements StoreMapper {

	public List<Menu1> getAllMenu(){
		 List<Menu1> list1 = selectA1();
		for (Menu1 menu1 : list1) {
			List<Menu2> list2 = select2By1id(menu1.getMenu1_id());
		menu1.setChlidren(list2);
		
		for (Menu2 menu2 : list2) {
			List<Menu3> list3 = select3By2id(menu2.getMenu2_id());
			menu2.setChlidren(list3);
			
		}}	
		return 	list1;	
		}
}
