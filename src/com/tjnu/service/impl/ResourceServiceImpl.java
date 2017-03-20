package com.tjnu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tjnu.util.Page;
import com.tjnu.dao.IBookDao;
import com.tjnu.dao.IBrowseRecordDao;
import com.tjnu.dao.ICommentDao;
import com.tjnu.dao.IResourceDao;
import com.tjnu.model.BookInfo;
import com.tjnu.model.BrowseRecord;
import com.tjnu.model.Comment;
import com.tjnu.model.ResourceInfo;
import com.tjnu.service.IResourceService;

@Service("resourceService")
public class ResourceServiceImpl implements IResourceService {

	@Resource
	private IResourceDao resourceDao;
	
	@Resource
	private IBookDao bookDao;
	
	@Resource
	private ICommentDao commentDao;
	
	@Resource
	private IBrowseRecordDao browseRecordDao;
	
	//保存新增资源
	@Override
	public void saveResource(ResourceInfo resource) {
		resourceDao.save(resource);
	}
	//更新资源信息
	@Override
	public void updateResource(ResourceInfo resource) {
		resourceDao.update(resource);
	}
	//更新资源点击量
	@Override
	public void updateResourceBrowseNum(int resourceId) {
		ResourceInfo resource = resourceDao.get(ResourceInfo.class, resourceId);
		int browseNum = resource.getBrowseNum();
		resource.setBrowseNum(browseNum+1);
		resourceDao.update(resource);
	}
	//删除资源
	@Override
	public void deleteResource(ResourceInfo resource) {
		resourceDao.delete(resource);
	}
	//查找全部资源
	@Override
	public void findAllList(Page<ResourceInfo> resourcePage) {
		String hql = "from ResourceInfo r order by r.submitTime desc";
		String countHql = "select count(*) from ResourceInfo";
		Object[] param = null;
		List<ResourceInfo> list = resourceDao.find(hql, param, resourcePage.getCurrentPage(), resourcePage.getPageSize());
		resourcePage.setPageList(list);
		long ti = resourceDao.count(countHql, param);
		resourcePage.setTotleNumber((int)ti);
		//return resourceDao.find("from ResourceInfo r where r.articleType=?", new Object[]{articleType});
	}
	//根据资源id查找资源
	@Override
	public ResourceInfo findResourceById(int resourceId) {
		return resourceDao.get(ResourceInfo.class, resourceId);
	}
	//根据题目名称查找资源（模糊查找）
	@Override
	public void findResourceByArticleTitle(String articleTitle, Page<ResourceInfo> resourcePage) {
		articleTitle = "%" + articleTitle + "%";
		String hql = "from ResourceInfo r where r.articleTitle like ?";
		String countHql = "select count(*) from ResourceInfo r where r.articleTitle like ?";
		Object[] param = new Object[]{articleTitle};
		List<ResourceInfo> list = resourceDao.find(hql, param, resourcePage.getCurrentPage(), resourcePage.getPageSize());
		resourcePage.setPageList(list);
		long ti = resourceDao.count(countHql, param);
		resourcePage.setTotleNumber((int)ti);
		//return resourceDao.find("from ResourceInfo r where r.articleTitle like ?", new Object[]{articleTitle});
	}
	//查找top10的资源
	@Override
	public List<ResourceInfo> findResourceTopN() {
		Object[] param = null;
		return resourceDao.find("from ResourceInfo r order by r.browseNum desc", param);
	}
	
	//保存新增书籍
	@Override
	public void saveBook(BookInfo book) {
		bookDao.save(book);
	}
	//更新书籍信息
	@Override
	public void updateBook(BookInfo book) {
		bookDao.update(book);
	}
	//更新书籍点击量
	@Override
	public void updateBookBrowseNum(int bookId) {
		BookInfo book = bookDao.get(BookInfo.class, bookId);
		int browseNum = book.getBrowseNum();
		book.setBrowseNum(browseNum+1);
		bookDao.update(book);
	}
	//删除书籍
	@Override
	public void deleteBook(BookInfo book) {
		bookDao.delete(book);
	}
	//查找全部书籍
	@Override
	public void findAllBookList(Page<BookInfo> bookPage) {
		String hql = "from BookInfo b order by b.submitTime desc";
		String countHql = "select count(*) from BookInfo";
		Object[] param = null;
		List<BookInfo> list = bookDao.find(hql, param, bookPage.getCurrentPage(), bookPage.getPageSize());
		bookPage.setPageList(list);
		long ti = bookDao.count(countHql, param);
		bookPage.setTotleNumber((int)ti);
	}
	//根据书籍id查找书籍
	@Override
	public BookInfo findBookById(int bookId) {
		return bookDao.get(BookInfo.class, bookId);
	}
	//根据题目名称查找书籍（模糊查找）
	@Override
	public void findBookByBookTitle(String bookTitle, Page<BookInfo> bookPage) {
		bookTitle = "%" + bookTitle + "%";
		String hql = "from BookInfo b where b.bookTitle like ?";
		String countHql = "select count(*) from BookInfo b where b.bookTitle like ?";
		Object[] param = new Object[]{bookTitle};
		List<BookInfo> list = bookDao.find(hql, param, bookPage.getCurrentPage(), bookPage.getPageSize());
		bookPage.setPageList(list);
		long ti = bookDao.count(countHql, param);
		bookPage.setTotleNumber((int)ti);
		//return bookDao.find("from BookInfo b where b.bookTitle like ?", new Object[]{bookTitle});
	}
	//查找top10的书籍
	@Override
	public List<BookInfo> findBookTopN() {
		Object[] param = null;
		return bookDao.find("from BookInfo b order by b.browseNum desc", param);
	}
	
	//保存新增评论
	@Override
	public void saveComment(Comment comment) {
		commentDao.save(comment);
	}
	//根据资源id、资源type查找所有评论
	@Override
	public List<Comment> findAllCommentByResourceId(int resourceId, String resourceType) {
		return commentDao.find("from Comment c where c.resourceId=? and c.resourceType=? order by submitTime desc", new Object[]{resourceId, resourceType});
	}

	//保存新增浏览记录
	@Override
	public void saveBrowseRecord(BrowseRecord browseRecord) {
		browseRecordDao.save(browseRecord);
	}
	//根据用户名查找所有浏览记录
	@Override
	public List<BrowseRecord> findAllBrowseRecordByUsername(String username) {
		return browseRecordDao.find("from BrowseRecord b where b.username=? order by personBrowseNum desc", new Object[]{username});
	}
	//根据用户名、资源id、资源type查找该用户是否存在对该资源的浏览记录
	@Override
	public BrowseRecord findBrowseRecordByUsernameAndResourceId(String username, int resourceId, String resourceType) {
		return browseRecordDao.get("from BrowseRecord b where b.username=? and b.resourceId=? and b.resourceType=?", new Object[]{username, resourceId, resourceType});
	}
	//更新某人某资源的浏览记录点击量
	@Override
	public void updateBrowseRecord(BrowseRecord browseRecord) {
		browseRecordDao.update(browseRecord);
	}

}
