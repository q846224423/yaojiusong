package com.java.pojo;


public class ZhongJianWenZhen2 {

	String user_name; // 用户姓名
	String d_name;// 医生姓名
	String time;// 问诊时间

	public ZhongJianWenZhen2(String user_name, String d_name, String time, int statu, String cf_url) {
		super();
		this.user_name = user_name;
		this.d_name = d_name;
		this.time = time;
		this.statu = statu;
		this.cf_url = cf_url;
	}

	int statu;// 问诊状态 默认问诊结束
	String cf_url;// 是否开处方

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public ZhongJianWenZhen2() {
		super();
	}

	public String getD_name() {
		return d_name;
	}

	public void setD_name(String d_name) {
		this.d_name = d_name;
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

	public String getCf_url() {
		return cf_url;
	}

	public void setCf_url(String cf_url) {
		this.cf_url = cf_url;
	}

}
