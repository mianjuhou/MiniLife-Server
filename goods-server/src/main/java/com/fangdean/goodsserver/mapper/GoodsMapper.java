package com.fangdean.goodsserver.mapper;

import com.fangdean.goodsserver.model.Category;
import com.fangdean.goodsserver.model.Goods;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface GoodsMapper {

    int insert(Goods goods);

    Goods selectOne(@Param("userId") Long userId, @Param("categoryId") Long categoryId, @Param("id") Long id);

    int update(Goods goods);

    List<Goods> select(String userId);
}
