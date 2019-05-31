package com.java.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.java.pojo.Doctor;
import com.java.pojo.DoctorChange;
import com.java.pojo.Doctor_big;
import com.java.pojo.Kb;
import com.java.pojo.User_big;
import com.java.pojo.Users_biger;
import com.java.pojo.Users_copy;
import com.java.pojo.ZhongjianCalssYiShi;
import com.java.service.DoctorChangeservice;
import com.java.service.Doctorservice;
import com.java.service.KbService;

@Controller
public class DoctorController {
	@Autowired
	private Doctorservice big;
	
	@Autowired
	private KbService kb;
	
   @Autowired
   private Doctorservice d1;
   
   @Autowired
   private DoctorChangeservice dc;
   

	
	// iframe显示jsp代码左 不要动
		@RequestMapping("public_left")
		public String public_left() {
			return "chen/public_left";

		}

		// iframe显示jsp代码头 不要动
		@RequestMapping("public_header")
		public String public_header() {
			return "chen/public_header";

		}

		// iframe显示jsp代码医生个人信息 不要动
		@RequestMapping("zixun_dtl")
		public String doctorInfo() {
			return "chen/zixun_dtl";

		}

		// iframe显示jsp代码 不要动
		@RequestMapping("change_psw")
		public String change_psw() {
			return "chen/change_psw";

		}

		// iframe显示jsp代码 不要动
		@RequestMapping("doctorrz")
		public String doctorrz() {
			return "chen/doctorrz";

		}

		// iframe显示jsp代码 不要动
		@RequestMapping("doctorwzjlu")
		public String doctorwzjlu(HttpServletRequest request,Doctor doctor,@RequestParam(defaultValue = "1", value = "pageNum") Integer pageNum) {
			int id1 = 5;
			PageHelper.startPage(pageNum, 5);
			
			Doctor_big p = (Doctor_big)request.getSession().getAttribute("doctor");	 
			
			List<Users_biger> userall = big.userall(p.getD_id(),id1);
			
			System.out.println(userall.toString());
			
			PageInfo<Users_biger> pageInfo = new PageInfo<Users_biger>(userall);	
			request.getSession().setAttribute("userall", userall);
			request.getSession().setAttribute("pageInfo", pageInfo);
			return "chen/doctorwzjlu";
		}

		// iframe显示jsp代码 不要动
		@RequestMapping("doctorwzjlu1")
		public String doctorwzjlu1() {
			return "chen/doctorwzjlu1";
		}

		// iframe显示jsp代码 不要动
		@RequestMapping("loginb1")
		public String loginb1() {
			return "chen/loginb1";

		}

	
	//修改跳转
		@RequestMapping("updatesession")
		public String doctorupdate(HttpServletRequest request ,Doctor doctor) {
			Doctor_big p = (Doctor_big)request.getSession().getAttribute("doctor");
			big.update(doctor);
			Doctor_big doctor1 = big.selectone(p.getPeople_id());
			request.getSession().setAttribute("doctor", doctor1);
			return "chen/updatesession";

		}
		//去修改
		@RequestMapping("doctorupdate")
		public String doctortoupdate(){
			
			
			return  "chen/doctorupdate";
		}
		//通过科室的id查科别
		@ResponseBody
		@RequestMapping(value = "doctorkb", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")	
		public List<Kb> doctorkb(int id) {

	
		
			 return kb.selectkb(id);		
		}
		//医生修改信息审核
		@RequestMapping("examine")
		public String examine(MultipartFile filename,HttpServletRequest rq) throws IllegalStateException, IOException {
			//获取IDcard文件夹所在的绝对路径
			String path="D:/Git/ck/yaojiusong/spring-boot-mybatis/src/main/resources/static/upload/chen";
			String fileName = filename.getOriginalFilename();
			//上传
			MultipartHttpServletRequest request = (MultipartHttpServletRequest)rq;
//			filename.transferTo(new File(path+fileName));
			Doctor_big p = (Doctor_big)request.getSession().getAttribute("doctor");
			
			
			String  d_name =request.getParameter("d_name");
			System.out.println(d_name);	
			String  d_sex =request.getParameter("d_sex");
			System.out.println(d_sex);	
			String  d_tel =request.getParameter("d_tel");
			System.out.println(d_tel);	
			String  d_zc =request.getParameter("d_zc");
			System.out.println(d_zc);	
			String  d_introduce =request.getParameter("d_introduce");
			System.out.println(d_introduce);	
			
			
			int  kb_id =Integer.parseInt(request.getParameter("kb").toString());
			System.out.println(kb_id);			
			double d_money =Double.valueOf(request.getParameter("d_money"));
			System.out.println(d_money);
			int  d_age =Integer.parseInt(request.getParameter("d_age"));
			System.out.println(d_age);
			
			
			
			
			
/*			int  d_id =Integer.parseInt(request.getParameter("d_id"));*/
			
			int d_id=p.getD_id();
			System.out.println(d_id);
			
			int d_change=p.getD_change();
			System.out.println(d_change);
			
		   int  d_state=p.getD_state();
		   System.out.println(d_state);
		
		   int  people_id=p.getPeople_id();
		    System.out.println(people_id);
		
			int  d_control=p.getD_control();
			System.out.println(d_control);
			
			
			

			
			
			String d_head = "upload/chen/"+fileName;
		

			
			
			Doctor d = new Doctor();
			d.setD_age(d_age);
    		d.setD_change(d_change);
		     d.setD_control(d_control);
			d.setD_head(d_head);
			d.setD_id(d_id);
			d.setD_introduce(d_introduce);
			d.setD_money(d_money);
			d.setD_name(d_name);
			d.setD_sex(d_sex);
			d.setD_state(d_state);
			d.setD_tel(d_tel);
			d.setD_zc(d_zc);
			d.setKb_id(kb_id);
			


		
			


		    //改变状态审核中，即control为1
		    d1.d_change(d_change);
		    
			dc.insert(d);
			
			return "chen/zixun_dtl";	
		}
		
		
}
