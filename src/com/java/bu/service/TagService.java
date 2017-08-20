package com.java.bu.service;

import java.util.List;

import com.java.bu.entity.PageBean;
import com.java.bu.entity.Tag;

/**
 * 首页标签接口
 * @author 卜凡想
 * 2015年1月5日19:35:22
 */
public interface TagService {

	/**
	 * 查找所有标签
	 * @return 集合
	 */
	public List<Tag> findTagList(Tag s_tag, PageBean pageBean);
	
	/**
	 * 获取标签数量
	 * @param s_tag
	 * @return
	 * Long型数字
	 */
	public Long getTagCount(Tag s_tag);
	
	/**
	 * 保存标签
	 * @param tag
	 */
	public void saveTag(Tag tag);
	
	/**
	 * 删除标签
	 * @param tag
	 */
	public void delete(Tag tag);
	
	/**
	 * 通过标签ID获取标签实体
	 * @param tagId
	 * @return
	 * 标签实体
	 */
	public Tag getTagById(int tagId);
}
