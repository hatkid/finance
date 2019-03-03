package com.finance.utils;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

/**
 * 解析接收到的微信xml，返回消息对象
 * 
 * @author pamchen-1
 * 
 */
public class WeChatReceiveXmlProcess {
	/**
	 * 解析微信xml消息
	 * 
	 * @param strXml
	 * @return
	 */
	public static Map<String, String> parseXml(String strXml) {
		Map<String, String> map = new HashMap<String, String>();
		try {
			if (StringUtils.isEmpty(strXml))
				return null;
			// 将字符串转化为XML文档对象
			Document document = DocumentHelper.parseText(strXml);
			// 获得文档的根节点
			Element root = document.getRootElement();
			// 遍历根节点下所有子节点
			Iterator<?> iter = root.elementIterator();
			// 遍历所有结点
			while (iter.hasNext()) {
				Element ele = (Element) iter.next();
				map.put(ele.getName(), ele.getText());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
}