package cn.bryans.springboot.ms_server.mapper;

import cn.bryans.springboot.ms_server.model.Video;
import cn.bryans.springboot.ms_server.model.VideoInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author KeSong Zeng
 * @version V1.0
 * @e-mail kesongzeng@163.com
 * @date 2017/11/12 11:11
 * @Description:
 */
@Mapper
public interface VideoMapper {

    @ResultMap("map1")
    @Select("select * from video_detail where vid = #{vid}")
    List<Video> findAll(@Param("vid") int id);

    @ResultMap("map2")
    @Select("select * from video")
    List<VideoInfo> findAllInfo();
}
