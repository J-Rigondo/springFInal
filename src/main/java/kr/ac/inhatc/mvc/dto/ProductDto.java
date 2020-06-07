package kr.ac.inhatc.mvc.dto;

import java.io.Serializable;

public class ProductDto implements Serializable{	
	private static final long serialVersionUID = 1L;
	private String productId;
	private String productName;
	private Integer unitPrice;
	private String description;
	private String manufacturer;
	private String category;
	private String productImg;
	private long unitStock;	
	private String productCondition;
	
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Integer getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getProductImg() {
		return productImg;
	}
	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}
	public long getUnitStock() {
		return unitStock;
	}
	public void setUnitStock(long unitStock) {
		this.unitStock = unitStock;
	}	
	public String getProductCondition() {
		return productCondition;
	}
	public void setProductCondition(String productCondition) {
		this.productCondition = productCondition;
	}	

}
