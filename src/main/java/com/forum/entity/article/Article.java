package com.forum.entity.article;

import com.forum.entity.baseEntity.BaseEntity;
import com.forum.entity.body.Body;
import com.forum.entity.module.Module;
import com.forum.entity.user.User;

/**
 * 帖子，帖子正文保存在Body类中
 *
 * @author Sackr
 */
public class Article extends BaseEntity {
    /**
     * 所属模块
     */
    private Module module;
    /**
     * 帖子编码
     */
    private String code;
    /**
     * 帖子标题
     */
    private String title;
    /**
     * 帖子内容
     */
    private Body body;

    public Module getModule() {
        return module;
    }

    public void setModule(Module module) {
        this.module = module;
    }

    /**
     * 作者
     */
    private User author;

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Body getBody() {
        return body;
    }

    public void setBody(Body body) {
        this.body = body;
    }

}
