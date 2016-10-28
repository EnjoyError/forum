package com.forum.action;

import com.forum.util.ActionReturnUtil;
import org.springframework.web.bind.annotation.RequestMapping;

import com.forum.dto.ReplyDto;
import com.forum.service.ReplyService;

import java.util.Map;

/**
 * 回复action
 * 
 * @author Sackr
 *
 */
@RequestMapping("/reply")
public class ReplyAction {
	private ReplyService replyService;

	public void setReplyService(ReplyService replyService) {
		this.replyService = replyService;
	}

	@RequestMapping("/publish")
	public Map<String,Object> publishReply(String articleCode, ReplyDto reply) {
		replyService.publishReply(articleCode, reply);
		return ActionReturnUtil.returnSuccess();
	}
}
