package com.forum.entity.module;

import com.forum.entity.baseEntity.BaseEntity;

/**
 * Created by Administrator on 2016/10/29.
 */
public class HotModule extends BaseEntity{
    /**
     * 编码
     */
    private String code;
    /**
     * 名称
     */
    private String name;
    /**
     * 板块
     */
    private Module module;

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

    public Module getModule() {
        return module;
    }

    public void setModule(Module module) {
        this.module = module;
    }
}

