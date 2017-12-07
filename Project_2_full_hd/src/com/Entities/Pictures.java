package com.Entities;
// Generated Dec 8, 2017 3:43:31 AM by Hibernate Tools 5.2.6.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Pictures generated by hbm2java
 */
@Entity
@Table(name = "Pictures", catalog = "SHOP")
public class Pictures implements java.io.Serializable {

	private int pictureId;
	private Products products;
	private String pictureLink;

	public Pictures() {
	}

	public Pictures(int pictureId, Products products, String pictureLink) {
		this.pictureId = pictureId;
		this.products = products;
		this.pictureLink = pictureLink;
	}

	@Id

	@Column(name = "Picture_id", unique = true, nullable = false)
	public int getPictureId() {
		return this.pictureId;
	}

	public void setPictureId(int pictureId) {
		this.pictureId = pictureId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Product_id", nullable = false)
	public Products getProducts() {
		return this.products;
	}

	public void setProducts(Products products) {
		this.products = products;
	}

	@Column(name = "Picture_link", nullable = false, length = 200)
	public String getPictureLink() {
		return this.pictureLink;
	}

	public void setPictureLink(String pictureLink) {
		this.pictureLink = pictureLink;
	}

}
