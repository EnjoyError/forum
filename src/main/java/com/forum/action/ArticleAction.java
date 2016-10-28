package com.forum.action;

import com.forum.util.ActionReturnUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.forum.dto.ArticleDto;
import com.forum.service.ArticleService;

import java.util.Map;

@Controller
@RequestMapping("/articles")
public class ArticleAction {
    private ArticleService articleService;

    public void setArticleService(ArticleService articleService) {
        this.articleService = articleService;
    }

    @RequestMapping("/publish")
    public Map<String, Object> publishArticle(ArticleDto article) {
        articleService.saveArticle(article);
        return ActionReturnUtil.returnSuccess();
    }

    @RequestMapping("/update")
    public Map<String, Object> updateArticle(ArticleDto articleDto) {
        articleService.saveArticle(articleDto);
        return ActionReturnUtil.returnSuccess();
    }
}
