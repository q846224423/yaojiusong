package com.java.pojo;

public class Shop_orderz {
	private int z_id;
	private String z_time;
	private double z_total;
	private String z_statu;
	private int user_id;
	private int yd_id; //药店的id

	public int getYd_id() {
		return yd_id;
	}

	public void setYd_id(int yd_id) {
		this.yd_id = yd_id;
	}

	public int getZ_id() {
		return z_id;
	}

	public void setZ_id(int z_id) {
		this.z_id = z_id;
	}

	public String getZ_time() {
		return z_time;
	}

	public void setZ_time(String z_time) {
		this.z_time = z_time;
	}

	public double getZ_total() {
		return z_total;
	}

	public void setZ_total(double z_total) {
		this.z_total = z_total;
	}

	public String getZ_statu() {
		return z_statu;
	}

	public void setZ_statu(String z_statu) {
		this.z_statu = z_statu;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "Shop_orderz [z_id=" + z_id + ", z_time=" + z_time + ", z_total=" + z_total + ", z_statu=" + z_statu
				+ ", user_id=" + user_id + "]";
	}

}
