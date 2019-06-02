package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.CommonMapper;
import com.java.mapper.DoctorMapper;
import com.java.mapper.DrugstoreMapper;
import com.java.mapper.KbMapper;
import com.java.mapper.KsMapper;
import com.java.mapper.KskbMapper;
import com.java.mapper.UsersMapper;
import com.java.pojo.Doctor;
import com.java.pojo.Doctor_big;
import com.java.pojo.DrugStore;
import com.java.pojo.Kb;
import com.java.pojo.Pcad;
import com.java.pojo.KbKsZhongjianlei;
import com.java.pojo.Ks;
import com.java.pojo.Users;
import com.java.pojo.ZhongjianCalssYiShi;
import com.java.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private DoctorMapper doctorMapper;
	@Autowired
	private DrugstoreMapper drugstoreMapper;
	@Autowired
	private UsersMapper usersMapper;
	@Autowired
	private CommonMapper commonMapper;
	@Autowired
	private KsMapper ksMapper;
	@Autowired
	private KskbMapper kskbMapper;
	@Autowired
	private KbMapper kbmapper;
	
	/*
	 * 所有医生操作
	 */
	
	//查询所有医生
	public List<Doctor> selectAllDoctor() {
		List<Doctor> selectall = doctorMapper.selectall();
		return selectall;
	}

	//查询单个医生
	public Doctor_big selectOneDoctor(int id) {
		Doctor_big selectone = doctorMapper.selectone(id);
		return selectone;
	}

	//修改一个医生
	public int updateDoctor(Doctor doctor) {
		int update = doctorMapper.update(doctor);
		return update;
	}

	//添加一个医生
	public int insertDoctor(Doctor doctor) {
		int insert = doctorMapper.insert(doctor);
		return insert;
	}

	//删除一个医生
	public int deleteDoctor(int id) {
		int delete = doctorMapper.delete(id);
		return delete;
	}
	//医生总条数
	public int AllDoctorNum() {
		return doctorMapper.AllDoctorNum();
	}
	
	//查所有医师
	public List<ZhongjianCalssYiShi> selectAll01() {
		return doctorMapper.selectAll01();
	}
	
	/*
	 * 所有药店操作
	 */
	
	//查询所有药店
	public List<DrugStore> selectAllDrugStore() {
		List<DrugStore> dsselectall = drugstoreMapper.dsselectall();
		return dsselectall;
	}
	
	//查询所有门店信息
	public List<Pcad> selectAllDs(){
		List<Pcad> selectAllDs = drugstoreMapper.selectAllDs();
		return selectAllDs;
	}
	
	//查询认证门店总数
    public int SelectAllStoreNum() {
    	int allNum = drugstoreMapper.AllNum();
    	return allNum;
    }
	
	//查询单个药店
	public DrugStore selectOneDrugStore(int id) {
		DrugStore dsselectone = drugstoreMapper.dsselectone(id);
		return dsselectone;
	}

	//修改一个药店
	public int updateDrugStore(DrugStore drugStore) {
		int dsupdate = drugstoreMapper.dsupdate(drugStore);
		return dsupdate;
	}

	//添加一个药店
	public int insertDrugStore(DrugStore drugStore) {
		int dsinsert = drugstoreMapper.dsinsert(drugStore);
		return dsinsert;
	}

	//删除一个药店
	public int deleteOneDrugStore(int id) {
		int dsdelete = drugstoreMapper.dsdelete(id);
		return dsdelete;
	}
	
	/*
	 * 所有用户操作
	 */
	
	//查询所有用户
	public List<Users> selectAllUsers() {
		List<Users> selectAllUsers = usersMapper.selectAllUsers();
		return selectAllUsers;
	}

	//查询单个用户
	public Users selectOneUsers(int id) {
		Users selectOneUsers = usersMapper.selectOneUsers(id);
		return selectOneUsers;
	}

	//修改一个用户
	public int updateUsers(Users users) {
		int updateUsers = usersMapper.updateUsers(users);
		return updateUsers;
	}

	//添加一个用户
	public int insertUsers(Users users) {
		int insertOneUsers = usersMapper.insertOneUsers(users);
		return insertOneUsers;
	}

	//删除一个用户
	public int deleteOneUsers(int id) {
		int deleteOneUsers = usersMapper.deleteOneUsers(id);
		return deleteOneUsers;
	}

	//查询用户总数
	public int selectAllUsersNum() {
		int allNum = usersMapper.AllNum();
		return allNum;
	}
	
	//注销一个用户
	public int deleteP(int id) {
		int deleteP = commonMapper.deleteP(id);
		return deleteP;
	}

	//查所有科室
	public List<Ks> selectAllKs() {
		return ksMapper.selectAllKs();
	}

	//查科室总条数
	public int ksAll() {
		return ksMapper.ksAll();
	}

	//根据科室id查科别
	public List<KbKsZhongjianlei> selectAllkb(int id) {
		return kskbMapper.selectAllkb(id);
	}

	//科别总条数
	public int Allkbnum(int id) {
		return kskbMapper.Allkbnum(id);
	}

	//添加一个科室
	public int insertOneKs(Ks ks) {
		return ksMapper.insertOneKs(ks);
	}

	//删除一个科室
	public int deleteOneKs(int id) {
		return ksMapper.deleteOneKs(id);
	}

	//修改一个科室
	public int updateOneKs(Ks ks) {
		return ksMapper.updateOneKs(ks);
	}

	//添加科别
	public int insertOneKb(Kb kb) {
		return kbmapper.insertOneKb(kb);
	}

}
