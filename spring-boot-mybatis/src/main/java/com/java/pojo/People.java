package com.java.pojo;
//账号密码对应的人
public class People {
	private Integer id;//用户个人对应id
	private String username;//用户对应账号
	private String pwd;//用户对应密码
	private Integer role;//用户对应角色
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("People [id=");
		builder.append(id);
		builder.append(", username=");
		builder.append(username);
		builder.append(", pwd=");
		builder.append(pwd);
		builder.append(", role=");
		builder.append(role);
		builder.append("]");
		return builder.toString();
	}
}
