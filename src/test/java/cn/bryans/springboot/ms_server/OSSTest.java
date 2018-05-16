package cn.bryans.springboot.ms_server;

import cn.bryans.springboot.ms_server.utils.OSSUtil;

/**
 * @author KeSong Zeng
 * @version V1.0
 * @e-mail kesongzeng@163.com
 * @date 2017/11/14 21:21
 * @Description:
 */
public class OSSTest {
    public static void main(String[] args) {
      //  OSSUtil.putString("descreption", "hello world my name is kesongzeng" +
                //", and i love java because i never tired when i was tap the java code");
        System.out.println(OSSUtil.getString("descreption"));
    }
}
