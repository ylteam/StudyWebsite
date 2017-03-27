package com.tjnu.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

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
@Controller
public class ResourceAction extends ActionSupport implements ServletRequestAware {
//个人浏览记录、上传书的图片、上传文件还未做
	private static final long serialVersionUID = 1L;

	private HttpServletRequest request;

	@Resource
	private IResourceService resourceService;

	private ResourceInfo resource;
	private BookInfo book;
	private Comment comment;
	private BrowseRecord browseRecord;
	
	private File file;
	private String fileFileName;
    private String fileFileContentType;
    private File file1;
	private String file1FileName;
    private String file1FileContentType;
	
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	public String getFileFileName() {
		return fileFileName;
	}
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
	public String getFileFileContentType() {
		return fileFileContentType;
	}
	public void setFileFileContentType(String fileFileContentType) {
		this.fileFileContentType = fileFileContentType;
	}
	public File getFile1() {
		return file1;
	}
	public void setFile1(File file1) {
		this.file1 = file1;
	}
	public String getFile1FileName() {
		return file1FileName;
	}
	public void setFile1FileName(String file1FileName) {
		this.file1FileName = file1FileName;
	}
	public String getFile1FileContentType() {
		return file1FileContentType;
	}
	public void setFile1FileContentType(String file1FileContentType) {
		this.file1FileContentType = file1FileContentType;
	}
	
	public ResourceInfo getResource() {
		return resource;
	}
	public void setResource(ResourceInfo resource) {
		this.resource = resource;
	}
	public BookInfo getBook() {
		return book;
	}
	public void setBook(BookInfo book) {
		this.book = book;
	}
	public Comment getComment() {
		return comment;
	}
	public void setComment(Comment comment) {
		this.comment = comment;
	}
	public BrowseRecord getBrowseRecord() {
		return browseRecord;
	}
	public void setBrowseRecord(BrowseRecord browseRecord) {
		this.browseRecord = browseRecord;
	}

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
		String pageSizeStr = request.getParameter("pageSize");
		String curPageStr = request.getParameter("curPage");
		int pageSize = Integer.parseInt(pageSizeStr);
		int curPage = Integer.parseInt(curPageStr);
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
		String pageSizeStr = request.getParameter("pageSize");
		String curPageStr = request.getParameter("curPage");
		int pageSize = Integer.parseInt(pageSizeStr);
		int curPage = Integer.parseInt(curPageStr);
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
				browseRecord = new BrowseRecord();
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
				browseRecord = new BrowseRecord();
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
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void saveComment() throws IOException {
		UserInfo user = (UserInfo) request.getSession().getAttribute("currentUser");
		Map map = new HashMap();
		if (user != null) {// 当前为用户登录状态
			String username = user.getUsername();
			comment.setUsername(username);
			Date date = new Date();
			String submitTime = new SimpleDateFormat("yyyy-MM-dd").format(date);
			comment.setSubmitTime(submitTime);
			resourceService.saveComment(comment);
			map.put("isSuccess", true);
			map.put("msg", "保存成功");
		}else{
			map.put("isSuccess", false);
			map.put("msg", "登录后才能评论");
		}
		String commentJson = JSON.toJSONString(map,SerializerFeature.DisableCircularReferenceDetect);
		HttpServletResponse response=ServletActionContext.getResponse();  
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();  
	    out.println(commentJson);  
	    out.flush();  
	    out.close();
	}
	
	// 根据id和type查询评论
	public void showComment() throws IOException {
		String commentIdStr = request.getParameter("commentId");
		String resourceType = request.getParameter("resourceType");
		int commentId = Integer.parseInt(commentIdStr);
		List<Comment> list = resourceService.findAllCommentByResourceId(commentId, resourceType);
		String commentJson = JSON.toJSONString(list,SerializerFeature.DisableCircularReferenceDetect);
		HttpServletResponse response=ServletActionContext.getResponse();  
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();  
	    out.println(commentJson);  
	    out.flush();  
	    out.close();
	}

	// 用户浏览记录
	public void showPersonalBrowseRecord() throws IOException {

	}

	// 管理员新增文章
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void saveResource() throws IOException {
		String articleTitle = request.getParameter("articleTitle");
		String articleAuthor = request.getParameter("articleAuthor");
		String publishTime = request.getParameter("publishTime");
		String articleContent = request.getParameter("articleContent");
		resource.setArticleTitle(articleTitle);
		resource.setArticleAuthor(articleAuthor);
		resource.setPublishTime(publishTime);
		resource.setArticleContent(articleContent);
		Date date = new Date();
		String submitTime = new SimpleDateFormat("yyyy-MM-dd").format(date);
		resource.setSubmitTime(submitTime);
		resource.setBrowseNum(0);
		resourceService.saveResource(resource);
		//返回保存成功提示
		Map map = new HashMap();
		map.put("isSuccess", true);
		map.put("msg", "保存成功");
		String resourceJson = JSON.toJSONString(map,SerializerFeature.DisableCircularReferenceDetect);
		HttpServletResponse response=ServletActionContext.getResponse();  
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();  
		out.println(resourceJson);  
		out.flush();  
		out.close();
	}

	// 删除文章
	public void deleteResource() throws IOException {
		resourceService.deleteResource(resource);
	}

	// 查询文章----显示全部还是？看前台需要什么数据，是条件查询，还是分页显示全部---可使用上面的根据题目查找方法
	public void findResource() throws IOException {

	}

	// 修改更新文章内容----未写完，看前台传什么参数过来
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void updateResource() throws IOException {
		String resourceIdStr = request.getParameter("resourceId");
		String articleTitle = request.getParameter("articleTitle");
		String articleAuthor = request.getParameter("articleAuthor");
		String publishTime = request.getParameter("publishTime");
		String articleContent = request.getParameter("articleContent");
		int resourceId = Integer.parseInt(resourceIdStr);
		resource.setResourceId(resourceId);
		resource.setArticleTitle(articleTitle);
		resource.setArticleAuthor(articleAuthor);
		resource.setPublishTime(publishTime);
		resource.setArticleContent(articleContent);
		ResourceInfo res = resourceService.findResourceById(resourceId);
		resource.setSubmitTime(res.getSubmitTime());
		int browseNum = res.getBrowseNum();
		resource.setBrowseNum(browseNum);
		resourceService.updateResource(resource);
		//返回修改成功提示
		Map map = new HashMap();
		map.put("isSuccess", true);
		map.put("msg", "修改保存成功");
		String resourceJson = JSON.toJSONString(map,SerializerFeature.DisableCircularReferenceDetect);
		HttpServletResponse response=ServletActionContext.getResponse();  
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();  
	    out.println(resourceJson);  
	    out.flush();  
	    out.close();
	}

	// 管理员新增书
	@SuppressWarnings({ "rawtypes", "unchecked", "resource" })
	public void saveBook() throws IOException {
		try{
			String pathString=ServletActionContext.getServletContext().getRealPath("/");
			//String[] path = pathString.split("StudyWebsite");
			System.out.println("pathString = " + pathString);//获得项目路径
			String filepathString= pathString + "upload";//文件存储路径
			//构建文件对象
			File folder=new File(filepathString);
			//检测文件夹是否存在，如果不存在，则新建upload目录
			if(!folder.exists()){
			    folder.mkdir();
			}
			System.out.println("filepathstring = "+filepathString);
			
			//随机生成图书封面、附件名称
			fileFileName = getRandomString(10) + fileFileName;//图书封面名称
			file1FileName = getRandomString(10) + file1FileName;//图书附件名称
			//图书封面存储
			FileInputStream inputStream = new FileInputStream(this.getFile());
	        FileOutputStream outputStream = new FileOutputStream(filepathString + "\\" + fileFileName);
	        byte[] buf = new byte[4096];
	        int length = 0;
	        while ((length = inputStream.read(buf)) != -1) {
	            outputStream.write(buf, 0, length);
	        }
	        //图书附件存储
	        inputStream = new FileInputStream(this.getFile1());
	        outputStream = new FileOutputStream(filepathString + "\\" + file1FileName);
	        while ((length = inputStream.read(buf)) != -1) {
	            outputStream.write(buf, 0, length);
	        }
	        inputStream.close();
	        outputStream.flush();
			
	        //图书封面、附件名称存储
			String bookPhotoAddr = fileFileName;
			String bookAttachmentAddr = file1FileName;
			
			book.setBookPhotoAddr(bookPhotoAddr);
			book.setBookAttachmentAddr(bookAttachmentAddr);
			Date date = new Date();
			String submitTime = new SimpleDateFormat("yyyy-MM-dd").format(date);
			book.setSubmitTime(submitTime);
			book.setBrowseNum(0);
			resourceService.saveBook(book);
			//返回保存成功提示
			Map map = new HashMap();
			map.put("isSuccess", true);
			map.put("msg", "保存成功");
			String bookJson = JSON.toJSONString(map,SerializerFeature.DisableCircularReferenceDetect);
			HttpServletResponse response=ServletActionContext.getResponse();  
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();  
		    out.println(bookJson);  
		    out.flush();  
		    out.close();
		}catch (Exception e) {
			e.printStackTrace();
			Map map = new HashMap();
			map.put("isSuccess", false);
			map.put("msg", "保存失败，文件超出最大限制");
			String bookJson = JSON.toJSONString(map,SerializerFeature.DisableCircularReferenceDetect);
			HttpServletResponse response=ServletActionContext.getResponse();  
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();  
		    out.println(bookJson);  
		    out.flush();  
		    out.close();
		}
	}
	//获取一条随机字符串
	public String getRandomString(int length) { //length表示生成字符串的长度  
		String base = "abcdefghijklmnopqrstuvwxyz0123456789";     
		Random random = new Random();     
		StringBuffer sb = new StringBuffer();     
		for (int i = 0; i < length; i++) {     
			int number = random.nextInt(base.length());     
			sb.append(base.charAt(number));     
		}     
		return sb.toString();     
	}

	// 删除书
	public void deleteBook() throws IOException {
		resourceService.deleteBook(book);
	}

	// 查询书---可使用上面的根据题目查找方法
	public void findBook() throws IOException {

	}

	// 修改更新书内容----未写完，看前台传什么参数过来
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void updateBook() throws IOException {
		String bookIdStr = request.getParameter("bookId");
		String bookTitle = request.getParameter("bookTitle");
		String bookAuthor = request.getParameter("bookAuthor");
		String publishTime = request.getParameter("publishTime");
		String isbnNum = request.getParameter("isbnNum");
		String bookContent = request.getParameter("bookContent");
		String bookPhotoAddr = request.getParameter("bookPhotoAddr");
		String bookAttachmentAddr = request.getParameter("bookAttachmentAddr");
		int bookId = Integer.parseInt(bookIdStr);
		book.setBookId(bookId);
		book.setBookTitle(bookTitle);
		book.setBookAuthor(bookAuthor);
		book.setPublishTime(publishTime);
		book.setIsbnNum(isbnNum);
		book.setBookContent(bookContent);
		book.setBookPhotoAddr(bookPhotoAddr);
		book.setBookAttachmentAddr(bookAttachmentAddr);
		BookInfo bo = resourceService.findBookById(bookId);
		book.setSubmitTime(bo.getSubmitTime());
		int browseNum = bo.getBrowseNum();
		book.setBrowseNum(browseNum);
		resourceService.updateBook(book);
		//返回修改成功提示
		Map map = new HashMap();
		map.put("isSuccess", true);
		map.put("msg", "修改保存成功");
		String bookJson = JSON.toJSONString(map,SerializerFeature.DisableCircularReferenceDetect);
		HttpServletResponse response=ServletActionContext.getResponse();  
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();  
	    out.println(bookJson);  
	    out.flush();  
	    out.close();
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

}
