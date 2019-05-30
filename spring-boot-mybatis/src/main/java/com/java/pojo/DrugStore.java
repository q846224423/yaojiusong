package com.java.pojo;
//药店
public class DrugStore {
	Integer yd_id;
	String yd_name;//药店名 
	Integer county_id;     //县
	String regist_info; //提交的认证信息
	String yd_statu; //认证状态
	Integer people_id;  //对应people中的某个人，有着相应角色
	public Integer getYd_id() {
		return yd_id;
	}
	public void setYd_id(Integer yd_id) {
		this.yd_id = yd_id;
	}
	public String getYd_name() {
		return yd_name;
	}
	public void setYd_name(String yd_name) {
		this.yd_name = yd_name;
	}
	public Integer getCounty_id() {
		return county_id;
	}
	public void setCounty_id(Integer county_id) {
		this.county_id = county_id;
	}
	
	public String getRegist_info() {
		return regist_info;
	}
	public void setRegist_info(String regist_info) {
		this.regist_info = regist_info;
	}
	public String getYd_statu() {
		return yd_statu;
	}
	public void setYd_statu(String yd_statu) {
		this.yd_statu = yd_statu;
	}
	public Integer getPeople_id() {
		return people_id;
	}
	public void setPeople_id(Integer people_id) {
		this.people_id = people_id;
	}
	@Override
	public String toString() {
		return "DrugStore [yd_id=" + yd_id + ", yd_name=" + yd_name + ", county_id=" + county_id + ", comment="
				+ ", regist_info=" + regist_info + ", yd_statu=" + yd_statu + ", people_id=" + people_id
				+ "]";
	}
	
}
