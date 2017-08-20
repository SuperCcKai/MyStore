package com.java.bu.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 商品实体类
 * @author 卜凡想
 * 2015年1月3日13:32:03
 */
@Entity
@Table(name="t_product")
public class Product {

	private int id;
	private String name;
	private String price;
	private int stock;//库存
	private String proPic;//图片名字
	private String description;//描述
	private int hot;//1表示热卖，0表示不是热卖
	private Date hotTime;//热卖时间
	private int specialPrice;//1表示特价，0表示不是特价
	private Date specialPriceTime;//特价时间
	
	private ProductBigType bigType;
	private ProductSmallType smallType;
	private List<OrderProduct> orderProductList = new ArrayList<OrderProduct>();
	
	@Id
	@GeneratedValue(generator="_native")
	@GenericGenerator(name="_native",strategy="native")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column(length=50)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column(length=50)
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getProPic() {
		return proPic;
	}
	public void setProPic(String proPic) {
		this.proPic = proPic;
	}
	
	@Column(length=2000)
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getHot() {
		return hot;
	}
	public void setHot(int hot) {
		this.hot = hot;
	}
	public Date getHotTime() {
		return hotTime;
	}
	public void setHotTime(Date hotTime) {
		this.hotTime = hotTime;
	}
	public int getSpecialPrice() {
		return specialPrice;
	}
	public void setSpecialPrice(int specialPrice) {
		this.specialPrice = specialPrice;
	}
	public Date getSpecialPriceTime() {
		return specialPriceTime;
	}
	public void setSpecialPriceTime(Date specialPriceTime) {
		this.specialPriceTime = specialPriceTime;
	}
	
	@ManyToOne
	@JoinColumn(name="bigTypeId")
	public ProductBigType getBigType() {
		return bigType;
	}
	public void setBigType(ProductBigType bigType) {
		this.bigType = bigType;
	}
	
	@ManyToOne
	@JoinColumn(name="smallTypeId")
	public ProductSmallType getSmallType() {
		return smallType;
	}
	public void setSmallType(ProductSmallType smallType) {
		this.smallType = smallType;
	}
	
	@OneToMany
	@JoinColumn(name="productId")
	public List<OrderProduct> getOrderProductList() {
		return orderProductList;
	}
	public void setOrderProductList(List<OrderProduct> orderProductList) {
		this.orderProductList = orderProductList;
	}
	
}
