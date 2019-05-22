package com.java;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.scheduling.annotation.EnableScheduling;
//本地服务器启动
@SpringBootApplication
//扫描mapper
@MapperScan("com.java.mapper")
//echcache缓存
@EnableCaching
//定时器，一定时间执行
@EnableScheduling
public class App {
	public static void main(String[] args) {
		SpringApplication.run(App.class, args);
		System.out.println("启动成功了");
	}
}
