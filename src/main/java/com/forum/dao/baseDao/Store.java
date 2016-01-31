package com.forum.dao.baseDao;

import java.util.List;
import java.util.Map;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.forum.entity.baseEntity.BaseEntity;

/**
 * 操作数据库的类，所有的service都应该包含该类用于操作数据库
 * 
 * @author Sackr
 *
 */
public class Store extends HibernateDaoSupport {
	public void save(BaseEntity entity) {
		getHibernateTemplate().save(entity);
	}

	public BaseEntity get(Class clazz, Long id) {
		return (BaseEntity) getHibernateTemplate().get(clazz, id);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<BaseEntity> queryByHQL(String HQL, Map paramMap) {
		List<BaseEntity> list;
		list = getHibernateTemplate().find(HQL, paramMap);
		return list;
	}
}
