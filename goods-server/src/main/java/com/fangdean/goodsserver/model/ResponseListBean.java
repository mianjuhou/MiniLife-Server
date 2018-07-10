package com.fangdean.goodsserver.model;

import java.util.ArrayList;
import java.util.List;

public class ResponseListBean<K> {

    private List<K> content;
    private long totalNum;
    private long totalPage;
    private long pageSize;

    public ResponseListBean() {
    }

    public ResponseListBean(List<K> content) {
        if (content != null) {
            this.content = content;
            this.totalNum = content.size();
            this.totalPage = 1;
            this.pageSize = content.size();
        } else {
            this.content = new ArrayList<>();
            this.totalNum = 0;
            this.totalPage = 0;
            this.pageSize = 0;
        }
    }

    public List<K> getContent() {
        return content;
    }

    public void setContent(List<K> content) {
        this.content = content;
    }

    public long getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(long totalNum) {
        this.totalNum = totalNum;
    }

    public long getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(long totalPage) {
        this.totalPage = totalPage;
    }

    public long getPageSize() {
        return pageSize;
    }

    public void setPageSize(long pageSize) {
        this.pageSize = pageSize;
    }
}
