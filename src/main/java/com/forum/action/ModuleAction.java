package com.forum.action;

import com.forum.dto.ModuleDto;
import com.forum.service.ModuleService;
import com.forum.util.ActionReturnUtil;

import java.util.Map;

/**
 * Created by Administrator on 2016/10/30.
 */
public class ModuleAction {
    private ModuleService moduleService;

    public void setModuleService(ModuleService moduleService) {
        this.moduleService = moduleService;
    }

    public Map<String,Object> createModule(ModuleDto moduleDto){
        moduleService.saveModule(moduleDto);
        return ActionReturnUtil.returnSuccess();
    }
}
