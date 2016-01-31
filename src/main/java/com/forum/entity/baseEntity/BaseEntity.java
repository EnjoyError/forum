package com.forum.entity.baseEntity;

import java.util.Date;

/**
 * 所有的entity超类
 * 
 * @author Sackr
 *
 */
public class BaseEntity {
	/** ID */
	private Long id;
	/** 创建日期 */
	private Date createDate;
	/** 创建者ID */
	private Long creatorId;
	/** 创建者名称 */
	private String creatorName;
	/** 最后修改日期 */
	private Date lastUpdateDate;
	/** 最后修改者ID */
	private Long lastUpdateId;
	/** 最后修改者名称 */
	private String lastUpdateName;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Long getCreatorId() {
		return creatorId;
	}

	public void setCreatorId(Long creatorId) {
		this.creatorId = creatorId;
	}

	public String getCreatorName() {
		return creatorName;
	}

	public void setCreatorName(String creatorName) {
		this.creatorName = creatorName;
	}

	public Date getLastUpdateDate() {
		return lastUpdateDate;
	}

	public void setLastUpdateDate(Date lastUpdateDate) {
		this.lastUpdateDate = lastUpdateDate;
	}

	public Long getLastUpdateId() {
		return lastUpdateId;
	}

	public void setLastUpdateId(Long lastUpdateId) {
		this.lastUpdateId = lastUpdateId;
	}

	public String getLastUpdateName() {
		return lastUpdateName;
	}

	public void setLastUpdateName(String lastUpdateName) {
		this.lastUpdateName = lastUpdateName;
	}

}
