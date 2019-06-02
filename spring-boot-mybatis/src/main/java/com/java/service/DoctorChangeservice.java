package com.java.service;

import com.java.pojo.Doctor;
import com.java.pojo.DoctorChange;

public interface DoctorChangeservice {

	
	int insert(Doctor doctor);
	
	void updated_change(int id);
}
