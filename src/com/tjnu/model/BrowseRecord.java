package com.tjnu.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="browseRecord")
public class BrowseRecord implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GenericGenerator(name = "generator", strategy = "native")
	@GeneratedValue(generator = "generator")
	@Column(name = "browseId")
	private Integer browseId;//浏览记录编号
	@Column(name = "resourceId")
	private Integer resourceId;//资源编号
	@Column(name = "username", length = 40)
	private String username;//用户名
	@Column(name = "resourceType", length = 2)
	private String resourceType;//资源类型，0表示文章，1表示书籍
	@Column(name = "browseNum")
	private Integer personBrowseNum;//点击量
	
	public synchronized Integer getBrowseId() {
		return browseId;
	}
	public synchronized void setBrowseId(Integer browseId) {
		this.browseId = browseId;
	}
	public synchronized Integer getResourceId() {
		return resourceId;
	}
	public synchronized void setResourceId(Integer resourceId) {
		this.resourceId = resourceId;
	}
	public synchronized String getUsername() {
		return username;
	}
	public synchronized void setUsername(String username) {
		this.username = username;
	}
	public synchronized String getResourceType() {
		return resourceType;
	}
	public synchronized void setResourceType(String resourceType) {
		this.resourceType = resourceType;
	}
	public synchronized Integer getPersonBrowseNum() {
		return personBrowseNum;
	}
	public synchronized void setPersonBrowseNum(Integer personBrowseNum) {
		this.personBrowseNum = personBrowseNum;
	}
	
}
