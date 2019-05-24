package com.java.pojo;

public class ZhongjianCalssYiShi {
	String d_head; //地址
	String d_zc;// '医生职称'
	String kb_name; //科别
	String d_name;//姓名
	double d_money;//金额
	int d_state;//状态

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

	public ZhongjianCalssYiShi() {
		super();
	}

	public ZhongjianCalssYiShi(String d_head, String d_zc, String kb_name, String d_name, double d_money, int d_state) {
		super();
		this.d_head = d_head;
		this.d_zc = d_zc;
		this.kb_name = kb_name;
		this.d_name = d_name;
		this.d_money = d_money;
		this.d_state = d_state;
	}

	public int getD_state() {
		return d_state;
	}

	public void setD_state(int d_state) {
		this.d_state = d_state;
	}
}
