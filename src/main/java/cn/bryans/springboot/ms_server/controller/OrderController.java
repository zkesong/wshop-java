package cn.bryans.springboot.ms_server.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2018/5/15.
 */
@RestController
@RequestMapping("orderapi")
public class OrderController {

    @RequestMapping("/orderlist")
    public Object getOrderList(@RequestParam String ordersn, @RequestParam String status
            , @RequestParam String pageNo){
        System.out.println(ordersn);
        return "{\"a\":\"1\"}";
    }
}
