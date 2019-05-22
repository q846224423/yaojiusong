package com.java.pojo;

import java.util.List;

public class Menu1 {
	int menu1_id;
	String menu1_name;
	List<Menu2> chlidren ;
	public int getMenu1_id() {
		return menu1_id;
	}
	public void setMenu1_id(int menu1_id) {
		this.menu1_id = menu1_id;
	}
	public String getMenu1_name() {
		return menu1_name;
	}
	public void setMenu1_name(String menu1_name) {
		this.menu1_name = menu1_name;
	}
	public List<Menu2> getChlidren() {
		return chlidren;
	}
	public void setChlidren(List<Menu2> chlidren) {
		this.chlidren = chlidren;
	}
	@Override
	public String toString() {
		return "Menu1 [menu1_id=" + menu1_id + ", menu1_name=" + menu1_name + ", chlidren=" + chlidren + "]";
	} 
	
	

}
