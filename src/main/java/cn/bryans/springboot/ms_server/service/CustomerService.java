package cn.bryans.springboot.ms_server.service;

import cn.bryans.springboot.ms_server.model.Customer;
import cn.bryans.springboot.ms_server.model.Permission;

import java.util.List;

/**
 * @author KeSong Zeng
 * @version V1.0
 * @e-mail kesongzeng@163.com
 * @date 2018/4/22 16:33
 * @Description:
 */
public interface CustomerService {
    Customer queryCustomerByName(String name);

    List<Permission> listPermissionsByName(String name);
}
