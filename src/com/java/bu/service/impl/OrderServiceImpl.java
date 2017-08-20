package com.java.bu.service.impl;

import java.util.LinkedList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.java.bu.dao.BaseDAO;
import com.java.bu.entity.Order;
import com.java.bu.entity.PageBean;
import com.java.bu.service.OrderService;
import com.java.bu.util.StringUtil;

/**
 * 订单接口实现类
 * @author 卜凡想
 * 2015-1-28 13:07:14
 */
@Service("orderService")
public class OrderServiceImpl implements OrderService {
	
	@Resource
	private BaseDAO<Order> baseDAO;

	@Override
	public void saveOrder(Order order) {
		// TODO Auto-generated method stub
		baseDAO.save(order);
	}

	@Override
	public List<Order> findOrder(Order s_order, PageBean pageBean) {
		// TODO Auto-generated method stub
		List<Object> param = new LinkedList<Object>();
		StringBuffer hql = new StringBuffer("from Order");
		if(s_order != null){
			if(s_order.getUser() != null && s_order.getUser().getId() != 0){
				hql.append(" and user.id=?");
				param.add(s_order.getUser().getId());
			}
			if(s_order.getUser() != null && StringUtil.isNotEmpty(s_order.getUser().getUserName())){
				hql.append(" and user.userName like ?");
				param.add("%" + s_order.getUser().getUserName() + "%");
			}
			if(StringUtil.isNotEmpty(s_order.getOrderNo())){
				hql.append(" and orderNo like ?");
				param.add("%" + s_order.getOrderNo() + "%");
			}
		}
		hql.append(" order by createTime desc");
		if(pageBean != null){
			return baseDAO.find(hql.toString().replaceFirst("and", "where"), param, pageBean);
		}else{
			return baseDAO.find(hql.toString().replaceFirst("and", "where"), param);
		}
	}

	@Override
	public void updateOrderStatus(int status, String orderNo) {
		// TODO Auto-generated method stub
		List<Object> param = new LinkedList<Object>();
		String hql = "update Order set status =? where orderNo =?";
		param.add(status);
		param.add(orderNo);
		baseDAO.executeHql(hql, param);
	}

	@Override
	public Long getOrderCount(Order s_order) {
		// TODO Auto-generated method stub
		List<Object> param = new LinkedList<Object>();
		StringBuffer hql = new StringBuffer("select count(*) from Order");
		if(s_order != null){
			if(s_order.getUser() != null && s_order.getUser().getId() != 0){
				hql.append(" and user.id=?");
				param.add(s_order.getUser().getId());
			}
			if(s_order.getUser() != null && StringUtil.isNotEmpty(s_order.getUser().getUserName())){
				hql.append(" and user.userName=?");
				param.add("%" + s_order.getUser().getUserName() + "%");
			}
			if(StringUtil.isNotEmpty(s_order.getOrderNo())){
				hql.append(" and orderNo like ?");
				param.add("%" + s_order.getOrderNo() + "%");
			}
		}
		return baseDAO.count(hql.toString().replaceFirst("and", "where"), param);
	}

	@Override
	public Order getOrderById(int id) {
		return baseDAO.get(Order.class, id);
	}

}
