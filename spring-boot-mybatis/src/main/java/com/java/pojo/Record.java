package com.java.pojo;

public class Record {
	private Integer r_id;//问诊记录id
	private Integer d_id;//医生id
	private String isOpenDrug;//是否开处方笺 0：开；1：不开
	private String isGetMedicine;//是否拿药 0：开；1：不开
	public int getR_id() {
		return r_id;
	}
	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	public int getD_id() {
		return d_id;
	}
	public void setD_id(int d_id) {
		this.d_id = d_id;
	}
	public String getIsOpenDrug() {
		return isOpenDrug;
	}
	public void setIsOpenDrug(String isOpenDrug) {
		this.isOpenDrug = isOpenDrug;
	}
	public String getIsGetMedicine() {
		return isGetMedicine;
	}
	public void setIsGetMedicine(String isGetMedicine) {
		this.isGetMedicine = isGetMedicine;
	}
	
}
