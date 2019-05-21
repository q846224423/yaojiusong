package com.java.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.java.App;
import com.java.service.StudentService;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes=App.class)
public class UserTest {
	@Autowired
	private StudentService s;
	@Test
	public void testFindUserById(){
		//第一次查询
		System.out.println(this.s.selectOne(1));
		
		//第二次查询
		System.out.println(this.s.selectOne(1));
	}
		


}
