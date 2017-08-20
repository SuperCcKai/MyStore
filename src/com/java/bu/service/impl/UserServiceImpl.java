package com.java.bu.service.impl;

import java.util.LinkedList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.java.bu.dao.BaseDAO;
import com.java.bu.entity.PageBean;
import com.java.bu.entity.User;
import com.java.bu.service.UserService;
import com.java.bu.util.StringUtil;


/**
 * 用户接口实现类
 * @author 卜凡想
 * 2015年1月20日19:06:55
 */
@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource
	private BaseDAO<User> baseDAO;
	
	@Override
	public void saveUser(User user) {
		// TODO Auto-generated method stub
		baseDAO.merge(user);
	}

	@Override
	public boolean existUserWithUserName(String userName) {
		String hql = "select count(*) from User where userName=?";
		Object[] param = new Object[]{userName};
		long count = baseDAO.count(hql, param);
		if(count>0){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public User login(User user) {
		List<Object> param = new LinkedList<Object>();
		StringBuffer hql = new StringBuffer("from User u where u.userName=? and u.password=?");
		param.add(user.getUserName());
		param.add(user.getPassword());
		if(user.getStatus() == 2){
			hql.append(" and u.status=2");
		}
		return baseDAO.get(hql.toString(), param);
	}

	@Override
	public List<User> findUserList(User s_user, PageBean pageBean) {
		List<Object> param = new LinkedList<Object>();
		StringBuffer hql = new StringBuffer("from User");
		if(s_user != null){
			if(StringUtil.isNotEmpty(s_user.getUserName())){
				hql.append(" and userName like ? ");
				param.add("%" +s_user.getUserName()+ "%");
			}
		}
		hql.append(" and status=1");
		if(pageBean != null){
			return baseDAO.find(hql.toString().replaceFirst("and", "where"), param, pageBean);
		}else{
			return null;
		}
	}

	@Override
	public Long getUserCount(User s_user) {
		List<Object> param = new LinkedList<Object>();
		StringBuffer hql = new StringBuffer("select count(*) from User");
		if(s_user != null){
			if(StringUtil.isNotEmpty(s_user.getUserName())){
				hql.append(" and userName like ? ");
				param.add("%" +s_user.getUserName()+ "%");
			}
		}
		hql.append(" and status=1");
		return baseDAO.count(hql.toString().replaceFirst("and", "where"), param);
	}

	@Override
	public void delete(User user) {
		// TODO Auto-generated method stub
		baseDAO.delete(user);
	}

	@Override
	public User getUserById(int id) {
		return baseDAO.get(User.class, id);
	}

}
