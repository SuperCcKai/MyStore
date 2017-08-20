package com.java.bu.entity;

import java.util.ArrayList;
import java.util.List;

/**
 * 购物车类
 * @author 卜凡想
 * 2015年1月22日20:15:07
 */
public class ShoppingCart {
	
	private int userId;
	private List<ShoppingCartItem> shoppingCartItems = new ArrayList<ShoppingCartItem>();
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public List<ShoppingCartItem> getShoppingCartItems() {
		return shoppingCartItems;
	}
	public void setShoppingCartItems(List<ShoppingCartItem> shoppingCartItems) {
		this.shoppingCartItems = shoppingCartItems;
	}
	

}
