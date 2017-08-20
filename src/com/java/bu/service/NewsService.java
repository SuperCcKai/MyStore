package com.java.bu.service;

import java.util.List;

import com.java.bu.entity.News;
import com.java.bu.entity.PageBean;

/**
 * 最新新闻接口
 * @author 卜凡想
 * 2015年1月5日19:44:55
 */
public interface NewsService {

	/**
	 * 取前七条最新新闻
	 * @param s_news
	 * @param pageBean
	 * @return
	 * 集合
	 */
	public List<News> findNewsList(News s_news, PageBean pageBean);
	
	/**
	 * 通过新闻id获取新闻实体
	 * @param newsId
	 * @return
	 * 一个新闻实体
	 */
	public News getNewsById(int newsId);
	
	/**
	 * 获取新闻总数量
	 * @param s_news
	 * @return
	 * Long型数字
	 */
	public Long getNewsCount(News s_news);
	
	/**
	 * 保存新闻
	 * @param news
	 */
	public void saveNews(News news);
	
	/**
	 * 删除新闻
	 * @param news
	 */
	public void delete(News news);
}
