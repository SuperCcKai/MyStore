package com.java.bu.action;

import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.stereotype.Controller;

import com.java.bu.entity.Order;
import com.java.bu.entity.OrderProduct;
import com.java.bu.entity.PageBean;
import com.java.bu.entity.Product;
import com.java.bu.entity.ShoppingCart;
import com.java.bu.entity.ShoppingCartItem;
import com.java.bu.entity.User;
import com.java.bu.service.OrderService;
import com.java.bu.util.DateUtil;
import com.java.bu.util.NavUtil;
import com.java.bu.util.ResponseUtil;
import com.java.bu.util.StringUtil;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 订单Action
 * @author 卜凡想
 * 2015年1月28日13:18:03
 */
@Controller
public class OrderAction extends ActionSupport implements ServletRequestAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private HttpServletRequest request;
	
	@Resource
    private OrderService orderService;
	
	private String mainPage;
    private String navCode;
    private String page; //当前页
	private String rows;
    private Order s_order;
    private List<Order> orderList;
    
    private int status;
    private String orderNo;
    
    private String id;
    
    private String orderNos;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getOrderNos() {
		return orderNos;
	}

	public void setOrderNos(String orderNos) {
		this.orderNos = orderNos;
	}

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

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public Order getS_order() {
		return s_order;
	}

	public void setS_order(Order s_order) {
		this.s_order = s_order;
	}

	public List<Order> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<Order> orderList) {
		this.orderList = orderList;
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
	
	public String save() throws Exception{
    	HttpSession session = request.getSession();
    	Order order = new Order();
    	User currentUser = (User) session.getAttribute("currentUser");
    	order.setUser(currentUser);
    	order.setCreateTime(new Date());
    	order.setOrderNo(DateUtil.getCurrentDateStr());
    	order.setStatus(1);
    	
    	ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
    	List<ShoppingCartItem> shoppingCartItemList = shoppingCart.getShoppingCartItems();
    	
    	float cost = 0;
    	List<OrderProduct> orderProductList = new LinkedList<OrderProduct>();
    	for (ShoppingCartItem shoppingCartItem : shoppingCartItemList) {
			Product product = shoppingCartItem.getProduct();
			OrderProduct orderProduct = new OrderProduct();
			orderProduct.setNum(shoppingCartItem.getCount());
			orderProduct.setOrder(order);
			orderProduct.setProduct(product);
			cost += Float.valueOf(product.getPrice()) * shoppingCartItem.getCount();
			orderProductList.add(orderProduct);
		}
    	order.setOrderProductList(orderProductList);
    	order.setCost(cost);
    	
    	orderService.saveOrder(order);
    	
    	navCode = NavUtil.genNavCode("购物");
    	mainPage = "shopping/shopping-result.jsp";
    	session.removeAttribute("shoppingCart");
    	
    	return SUCCESS;
    }
	
	public String findOrder() throws Exception{
		HttpSession session = request.getSession();
		User currentUser = (User) session.getAttribute("currentUser");
		if(s_order == null){
			s_order = new Order();
		}
		s_order.setUser(currentUser);
		orderList = orderService.findOrder(s_order, null);
		navCode = NavUtil.genNavCode("个人中心");
		mainPage = "userCenter/orderList.jsp";
		return "orderList";
	}
	
	public String list() throws Exception{
		PageBean pageBean = new PageBean(Integer.parseInt(page), Integer.parseInt(rows));
		List<Order> orderList = orderService.findOrder(s_order, pageBean);
		long total = orderService.getOrderCount(s_order);
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.setExcludes(new String[]{"orderProductList"});
		jsonConfig.registerJsonValueProcessor(java.util.Date.class, new DateJsonValueProcessor("yyyy-MM-dd"));
		jsonConfig.registerJsonValueProcessor(User.class, new ObjectJsonValueProcessor(new String[]{"id", "userName"}, User.class));
		JSONArray rows = JSONArray.fromObject(orderList, jsonConfig);
		JSONObject result = new JSONObject();
		result.put("rows", rows);
		result.put("total", total);
		ResponseUtil.write(ServletActionContext.getResponse(), result);
		return null;
	}
	
	//确认收货
	public String confirmReceive() throws Exception{
		orderService.updateOrderStatus(status, orderNo);
		JSONObject result = new JSONObject();
		result.put("success", true);
		ResponseUtil.write(ServletActionContext.getResponse(), result);
		return null;
	}
	
	public String findProductListByOrderId() throws Exception{
		if(StringUtil.isEmpty(id)){
			return null;
		}
		Order order = orderService.getOrderById(Integer.parseInt(id));
		List<OrderProduct> orderProductList = order.getOrderProductList();
		JSONObject result = new JSONObject();
		JSONArray rows = new JSONArray();
		for(OrderProduct orderProduct:orderProductList){
			Product product = orderProduct.getProduct();
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("productName", product.getName());
			jsonObject.put("proPic", product.getProPic());
			jsonObject.put("price", product.getPrice());
			jsonObject.put("num", orderProduct.getNum());
			jsonObject.put("subtotal", Float.valueOf(product.getPrice())*orderProduct.getNum());
			rows.add(jsonObject);
		}
		result.put("rows", rows);
		result.put("total", rows.size());
		ResponseUtil.write(ServletActionContext.getResponse(), result);
		return null;
	}
	
	public String modifyOrderStatus() throws Exception{
		String []orderNoStr = orderNos.split(",");
		for (int i = 0; i < orderNoStr.length; i++) {
			orderService.updateOrderStatus(status, orderNoStr[i]);
		}
		JSONObject result = new JSONObject();
		result.put("success", true);
		ResponseUtil.write(ServletActionContext.getResponse(), result);
		return null;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
	}

}
