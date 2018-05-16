package cn.bryans.springboot.ms_server.filter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Bryan Sun
 * @version V1.0
 * @e-mail bryansun@163.com
 * @date 2017/10/8 20:17
 * @Description:
 */
@Component
public class AjaxHeaderFilter extends OncePerRequestFilter {
    private Logger logger = LoggerFactory.getLogger(AjaxHeaderFilter.class);

    public AjaxHeaderFilter() {
        logger.info("cn.bryans.springboot.starter_01.filter.AjaxHeaderFilter =======> 初始化ajax跨域请求");
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        response.addHeader("Access-Control-Allow-Origin", "http://kslive.cn");
        response.addHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE");
        filterChain.doFilter(request, response);
    }
}
