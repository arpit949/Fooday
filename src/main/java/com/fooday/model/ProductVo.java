package com.fooday.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "product_table")
public class ProductVo 
{
	@Id
	@Column(name="product_Id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name="product_Name")
	private String productName;
	
	@Column(name="product_Price")
	private float productPrice;
	
	@Column(name="product_Description")
	private String productDescription;
	
	@Column(name="product_ImageUrl")
	private String productImageUrl;
	
	@ManyToOne
	CategoryVo categoryvo;

	@ManyToOne
	LoginVo loginvo;
	
	@Column(name = "status")
	private boolean status = true;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public float getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(float productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getProductImageUrl() {
		return productImageUrl;
	}

	public void setProductImageUrl(String productImageUrl) {
		this.productImageUrl = productImageUrl;
	}

	public CategoryVo getCategoryvo() {
		return categoryvo;
	}

	public void setCategoryvo(CategoryVo categoryvo) {
		this.categoryvo = categoryvo;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public LoginVo getLoginvo() {
		return loginvo;
	}

	public void setLoginvo(LoginVo loginvo) {
		this.loginvo = loginvo;
	}
	
	
	
}
