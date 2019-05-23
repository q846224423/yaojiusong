package com.java.pojo;

public class Bs_area {
	private int AREA_ID; 		 //自增列
	private String AREA_CODE;		 //区代码
	private String CITY_CODE; 	 //父级市代码
	private String AREA_NAME;	 //市名称
	private String SHORT_NAME;	 //简称
	private String LNG;			 //经度
	private String LAT;			 //纬度
	private int SORT;			 //排序
	private String CREATED_DATE; //创建时间
	private String MODIFY_DATE;	 //修改时间
	private int DATA_STATE; 	 //备注
	@Override
	public String toString() {
		return "Bs_area [AREA_ID=" + AREA_ID + ", AREA_CODE=" + AREA_CODE + ", CITY_CODE=" + CITY_CODE + ", AREA_NAME="
				+ AREA_NAME + ", SHORT_NAME=" + SHORT_NAME + ", LNG=" + LNG + ", LAT=" + LAT + ", SORT=" + SORT
				+ ", CREATED_DATE=" + CREATED_DATE + ", MODIFY_DATE=" + MODIFY_DATE + ", DATA_STATE=" + DATA_STATE
				+ "]";
	}
	public int getAREA_ID() {
		return AREA_ID;
	}
	public void setAREA_ID(int aREA_ID) {
		AREA_ID = aREA_ID;
	}
	public String getAREA_CODE() {
		return AREA_CODE;
	}
	public void setAREA_CODE(String aREA_CODE) {
		AREA_CODE = aREA_CODE;
	}
	public String getCITY_CODE() {
		return CITY_CODE;
	}
	public void setCITY_CODE(String cITY_CODE) {
		CITY_CODE = cITY_CODE;
	}
	public String getAREA_NAME() {
		return AREA_NAME;
	}
	public void setAREA_NAME(String aREA_NAME) {
		AREA_NAME = aREA_NAME;
	}
	public String getSHORT_NAME() {
		return SHORT_NAME;
	}
	public void setSHORT_NAME(String sHORT_NAME) {
		SHORT_NAME = sHORT_NAME;
	}
	public String getLNG() {
		return LNG;
	}
	public void setLNG(String lNG) {
		LNG = lNG;
	}
	public String getLAT() {
		return LAT;
	}
	public void setLAT(String lAT) {
		LAT = lAT;
	}
	public int getSORT() {
		return SORT;
	}
	public void setSORT(int sORT) {
		SORT = sORT;
	}
	public String getCREATED_DATE() {
		return CREATED_DATE;
	}
	public void setCREATED_DATE(String cREATED_DATE) {
		CREATED_DATE = cREATED_DATE;
	}
	public String getMODIFY_DATE() {
		return MODIFY_DATE;
	}
	public void setMODIFY_DATE(String mODIFY_DATE) {
		MODIFY_DATE = mODIFY_DATE;
	}
	public int getDATA_STATE() {
		return DATA_STATE;
	}
	public void setDATA_STATE(int dATA_STATE) {
		DATA_STATE = dATA_STATE;
	}

	
}
