package com.finance.utils;

import java.util.Map;


/**
 * 微信xml消息处理流程逻辑类
 * 
 * @author pamchen-1
 * 
 */
public class WeChatProcessUtil {
	/**
	 * 解析处理xml、获取智能回复结果（通过图灵机器人api接口）
	 * 
	 * @param xml
	 *            接收到的微信数据
	 * @return 最终的解析结果（xml格式数据）
	 */
	public String processWechatMag(Map<String, String> result) {
		String returnStr = null;
		String returnStrXml = null;
		if ("text".endsWith(result.get("MsgType"))||"voice".endsWith(result.get("MsgType"))) {
			if (result.get("Content").equals("noBind")) {
				returnStr = "您未绑定主机，请绑定后再试！";
			}  else if (result.get("Content").equals("noOrder")) {
				returnStr = "指令不存在，请输入正确指令后再试！";
			}  else if (result.get("Content").equals("noChannel")) {
				returnStr = "主机不在线，请稍后再试！";
			}  else if (result.get("Content").equals("error")) {
				returnStr = "指令错误或网络异常，请稍后再试！";
			}  else if (result.get("Content").equals("noBindDevice")) {
				returnStr = "您没有绑定相应设备，请绑定设备后再试！";
			}
			else {
				returnStr = result.get("Content");
			}
			returnStrXml = new WeChatFormatXmlProcess().formatXmlAnswer(result.get("FromUserName"),result.get("ToUserName"),returnStr);
		}
		return returnStrXml;
	}
}