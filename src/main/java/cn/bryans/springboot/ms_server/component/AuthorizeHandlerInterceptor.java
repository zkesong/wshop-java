package cn.bryans.springboot.ms_server.component;

import cn.bryans.springboot.ms_server.model.Customer;
import cn.bryans.springboot.ms_server.model.Permission;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * @author KeSong Zeng
 * @version V1.0
 * @e-mail kesongzeng@163.com
 * @date 2018/4/22 16:16
 * @Description:
 */
@Component
public class AuthorizeHandlerInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
                             Object handler) throws Exception {
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute(WebConst.USER_IN_SESSION);
        List<Permission> permissions = customer.getPermissions();
        if(permissions.size() < 1){
            return false;
        }
        String uri = request.getRequestURI();
        int position = uri.indexOf("?");
        String matchUri = uri;
        if(position != -1)
            matchUri = uri.substring(0, position);
        Map<String, Set<String>> resourceMap = (Map<String, Set<String>>)
                request.getServletContext().getAttribute("resourceMap");
        Set<String> needPermission = resourceMap.get(matchUri);
        for (Permission permission: permissions) {
            if(needPermission.contains(permission.getPermission())){
                return true;
            }
        }
        if(request.getHeader("X-Request-With") != null){
            response.getWriter().write("{\"status\":\"error\"" +
                    ",\"message\":\"没有权限\"}");
        }
        return false;
    }
}
