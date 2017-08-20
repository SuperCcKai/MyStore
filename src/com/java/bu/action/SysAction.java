package com.java.bu.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ApplicationAware;
import org.springframework.stereotype.Controller;

import com.java.bu.entity.News;
import com.java.bu.entity.Notice;
import com.java.bu.entity.PageBean;
import com.java.bu.entity.Product;
import com.java.bu.entity.ProductBigType;
import com.java.bu.entity.Tag;
import com.java.bu.service.NewsService;
import com.java.bu.service.NoticeService;
import com.java.bu.service.ProductBigTypeService;
import com.java.bu.service.ProductService;
import com.java.bu.service.TagService;
import com.java.bu.util.ResponseUtil;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 刷新系统缓存Action
 * @author 卜凡想
 * 2015年3月4日00:25:07
 */
@Controller
public class SysAction extends ActionSupport implements ApplicationAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Map<String, Object> application;
	
	@Resource
	private ProductBigTypeService productBigTypeService;
	
	@Resource
	private TagService tagService;
	
	@Resource
	private NoticeService noticeService;
	
	@Resource
	private NewsService newsService;
	
	@Resource
	private ProductService productService;
	
	@Override
	public void setApplication(Map<String, Object> application) {
		// TODO Auto-generated method stub
		this.application = application;
	}
	
	public String refreshSystem() throws Exception{
		
		//刷新商品大小类缓存
		List<ProductBigType> bigTypeList = productBigTypeService.findAllBigTypeList();
		application.put("bigTypeList", bigTypeList);
		
		//刷新首页标签缓存
		List<Tag> tagList = tagService.findTagList(null, null);
		application.put("tagList", tagList); 
		
		//刷新最新公告缓存
		List<Notice> noticeList = noticeService.findNoticeList(null, new PageBean(1, 7));
		application.put("noticeList", noticeList);
		
		//刷新最新新闻缓存
		List<News> newsList = newsService.findNewsList(null, new PageBean(1, 7));
		application.put("newsList", newsList);
		
		//刷新今日特价缓存
		Product s_product = new Product();
		s_product.setSpecialPrice(1);
		List<Product> specialPriceProductList = productService.findProductList(s_product, new PageBean(1, 100));
		application.put("specialPriceProductList", specialPriceProductList);
		
		//刷新热卖推荐缓存
		s_product = new Product();
		s_product.setHot(1);
		List<Product> hotProductList = productService.findProductList(s_product, new PageBean(1, 100));
		application.put("hotProductList", hotProductList);

		JSONObject result = new JSONObject();
		result.put("success", true);
		ResponseUtil.write(ServletActionContext.getResponse(), result);
		return null;
	}

}
