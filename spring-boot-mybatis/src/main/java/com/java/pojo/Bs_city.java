package com.java.pojo;

public class Bs_city {
	private Integer CITY_ID;			//自增列
	private String CITY_CODE;		//市代码
	private String CITY_NAME;		//市名称
	private String SHORT_NAME;		//简称
	private String PROVINCE_CODE;	//省代码
	private String LNG;				//经度
	private String LAT;				//纬度
	private Integer SORT;				//排序
	private String CREATED_DATE;	//创建时间
	private String MODIFY_DATE;		//修改时间
	private String MEMO;			//备注
	private Integer DATA_STATE;			//状态
	public int getCITY_ID() {
		return CITY_ID;
	}
	public void setCITY_ID(int cITY_ID) {
		CITY_ID = cITY_ID;
	}
	public String getCITY_CODE() {
		return CITY_CODE;
	}
	public void setCITY_CODE(String cITY_CODE) {
		CITY_CODE = cITY_CODE;
	}
	public String getCITY_NAME() {
		return CITY_NAME;
	}
	public void setCITY_NAME(String cITY_NAME) {
		CITY_NAME = cITY_NAME;
	}
	public String getSHORT_NAME() {
		return SHORT_NAME;
	}
	public void setSHORT_NAME(String sHORT_NAME) {
		SHORT_NAME = sHORT_NAME;
	}
	public String getPROVINCE_CODE() {
		return PROVINCE_CODE;
	}
	public void setPROVINCE_CODE(String pROVINCE_CODE) {
		PROVINCE_CODE = pROVINCE_CODE;
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
	public String getMEMO() {
		return MEMO;
	}
	public void setMEMO(String mEMO) {
		MEMO = mEMO;
	}
	public int getDATA_STATE() {
		return DATA_STATE;
	}
	public void setDATA_STATE(int dATA_STATE) {
		DATA_STATE = dATA_STATE;
	}
	@Override
	public String toString() {
		return "Bs_city [CITY_ID=" + CITY_ID + ", CITY_CODE=" + CITY_CODE + ", CITY_NAME=" + CITY_NAME + ", SHORT_NAME="
				+ SHORT_NAME + ", PROVINCE_CODE=" + PROVINCE_CODE + ", LNG=" + LNG + ", LAT=" + LAT + ", SORT=" + SORT
				+ ", CREATED_DATE=" + CREATED_DATE + ", MODIFY_DATE=" + MODIFY_DATE + ", MEMO=" + MEMO + ", DATA_STATE="
				+ DATA_STATE + "]";
	}
	
}
