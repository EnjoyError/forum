package com.forum.entity.article;

import com.forum.entity.baseEntity.BaseEntity;

/**
 * Created by Administrator on 2016/10/29.
 */
public class HotArticle extends BaseEntity{
    /**
     * 编码
     */
    private String code;
    /**
     * 名称
     */
    private String name;
    /**
     * 帖子
      */
    private Article article;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Article getArticle() {
        return article;
    }

    public void setArticle(Article article) {
        this.article = article;
    }
}
