package com.java.pojo;

public class Bs_province {	
	private Integer PROVINCE_ID;		//自增列
	private String PROVINCE_CODE;	//省份代码
	private String PROVINCE_NAME;	//省份名称
	private String SHORT_NAME;		//简称
	private String LNG;				//经度
	private String LAT;				//纬度
	private Integer SORT;				//排序
	private String CREATED_DATE;	//创建时间
	private String MODIFY_DATE;		//修改时间
	private String MEMO;			//备注
	private Integer DATA_STATE;			//状态
	@Override
	public String toString() {
		return "Bs_province [PROVINCE_ID=" + PROVINCE_ID + ", PROVINCE_CODE=" + PROVINCE_CODE + ", PROVINCE_NAME="
				+ PROVINCE_NAME + ", SHORT_NAME=" + SHORT_NAME + ", LNG=" + LNG + ", LAT=" + LAT + ", SORT=" + SORT
				+ ", CREATED_DATE=" + CREATED_DATE + ", MODIFY_DATE=" + MODIFY_DATE + ", MEMO=" + MEMO + ", DATA_STATE="
				+ DATA_STATE + "]";
	}
	public int getPROVINCE_ID() {
		return PROVINCE_ID;
	}
	public void setPROVINCE_ID(int pROVINCE_ID) {
		PROVINCE_ID = pROVINCE_ID;
	}
	public String getPROVINCE_CODE() {
		return PROVINCE_CODE;
	}
	public void setPROVINCE_CODE(String pROVINCE_CODE) {
		PROVINCE_CODE = pROVINCE_CODE;
	}
	public String getPROVINCE_NAME() {
		return PROVINCE_NAME;
	}
	public void setPROVINCE_NAME(String pROVINCE_NAME) {
		PROVINCE_NAME = pROVINCE_NAME;
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
}
