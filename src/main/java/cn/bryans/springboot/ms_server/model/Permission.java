package cn.bryans.springboot.ms_server.model;

/**
 * @author KeSong Zeng
 * @version V1.0
 * @e-mail kesongzeng@163.com
 * @date 2018/4/22 15:54
 * @Description:
 */
public class Permission {

    private String name;

    public Permission(String name){
        this.name = name;
    }

    public String getPermission() {
        return this.name;
    }

    public final static String CUSTOMER = "customer";

    public final static String SALER = "saler";
}
