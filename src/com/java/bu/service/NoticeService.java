package com.java.bu.service;

import java.util.List;

import com.java.bu.entity.Notice;
import com.java.bu.entity.PageBean;

/**
 * 最新公告接口
 * @author 卜凡想
 * 2015年1月5日19:40:09
 */
public interface NoticeService {

	/**
	 * 取前七条最新公告
	 * @param s_notice
	 * @param pageBean
	 * @return
	 * 集合
	 */
	public List<Notice> findNoticeList(Notice s_notice, PageBean pageBean);
	
	/**
	 * 通过公告id获取公告实体
	 * @param noticeId
	 * @return
	 * 一个公告实体
	 */
	public Notice getNoticeById(int noticeId);
	
	/**
	 * 获取公告总数量
	 * @param s_notice
	 * @return
	 * Long型数字
	 */
	public Long getNoticeCount(Notice s_notice);
	
	/**
	 * 保存公告
	 * @param notice
	 */
	public void saveNotice(Notice notice);
	
	/**
	 * 删除公告
	 * @param notice
	 */
	public void delete(Notice notice);
}
