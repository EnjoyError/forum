package com.forum.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberAction {
	
	@RequestMapping(value = {"/", "/index"})
	public String index() {
		return "member/index";
	}
	
}