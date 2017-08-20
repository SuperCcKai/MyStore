package com.java.bu.service;

import java.util.List;

import com.java.bu.entity.Comment;
import com.java.bu.entity.PageBean;

/**
 * 留言和评论接口
 * @author 卜凡想
 * 2015年1月22日15:19:10
 */
public interface CommentService {
	
	/**
	 * 分页取留言、评论
	 * @param s_Comment
	 * @param pageBean
	 * @return
	 * 集合
	 */
	public List<Comment> findCommentList(Comment s_Comment, PageBean pageBean);
	
	/**
	 * 获取留言的总记录数
	 * @param s_Comment
	 * @return
	 * Long型数字
	 */
	public Long getCommentCount(Comment s_Comment);

	/**
	 * 创建一条留言
	 * @param comment
	 */
	public void saveComment(Comment comment);
	
	/**
	 * 根据留言ID获取留言实体
	 * @param commentId
	 * @return
	 * 留言实体
	 */
	public Comment getCommentById(int commentId);
	
	/**
	 * 删除留言
	 * @param comment
	 */
	public void delete(Comment comment);

}
