package cn.bryans.springboot.ms_server.controller;

import cn.bryans.springboot.ms_server.mapper.VideoMapper;
import cn.bryans.springboot.ms_server.model.Video;
import cn.bryans.springboot.ms_server.model.VideoInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author KeSong Zeng
 * @version V1.0
 * @e-mail kesongzeng@163.com
 * @date 2017/11/12 11:19
 * @Description:
 */
@RestController
@RequestMapping("video")
public class VideoController {

    @Autowired
    private VideoMapper mapper;

    @GetMapping("detail")
    public List<Video> getAll(@RequestParam int id) {
        return mapper.findAll(id);
    }

    @GetMapping("list")
    public List<VideoInfo> getAll() {
        return mapper.findAllInfo();
    }
}
