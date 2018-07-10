package com.fangdean.goodsserver.controller;

import com.alibaba.fastjson.JSON;
import com.fangdean.goodsserver.model.Category;
import com.fangdean.goodsserver.model.Goods;
import com.fangdean.goodsserver.model.ResponseBean;
import com.fangdean.goodsserver.model.ResponseListBean;
import com.fangdean.goodsserver.service.CategoryService;
import com.fangdean.goodsserver.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/category/upload")
    public ResponseBean<String> categoryUpload(String json) {
        try {
            List<Category> categoryList = JSON.parseArray(json, Category.class);
            categoryService.categoryInsert(categoryList);

            ResponseBean<String> responseBean = new ResponseBean<>();
            responseBean.setCode(1);
            responseBean.setMsg("上传成功");
            responseBean.setContent("");
            return responseBean;
        } catch (Exception e) {
            ResponseBean<String> responseBean = new ResponseBean<>();
            responseBean.setCode(0);
            responseBean.setMsg("上传失败");
            responseBean.setContent(e.getMessage());
            return responseBean;
        }
    }

    @RequestMapping("/goods/upload")
    public ResponseBean<String> goodsUpload(String json) {
        try {
            List<Goods> categoryList = JSON.parseArray(json, Goods.class);
            goodsService.goodsInsert(categoryList);

            ResponseBean<String> responseBean = new ResponseBean<>();
            responseBean.setCode(1);
            responseBean.setMsg("上传成功");
            responseBean.setContent("");
            return responseBean;
        } catch (Exception e) {
            ResponseBean<String> responseBean = new ResponseBean<>();
            responseBean.setCode(0);
            responseBean.setMsg("上传失败");
            responseBean.setContent(e.getMessage());
            return responseBean;
        }
    }

    @RequestMapping("/category/download")
    public ResponseBean<List<Category>> categoryDownload(String userId) {
        List<Category> categoryList = categoryService.categoryQuery(userId);
        if (categoryList == null || categoryList.isEmpty()) {
            return new ResponseBean<List<Category>>(categoryList, 0, "获取分类失败");
        }
        return new ResponseBean<List<Category>>(categoryList, 1, "获取分类成功");
    }

    @RequestMapping("/goods/download")
    public ResponseBean<List<Goods>> goodsDownload(String userId) {
        List<Goods> goodsList = goodsService.goodsQuery(userId);
        if (goodsList == null || goodsList.isEmpty()) {
            return new ResponseBean<List<Goods>>(goodsList, 0, "获取物品失败");
        }
        return new ResponseBean<List<Goods>>(goodsList, 1, "获取物品成功");
    }

    @RequestMapping("/category/download2")
    public ResponseBean<ResponseListBean<Category>> categoryDownload2(String userId) {
        List<Category> categoryList = categoryService.categoryQuery(userId);
        if (categoryList == null || categoryList.isEmpty()) {
            return new ResponseBean<ResponseListBean<Category>>(new ResponseListBean<>(categoryList), 0, "获取分类失败");
        }
        return new ResponseBean<ResponseListBean<Category>>(new ResponseListBean<>(categoryList), 1, "获取分类成功");
    }

    @RequestMapping("/goods/download2")
    public ResponseBean<ResponseListBean<Goods>> goodsDownload2(String userId) {
        List<Goods> goodsList = goodsService.goodsQuery(userId);
        if (goodsList == null || goodsList.isEmpty()) {
            return new ResponseBean<ResponseListBean<Goods>>(new ResponseListBean<>(goodsList), 0, "获取物品失败");
        }
        return new ResponseBean<ResponseListBean<Goods>>(new ResponseListBean<>(goodsList), 1, "获取物品成功");
    }

}
