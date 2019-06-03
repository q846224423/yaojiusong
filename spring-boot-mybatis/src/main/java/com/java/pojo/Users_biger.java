package com.java.pojo;

public class Users_biger {
	private String d_name;//医生名字
	private String d_tel;//医生电话
	private String user_name;//用户名字
	private String user_sex;//用户性别
	private String user_tel;//用户电话
	private Integer isOpenDrug;//用户是否开处方     0：开 1：不开 2：处理中
	private Integer  r_status;//是否问诊
	private Integer  user_id;//用户id
	private String  r_tel;//处方图
	private Integer r_id;//问诊id
	private Integer yd_id; //药店id
	private String yd_name;//药店名字
	private String r_time;   //时间
	private String isGetMedicine; //发货状态 1：未发货 2：已发货 3:已签收
	
	
	public String getD_tel() {
		return d_tel;
	}
	public void setD_tel(String d_tel) {
		this.d_tel = d_tel;
	}
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
	
	public String getR_time() {
		return r_time;
	}
	public void setR_time(String r_time) {
		this.r_time = r_time;
	}
	public String getIsGetMedicine() {
		return isGetMedicine;
	}
	public void setIsGetMedicine(String isGetMedicine) {
		this.isGetMedicine = isGetMedicine;
	}
	public String getR_tel() {
		return r_tel;
	}
	public void setR_tel(String r_tel) {
		this.r_tel = r_tel;
	}
	public Integer getR_id() {
		return r_id;
	}
	public void setR_id(Integer r_id) {
		this.r_id = r_id;
	}
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
