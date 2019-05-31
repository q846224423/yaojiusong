package com.java.pojo;

public class Users_biger {
	private String d_name;//医生名字
	private String user_name;//用户名字
	private String user_sex;//用户性别
	private String user_tel;//用户电话
	private Integer isOpenDrug;//用户是否开处方
	private Integer  r_status;//是否问诊
	private Integer  user_id;
	private  String  r_tel;
	
	
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_sex() {
		return user_sex;
	}
	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public Integer getIsOpenDrug() {
		return isOpenDrug;
	}
	public void setIsOpenDrug(Integer isOpenDrug) {
		this.isOpenDrug = isOpenDrug;
	}
	public Integer getR_status() {
		return r_status;
	}
	public void setR_status(Integer r_status) {
		this.r_status = r_status;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Users_biger [d_name=").append(d_name).append(", user_name=").append(user_name)
				.append(", user_sex=").append(user_sex).append(", user_tel=").append(user_tel).append(", isOpenDrug=")
				.append(isOpenDrug).append(", r_status=").append(r_status).append("]");
		return builder.toString();
	}
	
}
