package com.java.bu.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.stereotype.Controller;

import com.java.bu.entity.Product;
import com.java.bu.entity.ShoppingCart;
import com.java.bu.entity.ShoppingCartItem;
import com.java.bu.entity.User;
import com.java.bu.service.ProductService;
import com.java.bu.util.NavUtil;
import com.java.bu.util.ResponseUtil;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 购物Action
 * @author 卜凡想
 * 2015年1月22日20:19:32
 */
@Controller
public class ShoppingAction extends ActionSupport implements ServletRequestAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private HttpServletRequest request;
	
	private String mainPage;
	private String navCode;
	
	private String count;
	
	@Resource
	private ProductService productService;
	
	private int productId;

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getMainPage() {
		return mainPage;
	}

	public void setMainPage(String mainPage) {
		this.mainPage = mainPage;
	}

	public String getNavCode() {
		return navCode;
	}

	public void setNavCode(String navCode) {
		this.navCode = navCode;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

	public String addShoppingCartItem() throws Exception{
		HttpSession session = request.getSession();
		Product product = productService.getProductById(productId);
		
		ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
		if(shoppingCart == null){
			shoppingCart = new ShoppingCart();
			User currentUser = (User) session.getAttribute("currentUser");
			shoppingCart.setUserId(currentUser.getId());
		}
		
		List<ShoppingCartItem> shoppingCartItemList = shoppingCart.getShoppingCartItems();
		boolean flag = true;
		for(ShoppingCartItem scI:shoppingCartItemList){
			if(scI.getProduct().getId() == product.getId()){
				scI.setCount(scI.getCount()+1);
				flag = false;
				break;
			}
		}
		
		if(flag){
			ShoppingCartItem shoppingCartItem = new ShoppingCartItem();
			shoppingCartItem.setProduct(product);
			shoppingCartItem.setCount(1);
			shoppingCartItemList.add(shoppingCartItem);
		}
		
		session.setAttribute("shoppingCart", shoppingCart);
		
		JSONObject result = new JSONObject();
		result.put("success", true);
		ResponseUtil.write(ServletActionContext.getResponse(), result);
		
		return null;
	}
	
	//改变商品数量
	public String updateShoppingCartItem() throws Exception{
		HttpSession session = request.getSession();
		Product product = productService.getProductById(productId);
		ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
		List<ShoppingCartItem> shoppingCartItemList = shoppingCart.getShoppingCartItems();
		for(ShoppingCartItem scI:shoppingCartItemList){
			if(scI.getProduct().getId() == product.getId()){
				scI.setCount(scI.getCount()+1);
				break;
			}
		}
		session.setAttribute("shoppingCart", shoppingCart);
		
		JSONObject result = new JSONObject();
		result.put("success", true);
		ResponseUtil.write(ServletActionContext.getResponse(), result);
		return null;
	}
	
	//删除商品
	public String removeShoppingCartItem() throws Exception{
		HttpSession session = request.getSession();
		ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
		List<ShoppingCartItem> shoppingCartItemList = shoppingCart.getShoppingCartItems();
		for (int i = 0; i < shoppingCartItemList.size(); i++) {
			if(productId == shoppingCartItemList.get(i).getProduct().getId()){
				shoppingCartItemList.remove(i);
				break;
			}
		}
		shoppingCart.setShoppingCartItems(shoppingCartItemList);
		session.setAttribute("shoppingCart", shoppingCart);
		return "list";
	}
		
	//显示购物车列表
	public String shoppingCartList() throws Exception{
		mainPage = "shopping/shopping.jsp";
		navCode = NavUtil.genNavCode("购物车");
		return SUCCESS;
	}
	
	//直接购买
	public String buy() throws Exception{
		HttpSession session = request.getSession();
		Product product = productService.getProductById(productId);

		ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
		if(shoppingCart == null){
			shoppingCart = new ShoppingCart();
			User currentUser = (User) session.getAttribute("currentUser");
			shoppingCart.setUserId(currentUser.getId());
		}
		List<ShoppingCartItem> shoppingCartItemList = shoppingCart.getShoppingCartItems();
		
		boolean flag = true;
		for(ShoppingCartItem scI:shoppingCartItemList){
			if(scI.getProduct().getId() == product.getId()){
				scI.setCount(scI.getCount()+1);
				flag = false;
				break;
			}
		}
		
		ShoppingCartItem shoppingCartItem = new ShoppingCartItem();
		if(flag){
			shoppingCartItem.setProduct(product);
			shoppingCartItem.setCount(1);
			shoppingCartItemList.add(shoppingCartItem);
		}
		session.setAttribute("shoppingCart", shoppingCart);
		
		mainPage = "shopping/shopping.jsp";
		navCode = NavUtil.genNavCode("购物车");
		return SUCCESS;
	}
	
	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
	}

}
