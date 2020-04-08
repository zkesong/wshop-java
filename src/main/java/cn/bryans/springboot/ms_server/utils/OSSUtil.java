package cn.bryans.springboot.ms_server.utils;

import com.aliyun.oss.OSSClient;
import com.aliyun.oss.model.OSSObject;

import java.io.*;

/**
 * @author KeSong Zeng
 * @version V1.0
 * @e-mail kesongzeng@163.com
 * @date 2017/11/14 20:41
 * @Description:
 */
public class OSSUtil {
    private static final String BUCKET_NAME = "xxx";
    private static final String ENDPOINT = "https://xxx";
    private static final String ACCESSKEY_ID = "xxx";
    private static final String ACCESSKEY_SECRET = "xxx";

    private OSSUtil() {
    }

    public static OSSClient getClient() {
        return OSSUtilInner.client;
    }

    public static void putString(String key, String str) {
        getClient().putObject(BUCKET_NAME, key, new ByteArrayInputStream(str.getBytes()));
    }

    public static String getString(String key){
        OSSObject ossObject = getClient().getObject(BUCKET_NAME, key);
        InputStream in = ossObject.getObjectContent();
        BufferedReader reader = new BufferedReader(new InputStreamReader(in));
        char[] buffer = new char[1024];
        int len = -1;
        StringBuilder resultBuilder = new StringBuilder();
        try {
            while((len = reader.read(buffer)) != -1 ){
                resultBuilder.append(buffer,0,len);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return resultBuilder.toString();
    }

    private static class OSSUtilInner {
        private static OSSClient client = new OSSClient(ENDPOINT, ACCESSKEY_ID, ACCESSKEY_SECRET);
    }
}
