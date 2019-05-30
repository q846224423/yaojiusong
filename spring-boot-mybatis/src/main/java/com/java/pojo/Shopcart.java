package com.java.pojo;

public class Shopcart {
	private Integer car_id;
	private Integer menu3_id;
	private String menu3_name;
	private Integer trade_num;
	private Integer user_id;
	public Integer getCar_id() {
		return car_id;
	}
	public void setCar_id(Integer car_id) {
		this.car_id = car_id;
	}
	@Override
	public String toString() {
		return "Shopcart [car_id=" + car_id + ", menu3_id=" + menu3_id + ", menu3_name=" + menu3_name + ", trade_num="
				+ trade_num + ", user_id=" + user_id + "]";
	}
	public Integer getMenu3_id() {
		return menu3_id;
	}
	public void setMenu3_id(Integer menu3_id) {
		this.menu3_id = menu3_id;
	}
	public String getMenu3_name() {
		return menu3_name;
	}
	public void setMenu3_name(String menu3_name) {
		this.menu3_name = menu3_name;
	}
	public Integer getTrade_num() {
		return trade_num;
	}
	public void setTrade_num(Integer trade_num) {
		this.trade_num = trade_num;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	
	
}
