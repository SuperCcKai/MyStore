package com.java.bu.service;

import java.util.List;

import com.java.bu.entity.Order;
import com.java.bu.entity.PageBean;

/**
 * 订单接口
 * @author 卜凡想
 * 2015年1月28日13:06:30
 */
public interface OrderService {
	
	/**
	 * 保存订单
	 * @param order
	 */
	public void saveOrder(Order order);
	
	/**
	 * 查询订单
	 * @param s_order
	 * @param pageBean
	 * @return
	 * 订单List
	 */
	public List<Order> findOrder(Order s_order, PageBean pageBean);
	
	/**
	 * 获取订单数量
	 * @param s_order
	 * @return
	 * Long型数字
	 */
	public Long getOrderCount(Order s_order);

	/**
	 * 根据订单号把订单状态修改
	 * @param status
	 * @param orderNo
	 */
	public void updateOrderStatus(int status, String orderNo);

	/**
	 * 根据订单ID查询订单
	 * @param orderId
	 * @return
	 * 订单实体
	 */
	public Order getOrderById(int id);
}
