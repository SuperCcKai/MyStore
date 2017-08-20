package com.java.bu.service;

import java.util.List;

import com.java.bu.entity.PageBean;
import com.java.bu.entity.ProductBigType;

/**
 * 商品大类接口
 * @author 卜凡想
 * 2015年1月3日20:39:15
 */
public interface ProductBigTypeService {

	/**
	 * 查找所有商品大类方法
	 * @return
	 * 所有商品大类集合
	 */
	public List<ProductBigType> findAllBigTypeList();

	/**
	 * 查询商品大类并分页
	 * @param s_productBigType
	 * @param pageBean
	 * @return
	 * List
	 */
	public List<ProductBigType> findProductBigTypeList(ProductBigType s_productBigType, PageBean pageBean);
	
	/**
	 * 查询总记录数
	 * @param s_productBigType
	 * @return
	 * Long型数字
	 */
	public Long getProductBigTypeCount(ProductBigType s_productBigType);
	
	/**
	 * 保存商品大类
	 * @param productBigType
	 */
	public void saveProductBigType(ProductBigType productBigType);
	
	/**
	 * 删除商品大类
	 * @param productBigType
	 */
	public void delete(ProductBigType productBigType);
	
	/**
	 * 通过商品大类ID查询商品大类实体
	 * @param productBigTypeId
	 * @return
	 * 商品大类实体
	 */
	public ProductBigType getProductBigTypeById(int productBigTypeId);
}
