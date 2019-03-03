package com.lvzhi.test.http;

import java.io.IOException;

import org.apache.http.HttpEntity;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class HttpTest {

	@org.junit.Test
	public void test() {
		String url = "http://api.map.baidu.com/geocoder/v2/?address=河南省南阳市建设中路666号&output=json&ak=jWThkODiGhB1GpOSVhSqGVRf";
		JSONObject obj = httpGetRequest(url);
		System.out.println(obj.toJSONString());
		System.out.println(obj.getString("result"));
	}

	public static JSONObject httpGetRequest(String url) {
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
