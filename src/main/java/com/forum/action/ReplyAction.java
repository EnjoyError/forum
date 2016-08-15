package com.forum.action;

import org.springframework.web.bind.annotation.RequestMapping;

import com.forum.dto.ReplyDto;
import com.forum.service.ReplyService;

/**
 * 回复action
 * 
 * @author Sackr
 *
 */
@RequestMapping("/reply.action")
public class ReplyAction {
	private ReplyService replyService;

	public void setReplyService(ReplyService replyService) {
		this.replyService = replyService;
	}

	@RequestMapping(params = "method=publishReply")
	public void publishReply(String articleCode, ReplyDto reply) {
		replyService.publishReply(articleCode, reply);
	}
}
