package com.forum.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.forum.dto.ArticleDto;
import com.forum.service.ArticleService;
import com.forum.util.StringUtil;

@Controller
@RequestMapping("/articles")
public class ArticleAction {
	private ArticleService articleService;

	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	@RequestMapping("/publish")
	public void publishArticle(ArticleDto article) {
		String code = article.getCode();
		if (StringUtil.isEmpty(code)) {
			articleService.createArticle(article);
		} else {
			articleService.updateArticle(article);
		}
	}
}
