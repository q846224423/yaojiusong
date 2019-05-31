package com.java.pojo;

public class Record {
	private Integer r_id;//问诊记录id
	private Integer d_id;//医生id
	private String isOpenDrug;//是否开处方笺 0：开；1：不开
	private String isGetMedicine;//是否拿药 0：开；1：不开
	private Integer user_id;//用户id
	private String r_status;//默认0  问诊中1  问诊过2
	
	public String getR_status() {
		return r_status;
	}

	public void setR_status(String r_status) {
		this.r_status = r_status;
	}

	public Integer getR_id() {
		return r_id;
	}

	public void setR_id(Integer r_id) {
		this.r_id = r_id;
	}
	public Integer getD_id() {
		return d_id;
	}
	public void setD_id(Integer d_id) {
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
	public Integer getU_id() {
		return user_id;
	}
	public void setU_id(Integer user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Record [r_id=");
		builder.append(r_id);
		builder.append(", d_id=");
		builder.append(d_id);
		builder.append(", isOpenDrug=");
		builder.append(isOpenDrug);
		builder.append(", isGetMedicine=");
		builder.append(isGetMedicine);
		builder.append(", u_id=");
		builder.append(user_id);
		builder.append(", r_status=");
		builder.append(r_status);
		builder.append("]");
		return builder.toString();
	}
	
	
	
}
