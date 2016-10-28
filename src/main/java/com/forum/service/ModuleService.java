package com.forum.service;

import com.forum.dto.ModuleDto;
import com.forum.entity.module.Module;
import com.forum.util.CodeManager;
import com.forum.util.CodeType;
import com.forum.util.ServiceException;

/**
 * Created by Administrator on 2016/10/30.
 */
public class ModuleService extends BaseService {
    public Module getModuleByCode(String code) {
        return (Module) store.queryUniqueResultByHQL("FROM Module module WHERE module.code = :code", "code", code);
    }
    public void saveModule(ModuleDto moduleDto){
        createModule(moduleDto);
    }
    public void createModule(ModuleDto moduleDto){
        String name = moduleDto.getName();
        Module module = (Module)store.queryUniqueResultByHQL("FROM Module module WHERE module.name = :name","name",name);
        if(null != module){
            throw new ServiceException("已存在名称为[" + name + "]的模块!");
        }
        module = new Module();
        module.setCode(CodeManager.generateCode(CodeType.MODULE_CODE));
        module.setName(name);
        store.save(module);
    }
}
