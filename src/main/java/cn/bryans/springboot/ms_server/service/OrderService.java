package cn.bryans.springboot.ms_server.service;

import cn.bryans.springboot.ms_server.model.Customer;
import cn.bryans.springboot.ms_server.model.Order;
import cn.bryans.springboot.ms_server.model.Saler;

import java.util.List;

/**
 * @author KeSong Zeng
 * @version V1.0
 * @e-mail kesongzeng@163.com
 * @date 2018/4/22 16:05
 * @Description:
 */
public interface OrderService {

    void insertOrder(Order order);

    void deleteOrder(Order order);

    List<Order> listOrderByCustomer(Customer customer);

    List<Order> listOrderBySaler(Saler saler);
}


