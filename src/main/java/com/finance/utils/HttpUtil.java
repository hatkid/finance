package com.finance.utils;

import java.io.IOException;

import org.apache.http.HttpEntity;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import com.alibaba.fastjson.JSONObject;

/**
 * http的get请求，针对微信的get请求，使用的时候要判断结果是否为null
 * @author lvzhi
 *
 */
public class HttpUtil {

	
	/**
	 * 
	 * @param url 请求的url路径
	 * @return jsonobject对象
	 */
	public static JSONObject httpGetRequest(String url){
		CloseableHttpClient httpclient = HttpClients.createDefault();
        try {
	           HttpGet httpGet = new HttpGet(url);
	           CloseableHttpResponse response2 = httpclient.execute(httpGet);
	           HttpEntity entity2 = response2.getEntity();
	           String result = EntityUtils.toString(entity2);
	           JSONObject obj = JSONObject.parseObject(result);
	           return obj;
	           
        } catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
            try {
				httpclient.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
        }
		return null;
	}
	
}
