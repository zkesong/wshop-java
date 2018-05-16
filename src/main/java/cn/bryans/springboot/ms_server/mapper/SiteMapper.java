package cn.bryans.springboot.ms_server.mapper;

import cn.bryans.springboot.ms_server.model.SiteStatistics;
import org.apache.ibatis.annotations.*;

/**
 * @author Bryan Sun
 * @version V1.0
 * @e-mail bryansun@163.com
 * @date 2017/10/7 14:42
 * @Description:
 */
@Mapper
public interface SiteMapper {

    @ResultMap("map1")
    @Select("select id,visitorCount,articleCount from site_statistics where id = #{id}")
    SiteStatistics findOne(@Param("id") int id);

    @Update("update site_statistics set visitorCount = #{siteStatistics.visitorCount}")
    void updateOne(@Param("siteStatistics") SiteStatistics siteStatistics);
}
