package com.java.pojo;

public class Admin {
	private int id;//管理员id
	private String  a_name;//管理员名字
	private int People_id;//对应people——id
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getA_name() {
		return a_name;
	}
	public void setA_name(String a_name) {
		this.a_name = a_name;
	}
	public int getPeople_id() {
		return People_id;
	}
	public void setPeople_id(int people_id) {
		People_id = people_id;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Admin [id=");
		builder.append(id);
		builder.append(", a_name=");
		builder.append(a_name);
		builder.append(", People_id=");
		builder.append(People_id);
		builder.append("]");
		return builder.toString();
	}
	

}
