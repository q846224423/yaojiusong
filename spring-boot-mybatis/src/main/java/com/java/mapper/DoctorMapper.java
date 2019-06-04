package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.java.pojo.Doctor;
import com.java.pojo.DoctorChange;
import com.java.pojo.Doctor_big;
import com.java.pojo.People;
import com.java.pojo.Users_biger;
import com.java.pojo.ZhongjianCalssYiShi;
@Repository
public interface DoctorMapper {
    
	//医生查询所有
    @Select("select * from doctor")
    List<Doctor> selectall();
    //医生查询单条
    @Select("select * from shituone where people_id=#{id}")
    Doctor_big selectone(int id);
    //医生修改数据
    @Update("update `shop1`.`doctor` set`d_name` = #{d_name},`d_sex` = #{d_sex},`d_age` = #{d_age},`d_control` = #{d_control},`d_url` = #{d_url},`d_introduce` = #{d_introduce},`d_state` = #{d_state},`kb_id` = #{kb_id},`d_zc` = #{d_zc},`d_money` = #{d_money},`d_tel` = #{d_tel},`people_id` = #{people_id},`d_head` = #{d_head}, d_change=#{d_change}  where `d_id` = #{d_id}")
    int update(Doctor doctor);
    //医生添加数据
    @Insert("insert into `shop1`.`doctor` (`d_name`,`d_sex`,`d_age`,`d_control`,`d_url`,`d_introduce`,`d_state`,`kb_id`,`d_zc`,`d_money`,`d_tel`,`people_id`,`d_head`) values(#{d_name},#{d_sex},#{d_age},#{d_control},#{d_url},#{d_introduce}#{d_state},#{kb_id},#{d_zc},#{d_money},#{d_tel},#{people_id},#{d_head})")
    int insert(Doctor doctor);
    //医生删除数据
    @Delete("delete from doctor where d_id = #{id}")
    int delete(int id);
	//用户提交审核后改变其认证状态
	@Update("update doctor set d_change=1 where d_id =#{id}")
	public void d_change(int id);
	
    
	//通过医生id查用户信息
	@Select("select * from wzjlu where d_id =#{id} order by r_time desc")
	public List<Users_biger> userall(@Param("id")int id,@Param("id1")int id1);
	//通过用户id查单条
	@Select("select * from wzjlu where r_id =#{id}")
    public Users_biger userone(int id);
	//医生改变处方状态
	@Update("update record set isOpenDrug=2 where isOpenDrug=1 and user_id =#{id}")
	public void d_isOpenDrug(int id);
	
    
    
   
    //查询所有医生提交的修改
    @Select("select * from doctorchange")
    public DoctorChange selectAllDc();
    //查询单个医生提交的修改
    @Select("select * from doctorchange where d_id = #{id}")
    public DoctorChange selectOneDc(int id);
    //增加医生修改数据
    @Insert("insert into doctorchange values(#{d_name},#{d_age},#{d_sex},#{d_tel},#{d_kb_id},#{d_money},#{d_zc},#{d_introduce},#{d_head},#{d_id}),#{d_change}")
    public int insertDc(DoctorChange doctorChange);
    //删除医生修改数据
    @Delete("delete from doctorchange where dc_id = #{id}")
    public int deleteDc(int id);
    //修改医生删除数据
    @Update("update doctorchange set dc_name=#{dc_name},dc_age=#{dc_age},dc_sex=#{dc_sex},dc_tel=#{dc_tel},dc_kb_id=#{dc_kb_id},dc_money=#{dc_money},dc_zc=#{dc_zc},dc_introduce=#{dc_introduce},dc_head=#{dc_head},dc_id=#{dc_id}")
    public int updateDc(DoctorChange doctorChange);
    
	//查询医生总条数
	@Select("select count(0) from doctor")
	public int AllDoctorNum();
	
	//查询所有医师
	@Select("select * from shituone")
	List<ZhongjianCalssYiShi> selectAll01();
	
	//修改处方图片
	@Update ("update  record set  r_tel=#{0} where user_id=#{1}")
	public void  insertrtul(String r_tel ,int id);
	
	//医生行医资格认证
	@Update("update doctor set d_url=#{0} where d_id=#{1}")
	public void  updatexyzg(String d_tel ,int id);
	
	//医生的认证状态改变
	@Update("update doctor set d_control=1 where d_id=#{id}")
	public void  changerzzt(int id);

    //医生没有认证直接改变表
    @Update("update `shop1`.`doctor` set`d_name` = #{d_name},`d_sex` = #{d_sex},`d_age` = #{d_age},`d_control` = #{d_control},`d_introduce` = #{d_introduce},`d_state` = #{d_state},`kb_id` = #{kb_id},`d_zc` = #{d_zc},`d_money` = #{d_money},`d_tel` = #{d_tel},`people_id` = #{people_id},`d_head` = #{d_head} where `d_id` = #{d_id}")
    void updatemrz(Doctor doctor);
    
    //资格认证
    @Update("update `shop1`.`doctor` set d_control=2 where d_id=1")
    int updateRz(Doctor doctor);
    
    //查未认证的医师
    @Select("select * from shituone where d_id=1")
    List<ZhongjianCalssYiShi> selectRzYishi();
    
  //查未认证的医师
    @Select("select * from shituone where d_id=#{id}")
    Doctor selectRzYishi01(int id);
    
	//查询所有医师
	@Select("select * from shituone where d_id is not null")
	List<ZhongjianCalssYiShi> selectAll02();
	
	//doctorzucwc
	//判断用户名没重复，
	@Select("select * from people where username = #{username}")
	public People doctorzc1(String username);
	
	//添加入people表中
	@Insert("insert into people(username,pwd,role) values (#{username},#{pwd},#{role})")
	public void doctorzcp(People p);
	
	//添加入doctor表中
	@Insert("insert into doctor(kb_id,people_id) values (#{kb_id},#{people_id})")
	public void doctorzcd(Doctor d);
}
