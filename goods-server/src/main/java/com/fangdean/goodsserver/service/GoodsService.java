package com.fangdean.goodsserver.service;

import com.fangdean.goodsserver.mapper.GoodsMapper;
import com.fangdean.goodsserver.model.Category;
import com.fangdean.goodsserver.model.Goods;
import com.fangdean.goodsserver.util.BeanHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class GoodsService {

    @Autowired
    private GoodsMapper goodsMapper;

    @Transactional(rollbackFor = Exception.class)
    public void goodsInsert(List<Goods> goodsList) {
        goodsList.forEach(goods -> {
            BeanHelper.setDefaultProp(goods, Goods.class);
            Goods goodsRet = goodsMapper.selectOne(goods.getUserId(), goods.getCategoryId(), goods.getId());
            if (goodsRet == null) {
                int ret = goodsMapper.insert(goods);
            } else if (goodsRet.getUpdateTime() < goods.getUpdateTime()) {
                int ret = goodsMapper.update(goods);
            } else {

            }
            System.out.println("goods result:" + goods.getName());
        });
    }


    public List<Goods> goodsQuery(String userId) {
        List<Goods> goodsList = goodsMapper.select(userId);
        return goodsList;
    }
}
