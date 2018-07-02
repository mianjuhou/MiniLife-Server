
package com.fangdean.goodsserver.model;

import lombok.Data;

@Data
public class Category {
    private Long id;

    private Long parentId;

    private Long userId;

    private String name;

    private Integer orderNum;

    private Long updateTime;
}