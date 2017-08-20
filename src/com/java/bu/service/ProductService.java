package com.java.bu.service;

import java.util.List;

import com.java.bu.entity.PageBean;
import com.java.bu.entity.Product;

/**
 * 商品接口
 * @author 卜凡想
 * 2015年1月5日19:46:49
 */
public interface ProductService {

	/**
	 * 分页取商品
	 * @param s_product
	 * @param pageBean
	 * @return
	 * 集合
	 */
	public List<Product> findProductList(Product s_product, PageBean pageBean);
	
	/**
	 * 获取查询的总记录数
	 * @param s_product
	 * @return
	 * Long型数字
	 */
	public Long getProductCount(Product s_product);
	
	/**
	 * 通过商品id获取一个商品实体
	 * @param productId
	 * @return
	 * 一个商品实体
	 */
	public Product getProductById(int productId);
	
	/**
	 * 保存商品
	 * @param product
	 */
	public void saveProduct(Product product);
	
	/**
	 * 删除商品
	 * @param product
	 */
	public void deleteProduct(Product product);
	
	/**
	 * 商品设置为热卖
	 * @param productId
	 */
	public void setProductWithHot(int productId);
	
	/**
	 * 商品设置为特价
	 * @param productId
	 */
	public void setProductWithSpecialPrice(int productId);
	
	/**
	 * 删除商品小类时，通过传过来的商品小类ID查找是否有商品
	 * @param bigTypeId
	 * @return
	 * boolean类型(true 表示存在，false 表示不存在)
	 */
	public boolean existProductWithSmallTypeId(int smallTypeId);
}
