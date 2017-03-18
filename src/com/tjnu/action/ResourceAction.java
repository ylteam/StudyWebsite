package com.tjnu.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.tjnu.util.Page;
import com.opensymphony.xwork2.ActionSupport;
import com.tjnu.model.BookInfo;
import com.tjnu.model.BrowseRecord;
import com.tjnu.model.Comment;
import com.tjnu.model.ResourceInfo;
import com.tjnu.service.IResourceService;

public class ResourceAction extends ActionSupport implements ServletRequestAware {

	private static final long serialVersionUID = 1L;
	
	private HttpServletRequest request;
	
	@Resource
	private IResourceService resourceService;
	
	private ResourceInfo resource;
	private BookInfo book;
	private Comment comment;
	private BrowseRecord browseRecord;
	
	//展示所有的书
	public void showAllBooks() throws IOException {
		String pageSizeStr = request.getParameter("pageSize");
		String curPageStr = request.getParameter("curPage");
		int pageSize = Integer.parseInt(pageSizeStr);
		int curPage = Integer.parseInt(curPageStr);
		Page<BookInfo> bookPage = new Page<BookInfo>(pageSize,curPage);
		resourceService.findAllBookList(bookPage);
		String bookPageJson = JSON.toJSONString(bookPage,SerializerFeature.DisableCircularReferenceDetect);
		HttpServletResponse response=ServletActionContext.getResponse();  
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();  
	    out.println(bookPageJson);  
	    out.flush();  
	    out.close();
	}
	//展示所有的文章
	public void showAllArticle() throws IOException {
		String pageSizeStr = request.getParameter("pageSize");
		String curPageStr = request.getParameter("curPage");
		int pageSize = Integer.parseInt(pageSizeStr);
		int curPage = Integer.parseInt(curPageStr);
		Page<ResourceInfo> resourcePage = new Page<ResourceInfo>(pageSize,curPage);
		resourceService.findAllList(resourcePage);
		String resourcePageJson = JSON.toJSONString(resourcePage,SerializerFeature.DisableCircularReferenceDetect);
		HttpServletResponse response=ServletActionContext.getResponse();  
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();  
	    out.println(resourcePageJson);  
	    out.flush();  
	    out.close();
	}
	//根据题目查找书
	public void findBookByArticleTitle() throws IOException {
		
	}
	//根据题目查找文章
	public void findArticleByArticleTitle() throws IOException {
		
	}
	//书籍排行榜前10
	public void bookTop10() throws IOException {
		List<BookInfo> list = resourceService.findBookTopN();
		String bookJson = JSON.toJSONString(list,SerializerFeature.DisableCircularReferenceDetect);
		HttpServletResponse response=ServletActionContext.getResponse();  
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();  
	    out.println(bookJson);  
	    out.flush();  
	    out.close();
	}
	//文章排行榜前10
	public void articleTop10() throws IOException {
		List<ResourceInfo> list = resourceService.findResourceTopN();
		String resourceJson = JSON.toJSONString(list,SerializerFeature.DisableCircularReferenceDetect);
		HttpServletResponse response=ServletActionContext.getResponse();  
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();  
	    out.println(resourceJson);  
	    out.flush();  
	    out.close();
	}
	//更新点击量
	public void updateBrowseNum() throws IOException {
		
	}
	//显示文章详情
	public void showArticleDetail() throws IOException {
		
	}
	//显示书籍详情
	public void showBookDetail() throws IOException {
		
	}
	//保存评论
	public void saveComment() throws IOException {
		
	}
	//用户浏览记录
	public void showPersonalBrowseRecord() throws IOException {
		
	}
	
	//管理员新增文章或书
	public void saveResource() throws IOException {
		
	}
	//删除文章或书
	public void deleteResource() throws IOException {
		
	}
	//查询书或文章
	public void findResource() throws IOException {
		
	}
	//修改更新书或文章内容
	public void updateResource() throws IOException {
		
	}
	
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
	}

}
