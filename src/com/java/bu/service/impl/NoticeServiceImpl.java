package com.java.bu.service.impl;

import java.util.LinkedList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.java.bu.dao.BaseDAO;
import com.java.bu.entity.Notice;
import com.java.bu.entity.PageBean;
import com.java.bu.service.NoticeService;
import com.java.bu.util.StringUtil;
/**
 * 最新公告接口实现类
 * @author 卜凡想
 * 2015年1月5日20:25:43
 */
@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {

	@Resource
	private BaseDAO<Notice> baseDAO;
	
	@Override
	public List<Notice> findNoticeList(Notice s_notice, PageBean pageBean) {
		List<Object> param = new LinkedList<Object>();
		StringBuffer hql = new StringBuffer(" from Notice");
		if(s_notice != null){
			if(StringUtil.isNotEmpty(s_notice.getTitle())){
				hql.append(" and title like ?");
				param.add("%"+s_notice.getTitle()+"%");
			}
		}
		if(pageBean != null){
			return baseDAO.find(hql.toString().replaceFirst("and", "where"), param, pageBean);
		}else {
			return null;
		}
	}

	@Override
	public Notice getNoticeById(int noticeId) {
		return baseDAO.get(Notice.class, noticeId);
	}
	
	@Override
	public Long getNoticeCount(Notice s_notice) {
		// TODO Auto-generated method stub
		List<Object> param = new LinkedList<Object>();
		StringBuffer hql = new StringBuffer("select count(*) from Notice");
		if(s_notice != null){
			if(StringUtil.isNotEmpty(s_notice.getTitle())){
				hql.append(" and title like ?");
				param.add("%"+s_notice.getTitle()+"%");
			}
		}
		return baseDAO.count(hql.toString().replaceFirst("and", "where"), param);
	}

	@Override
	public void saveNotice(Notice notice) {
		// TODO Auto-generated method stub
		baseDAO.merge(notice);
	}

	@Override
	public void delete(Notice notice) {
		// TODO Auto-generated method stub
		baseDAO.delete(notice);
	}

}
