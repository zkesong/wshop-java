package cn.bryans.springboot.ms_server.controller;

import cn.bryans.springboot.ms_server.mapper.SiteMapper;
import cn.bryans.springboot.ms_server.model.SiteStatistics;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Bryan Sun
 * @version V1.0
 * @e-mail bryansun@163.com
 * @date 2017/10/7 16:16
 * @Description:
 */
@RestController
public class SiteAPI {

    @Autowired
    private SiteMapper mapper;

    @GetMapping("visitor")
    public Object getVisitorCount(){
        return mapper.findOne(1);
    }

    @PostMapping("add")
    public Object addVisitor(SiteStatistics siteStatistics){
        mapper.updateOne(siteStatistics);
        return siteStatistics;
    }
}
