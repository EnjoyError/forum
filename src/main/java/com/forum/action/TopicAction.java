package com.forum.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/topic")
public class TopicAction {
	
	@RequestMapping(value = {"/", "/index"})
	public String topic() {
		return "topic";
	}
	
}