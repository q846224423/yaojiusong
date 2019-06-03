package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.CommonMapper;
import com.java.mapper.DoctorChangeMapper;
import com.java.mapper.DoctorMapper;
import com.java.mapper.DrugstoreMapper;
import com.java.mapper.KbMapper;
import com.java.mapper.KsMapper;
import com.java.mapper.KskbMapper;
import com.java.mapper.UsersMapper;
import com.java.pojo.Doctor;
import com.java.pojo.DoctorChange;
import com.java.pojo.Doctor_big;
import com.java.pojo.DrugStore;
import com.java.pojo.DrugStore_copy;
import com.java.pojo.Kb;
import com.java.pojo.Pcad;
import com.java.pojo.Shop_orderx;
import com.java.pojo.Shop_orderz;
import com.java.pojo.KbKsZhongjianlei;
import com.java.pojo.Ks;
import com.java.pojo.Oud;
import com.java.pojo.Pca;
import com.java.pojo.Users;
import com.java.pojo.Users_copy;
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
	@Autowired
	private DoctorChangeMapper doctorChangeMapper;

	/*
	 * 所有医生操作
	 */

	// 查询所有医生
	public List<Doctor> selectAllDoctor() {
		List<Doctor> selectall = doctorMapper.selectall();
		return selectall;
	}

	// 查询单个医生
	public Doctor_big selectOneDoctor(int id) {
		Doctor_big selectone = doctorMapper.selectone(id);
		return selectone;
	}

	// 修改一个医生
	public int updateDoctor(Doctor doctor) {
		int update = doctorMapper.update(doctor);
		return update;
	}

	// 添加一个医生
	public int insertDoctor(Doctor doctor) {
		int insert = doctorMapper.insert(doctor);
		return insert;
	}

	// 删除一个医生
	public int deleteDoctor(int id) {
		int delete = doctorMapper.delete(id);
		return delete;
	}

	// 医生总条数
	public int AllDoctorNum() {
		return doctorMapper.AllDoctorNum();
	}

	// 查所有医师
	public List<ZhongjianCalssYiShi> selectAll01() {
		return doctorMapper.selectAll01();
	}

	/*
	 * 所有药店操作
	 */

	// 查询所有药店
	public List<DrugStore> selectAllDrugStore() {
		List<DrugStore> dsselectall = drugstoreMapper.dsselectall();
		return dsselectall;
	}

	// 查询所有门店信息
	public List<Pcad> selectAllDs() {
		List<Pcad> selectAllDs = drugstoreMapper.selectAllDs();
		return selectAllDs;
	}

	// 查询认证门店总数
	public int SelectAllStoreNum() {
		int allNum = drugstoreMapper.AllNum();
		return allNum;
	}

	// 查询所有未认证门店
	public List<DrugStore_copy> selectAllDs2() {
		List<DrugStore_copy> selectAllDs2 = drugstoreMapper.selectAllDs2();
		return selectAllDs2;
	}

	// 查询所有未认证门店总数
	public int SelectAllStoreNum2() {
		int allNum2 = drugstoreMapper.AllNum2();
		return allNum2;
	}

	// 查询单个药店
	public DrugStore selectOneDrugStore(int id) {
		DrugStore dsselectone = drugstoreMapper.dsselectone(id);
		return dsselectone;
	}

	// 查询单条未认证门店
	public DrugStore_copy selectOneDC(int id) {
		DrugStore_copy selectOneDC = drugstoreMapper.selectOneDC(id);
		return selectOneDC;
	}

	// 修改一个药店
	public int updateDrugStore(DrugStore drugStore) {
		int dsupdate = drugstoreMapper.dsupdate(drugStore);
		return dsupdate;
	}

	// 添加一个药店
	public int insertDrugStore(DrugStore drugStore) {
		int dsinsert = drugstoreMapper.dsinsert(drugStore);
		return dsinsert;
	}

	// 删除一个药店
	public int deleteOneDrugStore(int id) {
		int dsdelete = drugstoreMapper.dsdelete(id);
		return dsdelete;
	}

	// 同意认证
	public int updateTYRZ(int id) {
		int updateTYRZ = drugstoreMapper.updateTYRZ(id);
		return updateTYRZ;
	}

	// 拒绝认证
	public int updateJJRZ(int id) {
		int updateJJRZ = drugstoreMapper.updateJJRZ(id);
		return updateJJRZ;
	}

	// 删除门店申请
	public int deleteOneSQ(int id) {
		int deleteOneSQ = drugstoreMapper.deleteOneSQ(id);
		return deleteOneSQ;
	}

	// 修改门店信息
	public int updateOneStore(DrugStore_copy drugStore_copy) {
		int updateStore = drugstoreMapper.updateStore(drugStore_copy);
		return updateStore;
	}

	/*
	 * 所有用户操作
	 */

	// 查询所有用户
	public List<Users> selectAllUsers() {
		List<Users> selectAllUsers = usersMapper.selectAllUsers();
		return selectAllUsers;
	}

	// 查询单个用户
	public Users selectOneUsers(int id) {
		Users selectOneUsers = usersMapper.selectOneUsers(id);
		return selectOneUsers;
	}

	// 修改一个用户
	public int updateUsers(Users users) {
		int updateUsers = usersMapper.updateUsers(users);
		return updateUsers;
	}

	// 添加一个用户
	public int insertUsers(Users users) {
		int insertOneUsers = usersMapper.insertOneUsers(users);
		return insertOneUsers;
	}

	// 删除一个用户
	public int deleteOneUsers(int id) {
		int deleteOneUsers = usersMapper.deleteOneUsers(id);
		return deleteOneUsers;
	}

	// 查询用户总数
	public int selectAllUsersNum() {
		int allNum = usersMapper.AllNum();
		return allNum;
	}

	// 注销一个用户
	public int deleteP(int id) {
		int deleteP = commonMapper.deleteP(id);
		return deleteP;
	}

	// 查询所有审核用户
	public List<Users_copy> selectUC() {
		List<Users_copy> selectUC = usersMapper.selectUC();
		return selectUC;
	}

	// 查询单个审核用户
	public Users_copy selectOneUC(int id) {
		Users_copy selectOneUC = usersMapper.selectOneUC(id);
		return selectOneUC;
	}

	// 通过用户实名
	public int updateTYSM(int id) {
		int updateTYSM = usersMapper.updateTYSM(id);
		return updateTYSM;
	}

	// 拒绝用户实名
	public int updateJJSM(int id) {
		int updateJJSM = usersMapper.updateJJSM(id);
		return updateJJSM;
	}

	// 查询修改用户个数
	public int selectAllUCNum() {
		int selectAllUCNum = usersMapper.selectAllUCNum();
		return selectAllUCNum;
	}

	// 删除修改用户信息
	public int deleteUC(int id) {
		int deleteUC = usersMapper.deleteUC(id);
		return deleteUC;
	}

	// 查所有科室
	public List<Ks> selectAllKs() {
		return ksMapper.selectAllKs();
	}

	// 查科室总条数
	public int ksAll() {
		return ksMapper.ksAll();
	}

	// 根据科室id查科别
	public List<KbKsZhongjianlei> selectAllkb(int id) {
		return kskbMapper.selectAllkb(id);
	}

	// 科别总条数
	public int Allkbnum(int id) {
		return kskbMapper.Allkbnum(id);
	}

	// 添加一个科室
	public int insertOneKs(Ks ks) {
		return ksMapper.insertOneKs(ks);
	}

	// 删除一个科室
	public int deleteOneKs(int id) {
		return ksMapper.deleteOneKs(id);
	}

	// 修改一个科室
	public int updateOneKs(Ks ks) {
		return ksMapper.updateOneKs(ks);
	}

	// 添加科
	public int insertOneKb(Kb kb) {
		return kbmapper.insertOneKb(kb);
	}

	// 根据县id查找省市县
	public Pca selectPCA(int id) {
		Pca selectPCA = commonMapper.selectPCA(id);
		return selectPCA;
	}

	// 查询所有未认证的医师
	public List<DoctorChange> selectwrz() {
		return doctorChangeMapper.selectwrz();
	}

	// 查询所有未认证医师的总数
	public int wrzNum() {
		return doctorChangeMapper.wrzNum();
	}

	// 根据id查单个医师
	public DoctorChange findonedoctor(int id) {
		return doctorChangeMapper.findonedoctor(id);
	}

	// 后台查看用户非处方订单主表
	public List<Oud> aSelectOrderZ() {
		List<Oud> aSelectOrderZ = drugstoreMapper.aSelectOrderZ();
		return aSelectOrderZ;
	}

	// 通过主订单的z_id查找出详单信息
	public List<Shop_orderx> ydOrderx(int id) {
		List<Shop_orderx> ydOrderx = drugstoreMapper.ydOrderx(id);
		return ydOrderx;
	}

	// 统计订单总数
	public int OAllNum() {
			int oAllNum = drugstoreMapper.OAllNum();
			return oAllNum;
	}

	//审核医师
	public int shenheyishi(int id) {
		return doctorChangeMapper.shenheyishi(id);
	}

	
}
