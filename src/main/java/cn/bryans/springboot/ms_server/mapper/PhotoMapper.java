package cn.bryans.springboot.ms_server.mapper;

import cn.bryans.springboot.ms_server.model.Photo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author KeSong Zeng
 * @version V1.0
 * @e-mail kesongzeng@163.com
 * @date 2017/11/18 18:03
 * @Description:
 */
@Mapper
public interface PhotoMapper {

    @Select("select * from tb_photo")
    List<Photo> findAll();
}
