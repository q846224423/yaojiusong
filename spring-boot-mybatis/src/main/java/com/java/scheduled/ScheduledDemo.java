package com.java.scheduled;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * Scheduled定时任务
 *
 *
 */
@Component
public class ScheduledDemo {

	/**
	 * 定时任务方法
	 * @Scheduled:设置定时任务
	 * cron属性：cron表达式。定时任务触发是时间的一个字符串表达形式
	 */
	@Scheduled(cron="0/10 * * * * ?")
	public void scheduledMethod(){
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:SS");
		String format = simpleDateFormat.format(date);
		System.out.println("定时器被触发"+format);
	}
}
