package com.java.pojo;

public class ZhongjianCalssYiShi {
	int d_id;    //医生编号
	String d_head; // 地址
	String d_zc;// '医生职称'
	String kb_name; // 科别
	String d_name;// 姓名
	double d_money;// 金额
	int d_state;// 状态
	int ks_id;//科室ID
	
	public int getD_id() {
		return d_id;
	}
	public void setD_id(int d_id) {
		this.d_id = d_id;
	}
	public String getD_head() {
		return d_head;
	}
	public void setD_head(String d_head) {
		this.d_head = d_head;
	}
	public String getD_zc() {
		return d_zc;
	}
	public void setD_zc(String d_zc) {
		this.d_zc = d_zc;
	}
	public String getKb_name() {
		return kb_name;
	}
	public void setKb_name(String kb_name) {
		this.kb_name = kb_name;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public double getD_money() {
		return d_money;
	}
	public void setD_money(double d_money) {
		this.d_money = d_money;
	}
	public int getD_state() {
		return d_state;
	}
	public void setD_state(int d_state) {
		this.d_state = d_state;
	}
	public int getKs_id() {
		return ks_id;
	}
	@Override
	public String toString() {
		return "ZhongjianCalssYiShi [d_id=" + d_id + ", d_head=" + d_head + ", d_zc=" + d_zc + ", kb_name=" + kb_name
				+ ", d_name=" + d_name + ", d_money=" + d_money + ", d_state=" + d_state + ", ks_id=" + ks_id + "]";
	}
	public void setKs_id(int ks_id) {
		this.ks_id = ks_id;
	}



}
