package com.forum.util;

import com.forum.entity.user.User;
import org.apache.shiro.SecurityUtils;

/**
 * Created by Administrator on 2016/10/30.
 */
public class UserHolder {
    public static String CURRENT_USER = "CURRENT_USER";

    public static User getCurrentUser() {
        return (User) SecurityUtils.getSubject().getSession().getAttribute(CURRENT_USER);
    }

    public static void setCurrrentUser(User currrentUser) {
        SecurityUtils.getSubject().getSession().setAttribute(CURRENT_USER, currrentUser);
    }
}
