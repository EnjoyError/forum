package com.forum.entity.module;

import com.forum.entity.baseEntity.BaseEntity;

/**
 * Created by Sackr on 2016/10/28.
 */
public class Module extends BaseEntity{
    private String code;
    private String name;

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
}
