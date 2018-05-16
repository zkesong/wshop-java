package cn.bryans.springboot.ms_server.controller;

import cn.bryans.springboot.ms_server.component.WebConst;
import cn.bryans.springboot.ms_server.model.Customer;
import cn.bryans.springboot.ms_server.model.Permission;
import cn.bryans.springboot.ms_server.service.CustomerService;
import cn.bryans.springboot.ms_server.utils.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigureOrder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Random;
import java.util.UUID;

/**
 * @author KeSong Zeng
 * @version V1.0
 * @e-mail kesongzeng@163.com
 * @date 2018/4/22 16:21
 * @Description:
 */
@RestController
@RequestMapping("loginapi")
public class UserController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping("checkcode")
    public String initCheckCode(HttpServletRequest request){
        String checkCode = UUID.randomUUID().toString().substring(0, 4);
        HttpSession session = request.getSession();
        session.setAttribute(WebConst.CHECKCODE_IN_SESSION, checkCode);
        return "{\"checkCode\": \"" + checkCode + "\", \"sessionId\": \"" + session.getId() + "\"}";
    }

    @RequestMapping("/checklogin")
    public String checkLogin(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        String code = (String) session.getAttribute(WebConst.CHECKCODE_IN_SESSION);
        String reqCode = request.getParameter("checkCode");
        if(!StringUtil.instance().hasLength(reqCode) || !reqCode.equals(code)){
            return "{\"status\":" + 0 +"}";
        }
        String reqName = request.getParameter("username");
        String reqWd = request.getParameter("password");
        Customer customer = customerService.queryCustomerByName(reqName);
        if(customer == null || !customer.getPassword().equals(reqWd)){
            return "{\"status\":" + 0 + "}";
        }
        List<Permission> permissions = customerService.listPermissionsByName(reqName);
        customer.setPermissions(permissions);
        session.setAttribute(WebConst.USER_IN_SESSION, customer);
        String token = UUID.randomUUID().toString();
        return "{\"status\":" + 1 + ",\"token\":\"" + token + "\"}";
    }
}
