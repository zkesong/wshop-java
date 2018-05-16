package cn.bryans.springboot.ms_server.utils;

/**
 * Created by Administrator on 2018/5/16.
 */
public class StringUtil {
    private StringUtil(){}

    public boolean hasLength(String str){
        return str != null && !str.equals("");
    }

    public static StringUtil instance(){
        return InnerClass.util;
    }
    private static class InnerClass{
        private static StringUtil util = new StringUtil();
    }
}
