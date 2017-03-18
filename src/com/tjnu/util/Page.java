package com.tjnu.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import com.sun.xml.internal.ws.policy.privateutil.PolicyUtils.Collections;

/**
 * 分页信息封装类
 * @author 
 * @Date 2015年12月31日
 * @Time 下午8:23:16
 */
public class Page<T>{

    /**
     * 总记录数
     */
    private int totleNumber;

    /**
     * 每页显示记录数
     */
    private int pageSize;

    /**
     * 当前页
     */
    private int currentPage;

    /**
     * 总共页数
     */
    private int totlePage;

    private List<T> pageList = new ArrayList<T>();

	public List<T> getPageList() {
		return pageList;
	}
	
	public void setPageList(List<T> pageList) {
		this.pageList = pageList;
	}

	public Page() {
        this(10,1);
    }

    public Page(int currentPage) {
        this(10,currentPage);
    }

    public Page(int pageSize, int currentPage) {
        if (pageSize <= 1)
            this.pageSize = 10;
        else
            this.pageSize = pageSize;

        if (currentPage <= 0)
            this.currentPage = 1;
        else
            this.currentPage = currentPage;
    }
    
    public int getTotleNumber() {
        return totleNumber;
    }

    public void setTotleNumber(int totleNumber) {
        this.totleNumber = totleNumber;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getTotlePage() {
        this.totleNumber = totleNumber;
        this.totlePage = this.totleNumber / this.pageSize;
        if (this.totleNumber % this.pageSize != 0)
            this.totlePage++;
        return totlePage;
    }

    public void setTotlePage(int totlePage) {
        this.totlePage = totlePage;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("总记录数 : ").append(this.totleNumber).append("\n");
        sb.append("总页数 : ").append(this.totlePage).append("\n");
        sb.append("当前页数 : ").append(this.currentPage).append("\n");
        sb.append("页面条目数 : ").append(this.pageSize);
        return sb.toString();
    }
}
