package com.java.pojo;

import java.util.List;

public class Menu2 {
	Integer menu2_id;
	Integer menu2_1id;   //对应的1的id
String menu2_name;  
List<Menu3> chlidren ;


public Integer getMenu2_id() {
	return menu2_id;
}


public void setMenu2_id(Integer menu2_id) {
	this.menu2_id = menu2_id;
}


public Integer getMenu2_1id() {
	return menu2_1id;
}


public void setMenu2_1id(Integer menu2_1id) {
	this.menu2_1id = menu2_1id;
}


public String getMenu2_name() {
	return menu2_name;
}


public void setMenu2_name(String menu2_name) {
	this.menu2_name = menu2_name;
}


public List<Menu3> getChlidren() {
	return chlidren;
}


public void setChlidren(List<Menu3> chlidren) {
	this.chlidren = chlidren;
}


@Override
public String toString() {
	return "Menu2 [menu2_id=" + menu2_id + ", menu2_1id=" + menu2_1id + ", menu2_name=" + menu2_name + ", chlidren="
			+ chlidren + "]";
} 


}
