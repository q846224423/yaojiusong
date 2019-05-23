package com.java.pojo;

public class Menu3_Shopcart {
	
	Integer menu3_id;
	String menu3_name;
	String ep_description;
	double ep_price;
	String ep_url;
	Integer useraccountid;
	Integer trade_num;
	double allprice;
	public double getAllprice() {
		return allprice;
	}
	public void setAllprice(double allprice) {
		this.allprice = allprice;
	}
	public int getMenu3_id() {
		return menu3_id;
	}
	public void setMenu3_id(int menu3_id) {
		this.menu3_id = menu3_id;
	}
	public String getMenu3_name() {
		return menu3_name;
	}
	public void setMenu3_name(String menu3_name) {
		this.menu3_name = menu3_name;
	}
	public String getEp_description() {
		return ep_description;
	}
	public void setEp_description(String ep_description) {
		this.ep_description = ep_description;
	}
	public double getEp_price() {
		return ep_price;
	}
	public void setEp_price(double ep_price) {
		this.ep_price = ep_price;
	}
	public String getEp_url() {
		return ep_url;
	}
	public void setEp_url(String ep_url) {
		this.ep_url = ep_url;
	}
	public int getUseraccountid() {
		return useraccountid;
	}
	public void setUseraccountid(int useraccountid) {
		this.useraccountid = useraccountid;
	}
	public int getTrade_num() {
		return trade_num;
	}
	public void setTrade_num(int trade_num) {
		this.trade_num = trade_num;
	}
	
}
