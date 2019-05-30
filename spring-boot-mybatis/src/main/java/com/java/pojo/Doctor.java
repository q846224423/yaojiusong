package com.java.pojo;

public class Doctor {
	private Integer d_id;//医生id
	private String d_name;//医生名字
	private Integer d_age;//医生性别
	private String d_sex;//医生年龄
	private Integer d_control;//医生权限  默认0没认证 1认证中 已认证2
	private String d_url;//医生上传的行医资格
	private String d_head;//医生头像
	private String d_introduce;//医生介绍
	private Integer d_state;//医生状态 0 离线  1在线  2 问诊中
	private Integer kb_id;//科室科别
	private String d_zc;//医生职称
	private double d_money;//看病金额
	private String d_tel; //医生电话
	private Integer people_id; //对应people——id
	private String  d_change;//默认0 修改后的数据通过是1
	public Integer getD_id() {
		return d_id;
	}
	public void setD_id(Integer d_id) {
		this.d_id = d_id;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public Integer getD_age() {
		return d_age;
	}
	public void setD_age(Integer d_age) {
		this.d_age = d_age;
	}
	public String getD_sex() {
		return d_sex;
	}
	public void setD_sex(String d_sex) {
		this.d_sex = d_sex;
	}
	public Integer getD_control() {
		return d_control;
	}
	public void setD_control(Integer d_control) {
		this.d_control = d_control;
	}
	public String getD_url() {
		return d_url;
	}
	public void setD_url(String d_url) {
		this.d_url = d_url;
	}
	public String getD_head() {
		return d_head;
	}
	public void setD_head(String d_head) {
		this.d_head = d_head;
	}
	public String getD_introduce() {
		return d_introduce;
	}
	public void setD_introduce(String d_introduce) {
		this.d_introduce = d_introduce;
	}
	public Integer getD_state() {
		return d_state;
	}
	public void setD_state(Integer d_state) {
		this.d_state = d_state;
	}
	public Integer getKb_id() {
		return kb_id;
	}
	public void setKb_id(Integer kb_id) {
		this.kb_id = kb_id;
	}
	public String getD_zc() {
		return d_zc;
	}
	public void setD_zc(String d_zc) {
		this.d_zc = d_zc;
	}
	public double getD_money() {
		return d_money;
	}
	public void setD_money(double d_money) {
		this.d_money = d_money;
	}
	public String getD_tel() {
		return d_tel;
	}
	public void setD_tel(String d_tel) {
		this.d_tel = d_tel;
	}
	public Integer getPeople_id() {
		return people_id;
	}
	public void setPeople_id(Integer people_id) {
		this.people_id = people_id;
		
		
	}
	public String getD_change() {
		return d_change;
	}
	public void setD_change(String d_change) {
		this.d_change = d_change;
	}
	@Override
	public String toString() {
		return "Doctor [d_id=" + d_id + ", d_name=" + d_name + ", d_age=" + d_age + ", d_sex=" + d_sex + ", d_control="
				+ d_control + ", d_url=" + d_url + ", d_head=" + d_head + ", d_introduce=" + d_introduce + ", d_state="
				+ d_state + ", kb_id=" + kb_id + ", d_zc=" + d_zc + ", d_money=" + d_money + ", d_tel=" + d_tel
				+ ", people_id=" + people_id + ", d_change=" + d_change + "]";
	}
	
	
	
}