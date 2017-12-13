package com.Entities;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Products", catalog = "Markito")
public class Products{
	private String productId;
	private Categories categories;
	private Suppliers suppliers;
	private String productName;
	private String picture1;
	private String picture2;
	private String picture3;
	private int quantity;
	private BigDecimal price;
	private String describe;
	private Integer discount;
	private Boolean prStatus;
	private Set<CartDetails> cartDetailses = new HashSet<CartDetails>(0);

	public Products() {
	}

	public Products(String productId, Categories categories, Suppliers suppliers, String productName, String picture1,String picture2,String picture3,
			int quantity) {
		this.productId = productId;
		this.categories = categories;
		this.suppliers = suppliers;
		this.productName = productName;
		this.picture1 = picture1;
		this.picture2 = picture2;
		this.picture3 = picture3;
		this.quantity = quantity;
	}

public Products(String productId, Categories categories, Suppliers suppliers, String productName, String picture1,
			String picture2, String picture3, int quantity, BigDecimal price, String describe, Integer discount,
			Boolean prStatus, Set<CartDetails> cartDetailses) {
		super();
		this.productId = productId;
		this.categories = categories;
		this.suppliers = suppliers;
		this.productName = productName;
		this.picture1 = picture1;
		this.picture2 = picture2;
		this.picture3 = picture3;
		this.quantity = quantity;
		this.price = price;
		this.describe = describe;
		this.discount = discount;
		this.prStatus = prStatus;
		this.cartDetailses = cartDetailses;
	}

	@Id

	@Column(name = "Product_id", unique = true, nullable = false, length = 10)
	public String getProductId() {
		return this.productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Category_id", nullable = false)
	public Categories getCategories() {
		return this.categories;
	}

	public void setCategories(Categories categories) {
		this.categories = categories;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Supplier_id", nullable = false)
	public Suppliers getSuppliers() {
		return this.suppliers;
	}

	public void setSuppliers(Suppliers suppliers) {
		this.suppliers = suppliers;
	}

	@Column(name = "Product_name", nullable = false)
	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	@Column(name = "picture1", nullable = false)
	public String getPicture1() {
		return picture1;
	}
	public void setPicture1(String picture1) {
		this.picture1 = picture1;
	}

	@Column(name = "picture2", nullable = false)
	public String getPicture2() {
		return picture2;
	}
	public void setPicture2(String picture2) {
		this.picture2 = picture2;
	}
    
	
	@Column(name = "picture3", nullable = false)
	public String getPicture3() {
		return picture3;
	}
	public void setPicture3(String picture3) {
		this.picture3 = picture3;
	}
	@Column(name = "Quantity", nullable = false)
	public int getQuantity() {
		return this.quantity;
	}

	

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Column(name = "Price", scale = 4)
	public BigDecimal getPrice() {
		return this.price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	@Column(name = "Describe")
	public String getDescribe() {
		return this.describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

	@Column(name = "Discount")
	public Integer getDiscount() {
		return this.discount;
	}

	public void setDiscount(Integer discount) {
		this.discount = discount;
	}

	@Column(name = "Pr_status")
	public Boolean getPrStatus() {
		return this.prStatus;
	}

	public void setPrStatus(Boolean prStatus) {
		this.prStatus = prStatus;
	}
	

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "products")
	public Set<CartDetails> getCartDetailses() {
		return this.cartDetailses;
	}

	public void setCartDetailses(Set<CartDetails> cartDetailses) {
		this.cartDetailses = cartDetailses;
	}

}
