package com.tjnu.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
@Entity
@Table(name="resourceInfo")
public class ResourceInfo implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GenericGenerator(name = "generator", strategy = "native")
	@GeneratedValue(generator = "generator")
	@Column(name = "resourceId")
	private Integer resourceId;//资源编号
	@Column(name = "articleTitle", length = 100)
	private String articleTitle;//题目
	@Column(name = "articleAuthor", length = 40)
	private String articleAuthor;//作者
	/*@Column(name = "articleType", length = 1)
	private String articleType;//资源类型，0表示文章，1表示图书*/
	@Column(name = "publishTime", length = 20)
	private String publishTime;//发表时间，图书出版时间
	@Column(name = "articleContent")
	private String articleContent;//文章内容，图书简介
	/*@Column(name = "articlePhotoAddr", length = 100)
	private String articlePhotoAddr;//图书封面存储路径*/	
	/*@Column(name = "articleAttachmentAddr", length = 100)
	private String articleAttachmentAddr;//图书附件存储路径*/	
	@Column(name = "submitTime", length = 20)
	private String submitTime;//资源提交时间
	@Column(name = "browseNum")
	private Integer browseNum;//点击量
	
	public synchronized Integer getResourceId() {
		return resourceId;
	}
	public synchronized void setResourceId(Integer resourceId) {
		this.resourceId = resourceId;
	}
	public synchronized String getArticleTitle() {
		return articleTitle;
	}
	public synchronized void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}
	public synchronized String getArticleAuthor() {
		return articleAuthor;
	}
	public synchronized void setArticleAuthor(String articleAuthor) {
		this.articleAuthor = articleAuthor;
	}
	public synchronized String getPublishTime() {
		return publishTime;
	}
	public synchronized void setPublishTime(String publishTime) {
		this.publishTime = publishTime;
	}
	public synchronized String getArticleContent() {
		return articleContent;
	}
	public synchronized void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}
	public synchronized String getSubmitTime() {
		return submitTime;
	}
	public synchronized void setSubmitTime(String submitTime) {
		this.submitTime = submitTime;
	}
	public synchronized Integer getBrowseNum() {
		return browseNum;
	}
	public synchronized void setBrowseNum(Integer browseNum) {
		this.browseNum = browseNum;
	}
}
