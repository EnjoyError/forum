package com.forum.entity.reply;

import com.forum.entity.baseEntity.BaseEntity;
import com.forum.entity.user.User;

/**
 * 回复类
 *
 * @author Sackr
 */
public class Reply extends BaseEntity {
    /**
     * 回复编码
     */
    private String code;
    /**
     * 回复内容
     */
    private String replyContent;
    /**
     * 回复人
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

    public String getReplyContent() {
        return replyContent;
    }

    public void setReplyContent(String replyContent) {
        this.replyContent = replyContent;
    }

}
