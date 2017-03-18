package com.tjnu.dao.impl;

import org.springframework.stereotype.Repository;

import com.tjnu.dao.ICommentDao;
import com.tjnu.model.Comment;

@Repository("commentDao")
public class CommentDaoImpl extends BaseDaoImpl<Comment> implements ICommentDao {

}
