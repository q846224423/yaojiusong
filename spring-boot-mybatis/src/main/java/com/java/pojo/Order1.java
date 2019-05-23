package com.java.pojo;

public class Order1 {
	private Integer order1_id;			//订单id
	private Integer user_id;			//用户id
	private Integer did;				//医生id
	private String cf_url;			//处方笺 0：开；1：不开
	private String time;			//时间	
	private Integer statu;				//状态
	private String isGetMedicine;	//是否拿药 0：开；1：不开
	@Override
	public String toString() {
		return "Order1 [order1_id=" + order1_id + ", user_id=" + user_id + ", did=" + did + ", cf_url=" + cf_url
				+ ", time=" + time + ", statu=" + statu + ", isGetMedicine=" + isGetMedicine + "]";
	}
	public int getOrder1_id() {
		return order1_id;
	}
	public void setOrder1_id(int order1_id) {
		this.order1_id = order1_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getCf_url() {
		return cf_url;
	}
	public void setCf_url(String cf_url) {
		this.cf_url = cf_url;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getStatu() {
		return statu;
	}
	public void setStatu(int statu) {
		this.statu = statu;
	}
	public String getIsGetMedicine() {
		return isGetMedicine;
	}
	public void setIsGetMedicine(String isGetMedicine) {
		this.isGetMedicine = isGetMedicine;
	}
}
