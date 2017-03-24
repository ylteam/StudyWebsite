package com.tjnu.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.tjnu.model.UserInfo;
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

	// 展示所有的书
	public void showAllBooks() throws IOException {
		String pageSizeStr = request.getParameter("pageSize");
		String curPageStr = request.getParameter("curPage");
		int pageSize = Integer.parseInt(pageSizeStr);
		int curPage = Integer.parseInt(curPageStr);
		Page<BookInfo> bookPage = new Page<BookInfo>(pageSize, curPage);
		resourceService.findAllBookList(bookPage);
		String bookPageJson = JSON.toJSONString(bookPage, SerializerFeature.DisableCircularReferenceDetect);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(bookPageJson);
		out.flush();
		out.close();
	}

	// 展示所有的文章
	public void showAllArticle() throws IOException {
		String pageSizeStr = request.getParameter("pageSize");
		String curPageStr = request.getParameter("curPage");
		int pageSize = Integer.parseInt(pageSizeStr);
		int curPage = Integer.parseInt(curPageStr);
		Page<ResourceInfo> resourcePage = new Page<ResourceInfo>(pageSize, curPage);
		resourceService.findAllList(resourcePage);
		String resourcePageJson = JSON.toJSONString(resourcePage, SerializerFeature.DisableCircularReferenceDetect);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(resourcePageJson);
		out.flush();
		out.close();
	}

	// 根据题目查找书
	public void findBookByArticleTitle() throws IOException {
		String bookTitle = request.getParameter("bookTitle");
		int pageSize = 12;
		int curPage = 1;
		Page<BookInfo> bookPage = new Page<BookInfo>(pageSize, curPage);
		resourceService.findBookByBookTitle(bookTitle, bookPage);
		String bookPageJson = JSON.toJSONString(bookPage, SerializerFeature.DisableCircularReferenceDetect);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(bookPageJson);
		out.flush();
		out.close();
	}

	// 根据题目查找文章
	public void findArticleByArticleTitle() throws IOException {
		String articleTitle = request.getParameter("articleTitle");
		int pageSize = 12;
		int curPage = 1;
		Page<ResourceInfo> resourcePage = new Page<ResourceInfo>(pageSize, curPage);
		resourceService.findResourceByArticleTitle(articleTitle, resourcePage);
		String resourcePageJson = JSON.toJSONString(resourcePage, SerializerFeature.DisableCircularReferenceDetect);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(resourcePageJson);
		out.flush();
		out.close();
	}

	// 书籍排行榜前10
	public void bookTop10() throws IOException {
		List<BookInfo> list = resourceService.findBookTopN();
		String bookJson = JSON.toJSONString(list, SerializerFeature.DisableCircularReferenceDetect);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(bookJson);
		out.flush();
		out.close();
	}

	// 文章排行榜前10
	public void articleTop10() throws IOException {
		List<ResourceInfo> list = resourceService.findResourceTopN();
		String resourceJson = JSON.toJSONString(list, SerializerFeature.DisableCircularReferenceDetect);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(resourceJson);
		out.flush();
		out.close();
	}

	// 更新点击量
	public void updateBrowseNum() throws IOException {

	}

	// 显示文章详情
	public String showArticleDetail() throws IOException {
		String resourceIdStr = request.getParameter("resourceId");
		int resourceId = Integer.parseInt(resourceIdStr);
		resourceService.updateResourceBrowseNum(resourceId);// 更新该文章的被浏览次数，即点击量
		UserInfo user = (UserInfo) request.getSession().getAttribute("currentUser");
		if (user != null) {// 当前为用户登录状态
			String username = user.getUsername();
			browseRecord = resourceService.findBrowseRecordByUsernameAndResourceId(username, resourceId, "0");// 0文章或1图书
			if (browseRecord != null) {// 若该用户对该文章的曾经浏览过，更新该记录的浏览次数
				int personBrowseNum = browseRecord.getPersonBrowseNum();
				browseRecord.setPersonBrowseNum(personBrowseNum + 1);
				resourceService.updateBrowseRecord(browseRecord);
			} else {// 若该用户对该文章的没有浏览过，保存浏览记录
				browseRecord.setResourceId(resourceId);
				browseRecord.setUsername(username);
				browseRecord.setResourceType("0");
				browseRecord.setPersonBrowseNum(1);
				resourceService.saveBrowseRecord(browseRecord);
			}
		}
		resource = resourceService.findResourceById(resourceId);
		if (null != resource) {
			request.setAttribute("article", resource);
			return "showArticleDetail_success";
		} else {
			return "showArticleDetail_error";
		}
	}

	// 显示图书详情
	public String showBookDetail() throws IOException {
		String bookIdStr = request.getParameter("bookId");
		int bookId = Integer.parseInt(bookIdStr);
		resourceService.updateBookBrowseNum(bookId);// 更新该图书的被浏览次数，即点击量
		UserInfo user = (UserInfo) request.getSession().getAttribute("currentUser");
		if (user != null) {// 当前为用户登录状态
			String username = user.getUsername();
			browseRecord = resourceService.findBrowseRecordByUsernameAndResourceId(username, bookId, "1");// 0文章或1图书
			// 若该用户对该图书的曾经浏览过，更新该记录的浏览次数
			if (browseRecord != null) {
				int personBrowseNum = browseRecord.getPersonBrowseNum();
				browseRecord.setPersonBrowseNum(personBrowseNum + 1);
				resourceService.updateBrowseRecord(browseRecord);
			} else {// 若该用户对该图书的没有浏览过，保存浏览记录
				browseRecord.setResourceId(bookId);
				browseRecord.setUsername(username);
				browseRecord.setResourceType("1");
				browseRecord.setPersonBrowseNum(1);
				resourceService.saveBrowseRecord(browseRecord);
			}
		}
		book = resourceService.findBookById(bookId);
		if (book.getBookPhotoAddr() == null || "".equals(book.getBookPhotoAddr())) {
			book.setBookPhotoAddr("nocover.jpg");
		}
		if (null != book) {
			request.setAttribute("book", book);
			return "showBookDetail_success";
		} else {
			return "showBookDetail_error";
		}
	}

	// 保存评论
	public void saveComment() throws IOException {
		String resourceIdStr = request.getParameter("resourceId");
		int resourceId = Integer.parseInt(resourceIdStr);
		String resourceType = request.getParameter("resourceType");// 0文章或1图书
		UserInfo user = (UserInfo) request.getSession().getAttribute("currentUser");
		String username = user.getUsername();
		comment.setResourceId(resourceId);
		comment.setUsername(username);
		comment.setResourceType(resourceType);
		Date date = new Date();
		String submitTime = new SimpleDateFormat("yyyy-MM-dd").format(date);
		comment.setSubmitTime(submitTime);
		resourceService.saveComment(comment);
	}

	// 用户浏览记录
	public void showPersonalBrowseRecord() throws IOException {

	}

	// 管理员新增文章
	public void saveResource() throws IOException {
		Date date = new Date();
		String submitTime = new SimpleDateFormat("yyyy-MM-dd").format(date);
		resource.setSubmitTime(submitTime);
		resource.setBrowseNum(0);
		resourceService.saveResource(resource);
	}

	// 删除文章
	public void deleteResource() throws IOException {
		resourceService.deleteResource(resource);
	}

	// 查询文章----显示全部还是？看前台需要什么数据，是条件查询，还是分页显示全部
	public void findResource() throws IOException {

	}

	// 修改更新文章内容----未写完，看前台传什么参数过来
	public void updateResource() throws IOException {
		String resourceIdStr = request.getParameter("resourceId");
		int resourceId = Integer.parseInt(resourceIdStr);
		ResourceInfo res = resourceService.findResourceById(resourceId);
		int browseNum = res.getBrowseNum();
		resource.setBrowseNum(browseNum);
	}

	// 管理员新增书
	public void saveBook() throws IOException {
		Date date = new Date();
		String submitTime = new SimpleDateFormat("yyyy-MM-dd").format(date);
		book.setSubmitTime(submitTime);
		book.setBrowseNum(0);
		resourceService.saveBook(book);
	}

	// 删除书
	public void deleteBook() throws IOException {
		resourceService.deleteBook(book);
	}

	// 查询书
	public void findBook() throws IOException {

	}

	// 修改更新书内容----未写完，看前台传什么参数过来
	public void updateBook() throws IOException {
		String bookIdStr = request.getParameter("bookId");
		int bookId = Integer.parseInt(bookIdStr);
		BookInfo bo = resourceService.findBookById(bookId);
		int browseNum = bo.getBrowseNum();
		book.setBrowseNum(browseNum);
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

}
