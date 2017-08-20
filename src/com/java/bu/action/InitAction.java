package com.java.bu.action;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

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

/**
 * 初始化Action
 * @author 卜凡想
 * 2015年1月3日20:33:07
 */
@Component
public class InitAction implements ServletContextListener, ApplicationContextAware{
	
	private static ApplicationContext applicationContext;

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent servletContextEvent) {
		
		ServletContext application = servletContextEvent.getServletContext();
		
		//设置商品大小类缓存
		ProductBigTypeService productBigTypeService = (ProductBigTypeService) applicationContext.getBean("productBigTypeService");
		List<ProductBigType> bigTypeList = productBigTypeService.findAllBigTypeList();
		application.setAttribute("bigTypeList", bigTypeList);
		
		//设置首页标签缓存
		TagService tagService = (TagService) applicationContext.getBean("tagService");
		List<Tag> tagList = tagService.findTagList(null, null);
		application.setAttribute("tagList", tagList);
		
		//设置最新公告缓存
		NoticeService noticeService = (NoticeService) applicationContext.getBean("noticeService");
		List<Notice> noticeList = noticeService.findNoticeList(null, new PageBean(1, 7));
		application.setAttribute("noticeList", noticeList);
		
		//设置最新新闻缓存
		NewsService newsService = (NewsService) applicationContext.getBean("newsService");
		List<News> newsList = newsService.findNewsList(null, new PageBean(1, 7));
		application.setAttribute("newsList", newsList);
		
		//设置今日特价缓存
		ProductService productService = (ProductService) applicationContext.getBean("productService");
		Product s_product = new Product();
		s_product.setSpecialPrice(1);
		List<Product> specialPriceProductList = productService.findProductList(s_product, new PageBean(1, 100));
		application.setAttribute("specialPriceProductList", specialPriceProductList);
		
		//设置热卖推荐缓存
		s_product = new Product();
		s_product.setHot(1);
		List<Product> hotProuductList = productService.findProductList(s_product, new PageBean(1, 100));
		application.setAttribute("hotProductList", hotProuductList);
		
	}

	@Override
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		
		this.applicationContext = applicationContext;
		
	}

}
