package com.java.pojo;

public class Lookcart {
	private Integer menu3_id; // 商品id
	private Integer menu3_menu2_id; // 对应上一级
	private String menu3_name;// 药品名称
	private double ep_price; // 价格
	private String ep_size; // 规格
	private String ep_description;// 描述
	private Integer ep_stock;// 库存
	private String ep_url;// 图片路径
	private Integer ep_stick;// 轮播图的标记 0，1
	private Integer yd_id;// 药店的id 默认0
	private Integer trade_num;
	private int car_id;
	private double sum_price;
	private Integer z_id;
	
	public Integer getZ_id() {
		return z_id;
	}
	public void setZ_id(Integer z_id) {
		this.z_id = z_id;
	}
	public int getCar_id() {
		return car_id;
	}
	public void setCar_id(int car_id) {
		this.car_id = car_id;
	}
	public double getSum_price() {
		return sum_price;
	}
	public void setSum_price(double sum_price) {
		this.sum_price = sum_price;
	}
	public Integer getMenu3_id() {
		return menu3_id;
	}
	public void setMenu3_id(Integer menu3_id) {
		this.menu3_id = menu3_id;
	}
	public Integer getMenu3_menu2_id() {
		return menu3_menu2_id;
	}
	public void setMenu3_menu2_id(Integer menu3_menu2_id) {
		this.menu3_menu2_id = menu3_menu2_id;
	}
	public String getMenu3_name() {
		return menu3_name;
	}
	public void setMenu3_name(String menu3_name) {
		this.menu3_name = menu3_name;
	}
	public double getEp_price() {
		return ep_price;
	}
	public void setEp_price(double ep_price) {
		this.ep_price = ep_price;
	}
	public String getEp_size() {
		return ep_size;
	}
	public void setEp_size(String ep_size) {
		this.ep_size = ep_size;
	}
	public String getEp_description() {
		return ep_description;
	}
	public void setEp_description(String ep_description) {
		this.ep_description = ep_description;
	}
	public Integer getEp_stock() {
		return ep_stock;
	}
	public void setEp_stock(Integer ep_stock) {
		this.ep_stock = ep_stock;
	}
	public String getEp_url() {
		return ep_url;
	}
	public void setEp_url(String ep_url) {
		this.ep_url = ep_url;
	}
	public Integer getEp_stick() {
		return ep_stick;
	}
	public void setEp_stick(Integer ep_stick) {
		this.ep_stick = ep_stick;
	}
	public Integer getYd_id() {
		return yd_id;
	}
	public void setYd_id(Integer yd_id) {
		this.yd_id = yd_id;
	}
	public Integer getTrade_num() {
		return trade_num;
	}
	public void setTrade_num(Integer trade_num) {
		this.trade_num = trade_num;
	}
	@Override
	public String toString() {
		return "Lookcart [menu3_id=" + menu3_id + ", menu3_menu2_id=" + menu3_menu2_id + ", menu3_name=" + menu3_name
				+ ", ep_price=" + ep_price + ", ep_size=" + ep_size + ", ep_description=" + ep_description
				+ ", ep_stock=" + ep_stock + ", ep_url=" + ep_url + ", ep_stick=" + ep_stick + ", yd_id=" + yd_id
				+ ", trade_num=" + trade_num + "]";
	}

	
}
