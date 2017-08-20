package com.java.bu.service.impl;

import java.util.LinkedList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.java.bu.dao.BaseDAO;
import com.java.bu.entity.PageBean;
import com.java.bu.entity.ProductBigType;
import com.java.bu.service.ProductBigTypeService;
import com.java.bu.util.StringUtil;

/**
 * 商品大类接口实现类
 * @author 卜凡想
 * 2015年1月3日20:43:50
 */
@Service("productBigTypeService")
public class ProductBigTypeServiceImpl implements ProductBigTypeService {
	
	@Resource
	private BaseDAO<ProductBigType> baseDAO;

	@Override
	public List<ProductBigType> findAllBigTypeList() {

		return baseDAO.find(" from ProductBigType");
	}

	@Override
	public List<ProductBigType> findProductBigTypeList(
			ProductBigType s_productBigType, PageBean pageBean) {
		List<Object> param = new LinkedList<Object>();
		StringBuffer hql = new StringBuffer(" from ProductBigType");
		if(s_productBigType != null){
			if(StringUtil.isNotEmpty(s_productBigType.getName())){
				hql.append(" and name like ?");
				param.add("%"+s_productBigType.getName()+"%");
			}
		}
		if(pageBean != null){
			return baseDAO.find(hql.toString().replaceFirst("and", "where"), param, pageBean);
		}else{
			return baseDAO.find(hql.toString().replaceFirst("and", "where"), param);
		}
	}

	@Override
	public Long getProductBigTypeCount(ProductBigType s_productBigType) {
		List<Object> param = new LinkedList<Object>();
		StringBuffer hql = new StringBuffer("select count(*) from ProductBigType");
		if(s_productBigType != null){
			if(StringUtil.isNotEmpty(s_productBigType.getName())){
				hql.append(" and name like ?");
				param.add("%"+s_productBigType.getName()+"%");
			}
		}
		return baseDAO.count(hql.toString().replaceFirst("and", "where"), param);
	}

	@Override
	public void saveProductBigType(ProductBigType productBigType) {
		// TODO Auto-generated method stub
		baseDAO.merge(productBigType);
	}

	@Override
	public void delete(ProductBigType productBigType) {
		// TODO Auto-generated method stub
		baseDAO.delete(productBigType);
	}

	@Override
	public ProductBigType getProductBigTypeById(int productBigTypeId) {
		return baseDAO.get(ProductBigType.class, productBigTypeId);
	}

}
