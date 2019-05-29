package com.java.pojo;

public class DoctorChange {
	private String d_name;//医生修改后姓名
	private int d_age;//医生修改后年龄
	private String d_sex;//医生修改后性别
	private String d_tel;//医生修改后电话
	private int d_kb_id;//医生修改后科别id
	private double d_money;//医生修改后金额
	private String d_zc;//医生修改后职称
	private String d_introduce;//医生修改后介绍
	private String d_head;//医生修改头像后路径
	private int d_id;//修改的医生id
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public int getD_age() {
		return d_age;
	}
	public void setD_age(int d_age) {
		this.d_age = d_age;
	}
	public String getD_sex() {
		return d_sex;
	}
	public void setD_sex(String d_sex) {
		this.d_sex = d_sex;
	}
	public String getD_tel() {
		return d_tel;
	}
	public void setD_tel(String d_tel) {
		this.d_tel = d_tel;
	}
	public int getD_kb_id() {
		return d_kb_id;
	}
	public void setD_kb_id(int d_kb_id) {
		this.d_kb_id = d_kb_id;
	}
	public double getD_money() {
		return d_money;
	}
	public void setD_money(double d_money) {
		this.d_money = d_money;
	}
	public String getD_zc() {
		return d_zc;
	}
	public void setD_zc(String d_zc) {
		this.d_zc = d_zc;
	}
	public String getD_introduce() {
		return d_introduce;
	}
	public void setD_introduce(String d_introduce) {
		this.d_introduce = d_introduce;
	}
	public String getD_head() {
		return d_head;
	}
	public void setD_head(String d_head) {
		this.d_head = d_head;
	}
	public int getD_id() {
		return d_id;
	}
	public void setD_id(int d_id) {
		this.d_id = d_id;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("DoctorChange [d_name=").append(d_name).append(", d_age=").append(d_age).append(", d_sex=")
				.append(d_sex).append(", d_tel=").append(d_tel).append(", d_kb_id=").append(d_kb_id)
				.append(", d_money=").append(d_money).append(", d_zc=").append(d_zc).append(", d_introduce=")
				.append(d_introduce).append(", d_head=").append(d_head).append(", d_id=").append(d_id).append("]");
		return builder.toString();
	}
	
	

	
}
