package com.java.bu.service.impl;

import java.util.LinkedList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.java.bu.dao.BaseDAO;
import com.java.bu.entity.Comment;
import com.java.bu.entity.PageBean;
import com.java.bu.service.CommentService;
import com.java.bu.util.StringUtil;

/**
 * 留言和评论接口实现类
 * @author 卜凡想
 * 2015年1月22日15:24:18
 */
@Service("commentService")
public class CommentServiceImpl implements CommentService {
	
	@Resource
	private BaseDAO<Comment> baseDAO;

	@Override
	public List<Comment> findCommentList(Comment s_Comment, PageBean pageBean) {
		List<Object> param = new LinkedList<Object>();
		StringBuffer hql = new StringBuffer("from Comment");
		if(s_Comment != null){
			if(StringUtil.isNotEmpty(s_Comment.getContent())){
				hql.append(" and content like ?");
				param.add("%"+s_Comment.getContent()+"%");
			}
		}
		hql.append(" order by createTime desc");
		if(pageBean != null){
			return baseDAO.find(hql.toString().replaceFirst("and", "where"), param, pageBean);
		}else{
			return null;
		}
	}

	@Override
	public Long getCommentCount(Comment s_Comment) {
		List<Object> param = new LinkedList<Object>();
		StringBuffer hql = new StringBuffer("select count(*) from Comment");
		if(s_Comment != null){
			if(StringUtil.isNotEmpty(s_Comment.getContent())){
				hql.append(" and content like ?");
				param.add("%"+s_Comment.getContent()+"%");
			}
		}
		return baseDAO.count(hql.toString().replaceFirst("and", "where"), param);
	}

	@Override
	public void saveComment(Comment comment) {
		// TODO Auto-generated method stub
		baseDAO.merge(comment);
	}

	@Override
	public Comment getCommentById(int commentId) {
		// TODO Auto-generated method stub
		return baseDAO.get(Comment.class, commentId);
	}

	@Override
	public void delete(Comment comment) {
		// TODO Auto-generated method stub
		baseDAO.delete(comment);
	}

}
