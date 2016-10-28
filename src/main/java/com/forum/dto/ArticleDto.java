package com.forum.dto;

/**
 * 帖子dto
 *
 * @author Sackr
 */
public class ArticleDto {
    /**
     * 所属模块编码
     */
    private String moduleCode;
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
    private BodyDto body;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getTitle() {
        return title;
    }

    public String getModuleCode() {
        return moduleCode;
    }

    public void setModuleCode(String moduleCode) {
        this.moduleCode = moduleCode;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setBody(BodyDto body) {
        this.body = body;
    }

    public BodyDto getBody() {
        return body;
    }

    /**
     * 判断是否为新建的帖子
     *
     * @return
     */
    public boolean isNew() {
        return null == code;
    }

}
