package com.java.bu.service;

import java.util.List;

import com.java.bu.entity.PageBean;
import com.java.bu.entity.ProductSmallType;


/**
 * 商品小类接口
 * @author 卜凡想
 * 2015年1月31日16:37:04
 */
public interface ProductSmallTypeService {
	
	/**
	 * 查询所有商品小类
	 * @param s_productSmallType
	 * @return
	 * List
	 */
	public List<ProductSmallType> findProductSmallTypeList(ProductSmallType s_productSmallType, PageBean pageBean);
	

	/**
	 * 删除商品大类时，通过传过来的商品大类ID查找是否有商品小类
	 * @param bigTypeId
	 * @return
	 * boolean类型(true 表示存在，false 表示不存在)
	 */
	public boolean existSmallTypeWithBigTypeId(int bigTypeId);
	
	/**
	 * 查询总记录数
	 * @param s_productBigType
	 * @return
	 * Long型数字
	 */
	public Long getProductSmallTypeCount(ProductSmallType s_productSmallType);
	
	/**
	 * 保存商品小类
	 * @param productSmallType
	 */
	public void saveProductSmallType(ProductSmallType productSmallType);
	
	/**
	 * 删除商品小类
	 * @param productSmallType
	 */
	public void delete(ProductSmallType productSmallType);
	
	/**
	 * 通过商品小类ID查询商品小类实体
	 * @param productSmallTypeId
	 * @return
	 * 商品小类实体
	 */
	public ProductSmallType getProductSmallTypeById(int productSmallTypeId);

}
