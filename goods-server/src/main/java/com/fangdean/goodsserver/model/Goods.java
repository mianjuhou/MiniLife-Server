
package com.fangdean.goodsserver.model;

import lombok.Data;

@Data
public class Goods {

    private Long id;

    private Long categoryId;

    private Long userId;

    private String name;

    private Integer state;

    private Integer orderNum;

    private Long updateTime;

}