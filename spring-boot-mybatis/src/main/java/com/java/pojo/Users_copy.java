package com.java.pojo;


//实名认证用的副表
public class Users_copy {
	private Integer uc_id;//主键id
	private String user_name;//用户用户名
	private String user_card;//用户身份证号
	private String user_url;//上传身份证图片路径
	private Integer user_id;//角色表id
	
	
	public Integer getUc_id() {
		return uc_id;
	}
	public void setUc_id(Integer uc_id) {
		this.uc_id = uc_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_card() {
		return user_card;
	}
	public void setUser_card(String user_card) {
		this.user_card = user_card;
	}
	public String getUser_url() {
		return user_url;
	}
	public void setUser_url(String user_url) {
		this.user_url = user_url;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "Users_copy [uc_id=" + uc_id + ", user_name=" + user_name + ", user_card=" + user_card + ", user_url="
				+ user_url + ", user_id=" + user_id + "]";
	}
	
}
