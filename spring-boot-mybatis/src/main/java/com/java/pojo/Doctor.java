package com.java.pojo;

public class Doctor {
	private int d_id;//医生id
	private String d_name;//医生名字
	private int d_age;//医生性别
	private String d_sex;//医生年龄
	private int d_control;//医生权限  默认0没认证 1认证中 已认证2
	private String d_url;//医生上传的行医资格
	private String d_head;//医生头像
	private String d_introduce;//医生介绍
	private int d_state;//医生状态 0 离线  1在线  2 问诊中
	private int kb_id;//科室科别
	private int d_zc;//医生职称
	private double d_money;//看病金额
	private String d_tel; //医生电话
	private int people_id; //对应people——id
}
