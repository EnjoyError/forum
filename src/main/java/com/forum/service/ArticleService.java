package com.forum.service;

import com.forum.dto.ArticleDto;
import com.forum.entity.article.Article;
import com.forum.entity.body.Body;
import com.forum.entity.module.Module;
import com.forum.entity.user.User;
import com.forum.security.SecurityUtil;
import com.forum.util.CodeManager;
import com.forum.util.CodeType;
import com.forum.util.ServiceException;
import com.forum.util.UserHolder;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

import java.security.Security;

/**
 * 帖子管理
 *
 * @author Sackr
 */
public class ArticleService extends BaseService {

    private ModuleService moduleService;

    public void setModuleService(ModuleService moduleService) {
        this.moduleService = moduleService;
    }

    public void saveArticle(ArticleDto articleDto) {
        if (articleDto.isNew()) {
            createArticle(articleDto);
        } else {
            updateArticle(articleDto);
        }
    }

    private boolean hasAuthority(Article article){
        User author = article.getAuthor();
        User currentUser = UserHolder.getCurrentUser();
        if(author.getCode().equals(currentUser.getCode())) {
            return true;
        } else {
            return false;
        }
    }

    public void updateArticle(ArticleDto article) {
        Article art = (Article) store.queryUniqueResultByHQL("FROM Article art WHERE art.code = :code", "code", article.getCode());
        if(!hasAuthority(art)){
            throw new ServiceException("不好意思哦！你没有权限进行此操作!");
        }
        art.getBody().setText(article.getBody().getText());
        art.setTitle(article.getTitle());
    }

    public void createArticle(ArticleDto article) {
        Article art = new Article();
        art.setCode(CodeManager.generateCode(CodeType.ARTICLE_CODE));
        Module module = moduleService.getModuleByCode(article.getModuleCode());
        if(null == module){
            throw new ServiceException("未找到编码为[" + article.getModuleCode() + "]的板块!");
        }
        art.setModule(module);
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
