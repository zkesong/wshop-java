package cn.bryans.springboot.ms_server.controller;

import cn.bryans.springboot.ms_server.mapper.PhotoMapper;
import cn.bryans.springboot.ms_server.model.Photo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author KeSong Zeng
 * @version V1.0
 * @e-mail kesongzeng@163.com
 * @date 2017/11/18 18:07
 * @Description:
 */
@RestController
@RequestMapping("photo")
public class PhotoController {
    @Autowired
    private PhotoMapper mapper;

    @GetMapping("all")
    public List<Photo> findAll(){
        return mapper.findAll();
    }
}
