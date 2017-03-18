package com.tjnu.dao.impl;

import org.springframework.stereotype.Repository;

import com.tjnu.dao.IBookDao;
import com.tjnu.model.BookInfo;
@Repository("bookDao")
public class BookDaoImpl extends BaseDaoImpl<BookInfo>implements IBookDao {

}
