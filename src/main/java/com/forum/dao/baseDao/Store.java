package com.forum.dao.baseDao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.forum.entity.baseEntity.BaseEntity;
import com.forum.util.ServiceException;

/**
 * 操作数据库的类，所有的service都应该包含该类用于操作数据库
 * 
 * @author Sackr
 *
 */
@SuppressWarnings("unchecked")
public class Store extends HibernateDaoSupport {
	/**
	 * 保存
	 * 
	 * @param entity
	 */
	public void save(BaseEntity entity) {
		getHibernateTemplate().save(entity);
	}

	@SuppressWarnings("rawtypes")
	public BaseEntity get(Class clazz, Long id) {
		return (BaseEntity) getHibernateTemplate().get(clazz, id);
	}

	public List<BaseEntity> queryByHQL(String HQL, String[] keys, Object[] values) {
		return getHibernateTemplate().findByNamedParam(HQL, keys, values);
	}

	public List<BaseEntity> queryByHQL(String HQL, String key, Object value) {
		return getHibernateTemplate().findByNamedParam(HQL, key, value);
	}

	public BaseEntity queryUniqueResultByHQL(String HQL, String key, Object value) {
		return queryUniqueResultByHQL(HQL, new String[] { key }, new Object[] { value });
	}

	public BaseEntity queryUniqueResultByHQL(String HQL, String[] keys, Object[] values) {
		List<BaseEntity> list = getHibernateTemplate().findByNamedParam(HQL, keys, values);
		if (null == list) {
			return null;
		}
		if (list.size() > 1) {
			throw new ServiceException("查询结果不唯一");
		}
		if (list.size() == 1) {
			return list.get(0);
		}

		return null;
	}
}
