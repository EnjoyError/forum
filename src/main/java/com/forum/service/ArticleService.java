package com.forum.service;

import com.forum.dto.ArticleDto;
import com.forum.entity.article.Article;
import com.forum.entity.body.Body;
import com.forum.util.CodeManager;
import com.forum.util.CodeType;

/**
 * 帖子管理
 * 
 * @author Sackr
 *
 */
public class ArticleService extends BaseService {
	public void updateArticle(ArticleDto article) {
		Article art = (Article) store.queryByHQL("FROM Article art WHERE art.code = :code", "code", article.getCode());
		art.getBody().setText(article.getBody().getText());
		art.setTitle(article.getTitle());
	}

	public void createArticle(ArticleDto article) {
		Article art = new Article();
		art.setCode(CodeManager.generateCode(CodeType.ARTICLE_CODE));
		Body body = new Body();
		body.setText(article.getBody().getText());
		art.setBody(body);
		art.setTitle(article.getTitle());
		store.save(art);
	}

	public Article findArticleByCode(String code) {
		return (Article) store.queryUniqueResultByHQL("FROM Article ar WHERE ar.code = :code", "code", code);
	}
}
