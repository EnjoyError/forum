package com.forum.service;

import com.forum.dao.baseDao.Store;

/**
 * service超类，所有的service都应该继承该类，以便操作数据库。
 * 
 * @author Sackr
 *
 */
public class BaseService {
	protected Store store;

	public Store getStore() {
		return store;
	}

	public void setStore(Store store) {
		this.store = store;
	}

}
