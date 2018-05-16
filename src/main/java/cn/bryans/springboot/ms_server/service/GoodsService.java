package cn.bryans.springboot.ms_server.service;

import cn.bryans.springboot.ms_server.model.Goods;

import java.util.List;

/**
 * @author KeSong Zeng
 * @version V1.0
 * @e-mail kesongzeng@163.com
 * @date 2018/4/22 15:47
 * @Description:
 */
public interface GoodsService {

    void insertGoods(Goods goods);

    void updateGoods(Goods goods);

    void deleteGoods(int id);

    List<Goods> listIntrodGoods();

    List<Goods> listAllGoods();
}



