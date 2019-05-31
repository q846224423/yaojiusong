package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.StoreMapper;
import com.java.mapper.UsersMapper;
import com.java.pojo.FjtArea;
import com.java.pojo.FjtCity;
import com.java.pojo.FjtProvince;
import com.java.pojo.Lookcart;
import com.java.pojo.Menu1;
import com.java.pojo.Menu2;
import com.java.pojo.Menu3;
import com.java.pojo.People;
import com.java.pojo.Shop_orderx;
import com.java.pojo.Shop_orderz;
import com.java.pojo.Shopcart;
import com.java.pojo.User_big;
import com.java.pojo.Users;
import com.java.pojo.Users_copy;
import com.java.service.StoreService;

@Service
public class StoreServiceImpl implements StoreService {

	@Autowired
	private StoreMapper ss;
	
	@Autowired
	private UsersMapper um;
	
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

	@Override
	public void updatePwd(People p) {
		ss.updatePwd(p);
	}

	@Override
	public List<FjtProvince> getProvince() {
		// TODO Auto-generated method stub
		return ss.getProvince();
	}

	@Override
	public List<FjtCity> getCity(String code) {
		// TODO Auto-generated method stub
		return ss.getCity(code);
	}

	@Override
	public List<FjtArea> getArea(String code) {
		// TODO Auto-generated method stub
		return ss.getArea(code);
	}

	@Override
	public User_big getUser(int id) {
		// TODO Auto-generated method stub
		return um.getUser(id);
	}

	@Override
	public void updateUser(Users users) {
		um.updateUser(users);
		
	}

	@Override
	public void checkIdcard(Users_copy users_copy) {
		um.checkIdcard(users_copy);
		
	}

	@Override
	public void change_control(int id) {
		um.change_control(id);
		
	}

	@Override
	public void addshopcar(Shopcart cart) {
		um.addshopcar(cart);
		
	}

	@Override
	public List<Lookcart> lookCart(int userid) {
		return um.lookCart(userid);
	}

	@Override
	public double getAllPrice(List<Lookcart> list) {
		double allprice = 0.0;
		for (Lookcart lookcart : list) {
			allprice=allprice+lookcart.getSum_price();
		}
		//System.out.println(allprice);
		return allprice;
	}

	@Override
	public void delcarByid(int id) {
		um.delcarByid(id);
		
	}

	@Override
	public void updateCar(int num, int car_id) {
		um.updateCar(num, car_id);
		
	}

	@Override
	public void addshopZ(double total, int userid) {
		um.addshopZ(total, userid);
		
	}

	@Override
	public int getMaxzid() {
		return um.getMaxzid();
	}

	@Override
	public void addshopX(Lookcart cart) {
		um.addshopX(cart);
		
	}

	@Override
	public void DelShopcart(int user_id) {
		um.DelShopcart(user_id);
	}

	@Override
	public List<Shop_orderz> userOrderz(int id) {
		return um.userOrderz(id);
	}

	@Override
	public List<Shop_orderx> userOrderx(int id) {
		return um.userOrderx(id);
	}

	@Override
	public void changeStock(Lookcart look) {
		um.changeStock(look);
	}

	
}
