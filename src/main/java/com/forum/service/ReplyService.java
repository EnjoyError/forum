package com.forum.service;

import com.forum.dto.ReplyDto;
import com.forum.entity.article.Article;
import com.forum.entity.reply.Reply;
import com.forum.util.CodeManager;
import com.forum.util.CodeType;
import com.forum.util.ServiceException;

/**
 * 回复业务层
 * 
 * @author Sackr
 *
 */
public class ReplyService extends BaseService {
	private ArticleService articleService;

	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	public void publishReply(String articleCode, ReplyDto replyDto) {
		Article article = articleService.findArticleByCode(articleCode);
		if (null == article) {
			throw new ServiceException("未找到要评价帖子!");
		}
		Reply reply = new Reply();
		reply.setCode(CodeManager.generateCode(CodeType.REPLY));
		reply.setReplyContent(replyDto.getReplyContent());
		store.save(reply);
	}
}
