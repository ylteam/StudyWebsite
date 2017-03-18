package com.tjnu.service;

import java.util.List;

import com.tjnu.model.BookInfo;
import com.tjnu.model.BrowseRecord;
import com.tjnu.model.Comment;
import com.tjnu.model.ResourceInfo;
import com.tjnu.util.Page;

public interface IResourceService {

	void saveResource(ResourceInfo resource);

	void updateResource(ResourceInfo resource);

	void updateResourceBrowseNum(int resourceId);

	void deleteResource(ResourceInfo resource);

	void findAllList(Page<ResourceInfo> resourcePage);

	ResourceInfo findResourceById(int resourceId);

	void findResourceByArticleTitle(String articleTitle, Page<ResourceInfo> resourcePage);

	List<ResourceInfo> findResourceTopN();

	void saveBook(BookInfo book);

	void updateBook(BookInfo book);

	void updateBookBrowseNum(int bookId);

	void deleteBook(BookInfo book);

	void findAllBookList(Page<BookInfo> bookPage);

	BookInfo findBookById(int bookId);

	void findBookByBookTitle(String bookTitle, Page<BookInfo> bookPage);

	List<BookInfo> findBookTopN();
	
	public void saveComment(Comment comment);
	
	public List<Comment> findAllCommentByResourceId(int resourceId);
	
	public void saveBrowseRecord(BrowseRecord browseRecord);
	
	public List<BrowseRecord> findAllBrowseRecordByUsername(String username);
	
	BrowseRecord findBrowseRecordByUsernameAndResourceId(String username, int resourceId);
	
	public void updateBrowseRecord(BrowseRecord browseRecord);

}
