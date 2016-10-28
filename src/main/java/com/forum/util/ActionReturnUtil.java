package com.forum.util;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2016/10/30.
 */
public class ActionReturnUtil {
    public static Map<String,Object> returnSuccess(){
        Map<String, Object> returnMap = new HashMap<String,Object>();
        returnMap.put("success",true);
        return returnMap;
    }
}
