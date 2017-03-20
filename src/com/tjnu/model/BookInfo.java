package com.tjnu.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
@Entity
@Table(name="bookInfo")
public class BookInfo implements Serializable {

private static final long serialVersionUID = 1L;
	
	@Id
	@GenericGenerator(name = "generator", strategy = "native")
	@GeneratedValue(generator = "generator")
	@Column(name = "bookId")
	private Integer bookId;//书籍编号
	@Column(name = "bookTitle", length = 100)
	private String bookTitle;//书名
	@Column(name = "bookAuthor", length = 40)
	private String bookAuthor;//作者
	@Column(name = "publishTime", length = 20)
	private String publishTime;//图书出版时间
	@Column(name = "isbnNum", length = 20)
	private String isbnNum;//ISBN号
	@Column(name = "bookContent", length = 8000)
	private String bookContent;//图书简介
	@Column(name = "bookPhotoAddr", length = 100)
	private String bookPhotoAddr;//图书封面存储路径
	@Column(name = "bookAttachmentAddr", length = 100)
	private String bookAttachmentAddr;//图书附件存储路径
	@Column(name = "submitTime", length = 20)
	private String submitTime;//书籍信息提交时间
	@Column(name = "browseNum")
	private Integer browseNum;//点击量
	
	public synchronized Integer getBookId() {
		return bookId;
	}
	public synchronized void setBookId(Integer bookId) {
		this.bookId = bookId;
	}
	public synchronized String getBookTitle() {
		return bookTitle;
	}
	public synchronized void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}
	public synchronized String getBookAuthor() {
		return bookAuthor;
	}
	public synchronized void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}
	public synchronized String getPublishTime() {
		return publishTime;
	}
	public synchronized void setPublishTime(String publishTime) {
		this.publishTime = publishTime;
	}
	public synchronized String getIsbnNum() {
		return isbnNum;
	}
	public synchronized void setIsbnNum(String isbnNum) {
		this.isbnNum = isbnNum;
	}
	public synchronized String getBookContent() {
		return bookContent;
	}
	public synchronized void setBookContent(String bookContent) {
		this.bookContent = bookContent;
	}
	public synchronized String getBookPhotoAddr() {
		return bookPhotoAddr;
	}
	public synchronized void setBookPhotoAddr(String bookPhotoAddr) {
		this.bookPhotoAddr = bookPhotoAddr;
	}
	public synchronized String getBookAttachmentAddr() {
		return bookAttachmentAddr;
	}
	public synchronized void setBookAttachmentAddr(String bookAttachmentAddr) {
		this.bookAttachmentAddr = bookAttachmentAddr;
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
