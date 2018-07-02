package com.fangdean.goodsserver.mapper;

import com.fangdean.goodsserver.model.Category;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CategoryMapper {

    int insert(Category category);

    Category selectOne(@Param("userId") Long userId, @Param("parentId") Long parentId, @Param("id") Long id);

    int update(Category category);

    List<Category> select(String userId);
}
