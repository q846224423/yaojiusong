package com.java.pojo;

public class Shop_orderx {
	private int x_id;
	private int z_id;
	private String menu3_name;
	private int menu3_id;
	private double menu3_price;
	private int trade_num;
	private double sum_price;
	
	public int getMenu3_id() {
		return menu3_id;
	}
	public void setMenu3_id(int menu3_id) {
		this.menu3_id = menu3_id;
	}
	public int getX_id() {
		return x_id;
	}
	public void setX_id(int x_id) {
		this.x_id = x_id;
	}
	public int getZ_id() {
		return z_id;
	}
	public void setZ_id(int z_id) {
		this.z_id = z_id;
	}
	public String getMenu3_name() {
		return menu3_name;
	}
	public void setMenu3_name(String menu3_name) {
		this.menu3_name = menu3_name;
	}
	public double getMenu3_price() {
		return menu3_price;
	}
	public void setMenu3_price(double menu3_price) {
		this.menu3_price = menu3_price;
	}
	public int getTrade_num() {
		return trade_num;
	}
	public void setTrade_num(int trade_num) {
		this.trade_num = trade_num;
	}
	public double getSum_price() {
		return sum_price;
	}
	public void setSum_price(double sum_price) {
		this.sum_price = sum_price;
	}
	@Override
	public String toString() {
		return "Shop_orderx [x_id=" + x_id + ", z_id=" + z_id + ", menu3_name=" + menu3_name + ", menu3_price="
				+ menu3_price + ", trade_num=" + trade_num + ", sum_price=" + sum_price + "]";
	}
	

	

}
