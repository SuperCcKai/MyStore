package com.java.bu.entity;

/**
 * 购物车条目类
 * @author 卜凡想
 * 2015年1月22日20:13:40
 */
public class ShoppingCartItem {
	
	private int id;
	private Product product;
	private int count;//购买的数量
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	

}
