package com.finance.utils;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Formatter;
import java.util.UUID;  

public class WeChatJsSDKSign {
    public static void getSign(String code) {
        String jsapi_ticket = "kgt8ON7yVITDhtdwci0qec1PIDDnmIHTO8Pin-oLf2d1Xf9BTg6F2nsZhLXj-KjLN0PRKrlC0ulvr5Fq-Rh1NA";

        // 注意 URL 一定要动态获取，不能 hardcode
        String url = "http://1.lvzhi1116.applinzi.com/servlet/Test?code="+code+"&state=123";
    }
    
    

    public static String sign(String jsapi_ticket, String url, String timestamp, String nonce_str) {
        String string1 = null;
        String signature = "";
        //注意这里参数名必须全部小写，且必须有序
        string1 = "jsapi_ticket=" + jsapi_ticket +
                  "&noncestr=" + nonce_str +
                  "&timestamp=" + timestamp +
                  "&url=" + url;

        try
        {
            MessageDigest crypt = MessageDigest.getInstance("SHA-1");
            crypt.reset();
            crypt.update(string1.getBytes("UTF-8"));
            signature = byteToHex(crypt.digest());
        }
        catch (NoSuchAlgorithmException e)
        {
            e.printStackTrace();
        }
        catch (UnsupportedEncodingException e)
        {
            e.printStackTrace();
        }


        return signature;
    }

    private static String byteToHex(final byte[] hash) {
        Formatter formatter = new Formatter();
        for (byte b : hash)
        {
            formatter.format("%02x", b);
        }
        String result = formatter.toString();
        formatter.close();
        return result;
    }

    public static String create_nonce_str() {
        return UUID.randomUUID().toString();
    }

    public static String create_timestamp() {
        return Long.toString(System.currentTimeMillis() / 1000);
    }
    
    //https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx15a93be06fb648a4&redirect_uri=http%3A%2F%2F1.lvzhi1116.applinzi.com%2Fservlet%2FTest&response_type=code&scope=snsapi_base&state=123#wechat_redirect
}
