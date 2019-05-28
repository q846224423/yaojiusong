package com.java.pojo;

public class User_big {
	private Integer user_id;//用户id
	private String user_name;//用户用户名
	private Integer user_age;//用户年龄
	private String user_sex;//用户性别
	private String user_card;//用户身份证
	private	Integer user_control;//用户权限控制
	private String user_tel;//用户手机号
	private String user_address;//收获地址
	private Integer user_countyid;//县的id
	private Integer people_id;//角色表id
	
	private Integer id;//用户个人对应id
	private String username;//用户对应账号
	private String pwd;//用户对应密码
	private Integer role;//用户对应角色
	
	private String areaCode;
	private String cityCode;
	private String areaName;
	
	private Integer cityId;
	private String cityName;
	
	private Integer provinceId;
	private String provinceCode;
	private String provinceName;
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public Integer getUser_age() {
		return user_age;
	}
	public void setUser_age(Integer user_age) {
		this.user_age = user_age;
	}
	public String getUser_sex() {
		return user_sex;
	}
	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}
	public String getUser_card() {
		return user_card;
	}
	public void setUser_card(String user_card) {
		this.user_card = user_card;
	}
	public Integer getUser_control() {
		return user_control;
	}
	public void setUser_control(Integer user_control) {
		this.user_control = user_control;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public Integer getUser_countyid() {
		return user_countyid;
	}
	public void setUser_countyid(Integer user_countyid) {
		this.user_countyid = user_countyid;
	}
	public Integer getPeople_id() {
		return people_id;
	}
	public void setPeople_id(Integer people_id) {
		this.people_id = people_id;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
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
	public Integer getRole() {
		return role;
	}
	public void setRole(Integer role) {
		this.role = role;
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
	public Integer getCityId() {
		return cityId;
	}
	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public Integer getProvinceId() {
		return provinceId;
	}
	public void setProvinceId(Integer provinceId) {
		this.provinceId = provinceId;
	}
	public String getProvinceCode() {
		return provinceCode;
	}
	public void setProvinceCode(String provinceCode) {
		this.provinceCode = provinceCode;
	}
	public String getProvinceName() {
		return provinceName;
	}
	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}
	@Override
	public String toString() {
		return "User_big [user_id=" + user_id + ", user_name=" + user_name + ", user_age=" + user_age + ", user_sex="
				+ user_sex + ", user_card=" + user_card + ", user_control=" + user_control + ", user_tel=" + user_tel
				+ ", user_address=" + user_address + ", user_countyid=" + user_countyid + ", people_id=" + people_id
				+ ", id=" + id + ", username=" + username + ", pwd=" + pwd + ", role=" + role + ", areaCode=" + areaCode
				+ ", cityCode=" + cityCode + ", areaName=" + areaName + ", cityId=" + cityId + ", cityName=" + cityName
				+ ", provinceId=" + provinceId + ", provinceCode=" + provinceCode + ", provinceName=" + provinceName
				+ "]";
	}
	
	
}
