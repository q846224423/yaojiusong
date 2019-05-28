package com.java.pojo;

public class FjtArea {
	private Integer areaId;
	private String areaCode;
	private String cityCode;
	private String areaName;
	public Integer getAreaId() {
		return areaId;
	}
	public void setAreaId(Integer areaId) {
		this.areaId = areaId;
	}
	public String getAreaCode() {
		return areaCode;
	}
	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}
	public String getCityCode() {
		return cityCode;
	}
	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	@Override
	public String toString() {
		return "FjtArea [areaId=" + areaId + ", areaCode=" + areaCode + ", cityCode=" + cityCode + ", areaName="
				+ areaName + "]";
	}
	
	
}
