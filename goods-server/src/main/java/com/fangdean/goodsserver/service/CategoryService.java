package com.fangdean.goodsserver.service;

import com.fangdean.goodsserver.mapper.CategoryMapper;
import com.fangdean.goodsserver.model.Category;
import com.fangdean.goodsserver.util.BeanHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CategoryService {

    @Autowired
    private CategoryMapper categoryMapper;

    @Transactional(rollbackFor = Exception.class)
    public void categoryInsert(List<Category> categoryList) {
        categoryList.forEach(category -> {
            BeanHelper.setDefaultProp(category, Category.class);
            Category categoryRet = categoryMapper.selectOne(category.getUserId(), category.getParentId(), category.getId());
            if (categoryRet == null) {//没有插入
                int ret = categoryMapper.insert(category);
            } else if (categoryRet.getUpdateTime() < category.getUpdateTime()) {//更新
                int ret = categoryMapper.update(category);
            } else {//不更新

            }
            System.out.println("result:" + category.getName());
        });
    }

    public List<Category> categoryQuery(String userId) {
        List<Category> categoryList = categoryMapper.select(userId);
        return categoryList;
    }
}
