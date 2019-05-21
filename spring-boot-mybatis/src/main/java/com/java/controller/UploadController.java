package com.java.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class UploadController {

	@RequestMapping("uploadAction")
	@ResponseBody
	public Map<String, Object> upload(MultipartFile file) throws IllegalStateException, IOException {
		file.transferTo(new File("D:/MyDownLoad/"+file.getName()));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("msg","上传成功");
		return map;
	}

}
