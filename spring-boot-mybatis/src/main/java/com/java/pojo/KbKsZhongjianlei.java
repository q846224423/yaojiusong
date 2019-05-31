package com.java.pojo;

public class KbKsZhongjianlei {
	private int ks_id;
	private String ks_name;
	private int kb_id;
	private String kb_name;
	public int getKs_id() {
		return ks_id;
	}
	public void setKs_id(int ks_id) {
		this.ks_id = ks_id;
	}
	public String getKs_name() {
		return ks_name;
	}
	public void setKs_name(String ks_name) {
		this.ks_name = ks_name;
	}
	public int getKb_id() {
		return kb_id;
	}
	public void setKb_id(int kb_id) {
		this.kb_id = kb_id;
	}
	public String getKb_name() {
		return kb_name;
	}
	public void setKb_name(String kb_name) {
		this.kb_name = kb_name;
	}
	@Override
	public String toString() {
		return "KbKsZhongjianlei [ks_id=" + ks_id + ", ks_name=" + ks_name + ", kb_id=" + kb_id + ", kb_name=" + kb_name
				+ "]";
	}
	
}
