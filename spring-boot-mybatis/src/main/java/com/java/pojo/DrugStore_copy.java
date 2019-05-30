package com.java.pojo;
//药店
public class DrugStore_copy {
	Integer dc_id;
	String yd_name;//药店名 
	String regist_info; //提交的认证信息
	String yd_url;
	Integer yd_id;  //药店id
	public Integer getDc_id() {
		return dc_id;
	}
	public void setDc_id(Integer dc_id) {
		this.dc_id = dc_id;
	}
	public String getYd_name() {
		return yd_name;
	}
	public void setYd_name(String yd_name) {
		this.yd_name = yd_name;
	}
	public String getRegist_info() {
		return regist_info;
	}
	public void setRegist_info(String regist_info) {
		this.regist_info = regist_info;
	}
	public String getYd_url() {
		return yd_url;
	}
	public void setYd_url(String yd_url) {
		this.yd_url = yd_url;
	}
	public Integer getYd_id() {
		return yd_id;
	}
	public void setYd_id(Integer yd_id) {
		this.yd_id = yd_id;
	}
	@Override
	public String toString() {
		return "DrugStore_copy [dc_id=" + dc_id + ", yd_name=" + yd_name + ", regist_info=" + regist_info + ", yd_url="
				+ yd_url + ", yd_id=" + yd_id + "]";
	}
	
}
