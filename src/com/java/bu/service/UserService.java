package com.java.bu.service;

import java.util.List;

import com.java.bu.entity.PageBean;
import com.java.bu.entity.User;


/**
 * 用户接口
 * @author 卜凡想
 * 2015年1月20日19:02:37
 */
public interface UserService {
	
	/**
	 * 保存一个用户
	 * @param user
	 */
	public void saveUser(User user);
	
	/**
	 * 根据输入的用户名判断数据库是否已经存在
	 * @param userName
	 * @return
	 * boolean类型
	 */
	public boolean existUserWithUserName(String userName);
	
	/**
	 * 用户登录
	 * @param user
	 * @return
	 * 当前用户信息
	 */
	public User login(User user);

	/**
	 * 分页查询用户信息
	 * @param s_user
	 * @param pageBean
	 * @return
	 * 用户List
	 */
	public List<User> findUserList(User s_user, PageBean pageBean);

	/**
	 * 获取总用户量
	 * @param s_user
	 * @return
	 * Long型数字
	 */
	public Long getUserCount(User s_user);
	

	/**
	 * 根据用户对象删除用户
	 * @param user
	 */
	public void delete(User user);
	
	/**
	 * 根据用户Id获取用户对象
	 * @param id
	 * @return
	 */
	public User getUserById(int id);
}
