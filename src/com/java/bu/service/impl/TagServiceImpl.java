package com.java.bu.service.impl;

import java.util.LinkedList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.java.bu.dao.BaseDAO;
import com.java.bu.entity.PageBean;
import com.java.bu.entity.Tag;
import com.java.bu.service.TagService;
import com.java.bu.util.StringUtil;
/**
 * 首页标签接口实现类
 * @author 卜凡想
 * 2015年1月5日20:09:05
 */
@Service("tagService")
public class TagServiceImpl implements TagService {
	
	@Resource
	private BaseDAO<Tag> baseDAO;

	@Override
	public List<Tag> findTagList(Tag s_tag, PageBean pageBean) {
		List<Object> param = new LinkedList<Object>();
		StringBuffer hql = new StringBuffer(" from Tag");
		if(s_tag != null){
			if(StringUtil.isNotEmpty(s_tag.getName())){
				hql.append(" and name like ?");
				param.add("%"+s_tag.getName()+"%");
			}
		}
		if(pageBean != null){
			return baseDAO.find(hql.toString().replaceFirst("and", "where"), param, pageBean);
		}else{
			return baseDAO.find(hql.toString());
		}
	}

	@Override
	public Long getTagCount(Tag s_tag) {
		List<Object> param = new LinkedList<Object>();
		StringBuffer hql = new StringBuffer("select count(*) from Tag");
		if(s_tag != null){
			if(StringUtil.isNotEmpty(s_tag.getName())){
				hql.append(" and name like ?");
				param.add("%"+s_tag.getName()+"%");
			}
		}
		return baseDAO.count(hql.toString().replaceFirst("and", "where"), param);
	}

	@Override
	public void saveTag(Tag tag) {
		// TODO Auto-generated method stub
		baseDAO.merge(tag);
	}

	@Override
	public void delete(Tag tag) {
		// TODO Auto-generated method stub
		baseDAO.delete(tag);
	}

	@Override
	public Tag getTagById(int tagId) {
		return baseDAO.get(Tag.class, tagId);
	}

}
