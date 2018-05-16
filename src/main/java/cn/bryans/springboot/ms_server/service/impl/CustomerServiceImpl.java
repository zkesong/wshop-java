package cn.bryans.springboot.ms_server.service.impl;

import cn.bryans.springboot.ms_server.model.Customer;
import cn.bryans.springboot.ms_server.model.Permission;
import cn.bryans.springboot.ms_server.service.CustomerService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/16.
 */
@Service
public class CustomerServiceImpl implements CustomerService{
    @Override
    public Customer queryCustomerByName(String name) {
        System.out.println("get user: " + name);
        Customer customer = new Customer();
        customer.setUsername(name);
        customer.setPassword("123456");
        return customer;
    }

    @Override
    public List<Permission> listPermissionsByName(String name) {
        return null;
    }
}
