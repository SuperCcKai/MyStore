package com.java.bu.action;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.java.bu.entity.PageBean;
import com.java.bu.entity.ProductBigType;
import com.java.bu.entity.ProductSmallType;
import com.java.bu.service.ProductService;
import com.java.bu.service.ProductSmallTypeService;
import com.java.bu.util.ResponseUtil;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 商品小类Action
 * @author 卜凡想
 * 2015年1月31日16:49:29
 */
@Controller
public class ProductSmallTypeAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Resource
	private ProductSmallTypeService productSmallTypeService;
	
	@Resource
	private ProductService productService;
	
	private ProductSmallType s_productSmallType;
	
	private String page; //当前页
	private String rows;
	private String ids;
	private ProductSmallType productSmallType;
	
	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getRows() {
		return rows;
	}

	public void setRows(String rows) {
		this.rows = rows;
	}

	public String getIds() {
		return ids;
	}

	public void setIds(String ids) {
		this.ids = ids;
	}

	public ProductSmallType getProductSmallType() {
		return productSmallType;
	}

	public void setProductSmallType(ProductSmallType productSmallType) {
		this.productSmallType = productSmallType;
	}

	public ProductSmallType getS_productSmallType() {
		return s_productSmallType;
	}

	public void setS_productSmallType(ProductSmallType s_productSmallType) {
		this.s_productSmallType = s_productSmallType;
	}

	public String comboList() throws Exception{
		JSONArray jsonArray = new JSONArray();
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("id", "");
		jsonObject.put("name", "请选择...");
		jsonArray.add(jsonObject);
		List<ProductSmallType> productSmallTypeList = productSmallTypeService.findProductSmallTypeList(s_productSmallType, null);
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.setExcludes(new String[]{"bigType", "productList"});
		JSONArray rows = JSONArray.fromObject(productSmallTypeList, jsonConfig);
		jsonArray.addAll(rows);
		ResponseUtil.write(ServletActionContext.getResponse(), jsonArray);
		return null;
	}
	
	public String list() throws Exception{
		PageBean pageBean = new PageBean(Integer.parseInt(page), Integer.parseInt(rows));
		List<ProductSmallType> productSmallTypeList = productSmallTypeService.findProductSmallTypeList(s_productSmallType, pageBean);
		long total = productSmallTypeService.getProductSmallTypeCount(s_productSmallType);
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.setExcludes(new String[]{"productList"});
		jsonConfig.registerJsonValueProcessor(ProductBigType.class, new ObjectJsonValueProcessor(new String[]{"id", "name"}, ProductBigType.class));
		JSONArray rows = JSONArray.fromObject(productSmallTypeList, jsonConfig);
		JSONObject result = new JSONObject();
		result.put("rows", rows);
		result.put("total", total);
		ResponseUtil.write(ServletActionContext.getResponse(), result);
		return null;
	}
	
	//保存商品小类
	public String save() throws Exception{
		productSmallTypeService.saveProductSmallType(productSmallType);
		JSONObject result = new JSONObject();
		result.put("success", true);
		ResponseUtil.write(ServletActionContext.getResponse(), result);
		return null;
	}
	
	//删除商品小类
	public String delete() throws Exception{
		JSONObject result = new JSONObject();
		String []idsStr = ids.split(",");
		for(int i = 0; i<idsStr.length; i++){
			if(productService.existProductWithSmallTypeId(Integer.parseInt(idsStr[i]))){
				result.put("exist", "商品小类中包含商品，无法删除！");
			}else{
				ProductSmallType productSmallType = productSmallTypeService.getProductSmallTypeById(Integer.parseInt(idsStr[i]));
				productSmallTypeService.delete(productSmallType);
			}
		}
		result.put("success", true);
		ResponseUtil.write(ServletActionContext.getResponse(), result);
		return null;
	}
}
