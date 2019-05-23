package com.java.pojo;

public class Store_order {
	private Integer yd_oid;//药店订单id
	private Integer py_id;//配药订单信息
	private Integer kh_id;//客户联系信息（姓名电话地址）
	private Integer cf_id;//处方笺
	private Integer d_id;//药师联系信息（姓名电话）
	private String get_state;//结单（是否取药）
	private Integer yd_id;//药店id
	public int getYd_oid() {
		return yd_oid;
	}
	public void setYd_oid(int yd_oid) {
		this.yd_oid = yd_oid;
	}
	public int getPy_id() {
		return py_id;
	}
	public void setPy_id(int py_id) {
		this.py_id = py_id;
	}
	public int getKh_id() {
		return kh_id;
	}
	public void setKh_id(int kh_id) {
		this.kh_id = kh_id;
	}
	public int getCf_id() {
		return cf_id;
	}
	public void setCf_id(int cf_id) {
		this.cf_id = cf_id;
	}
	public int getD_id() {
		return d_id;
	}
	public void setD_id(int d_id) {
		this.d_id = d_id;
	}
	public String getGet_state() {
		return get_state;
	}
	public void setGet_state(String get_state) {
		this.get_state = get_state;
	}
	public int getYd_id() {
		return yd_id;
	}
	public void setYd_id(int yd_id) {
		this.yd_id = yd_id;
	}
	
}
