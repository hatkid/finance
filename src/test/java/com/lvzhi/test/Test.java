package com.lvzhi.test;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

public class Test {

	@org.junit.Test
	public void test(){
		String json = "{\"access_token\"\"ACCESS_TOKEN\",\"expires_in\":7200,\"refresh_token\":\"REFRESH_TOKEN\",\"openid\":\"OPENID\",\"scope\":\"SCOPE\"}";
		JSONObject obj = JSON.parseObject(json);
		System.out.println(obj.get("expires_in"));
		System.out.println(obj.get("refresh_token"));
	}
	
	
	
	
	@org.junit.Test
	public void testUpload() throws Exception{
		FileInputStream fis = new FileInputStream(new File("F:\\eclipsecode\\management\\src\\main\\webapp\\upload\\新建文本文档 (2).txt"));
		
		byte[] buf = new byte[1024];
		int len = 0;
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		while((len = fis.read(buf)) != -1){
			baos.write(buf, 0, len);
		}
		
		if(fis != null){
			fis.close();
		}
		
		String content = new String(baos.toByteArray());
		System.out.println(content);
	}
}
