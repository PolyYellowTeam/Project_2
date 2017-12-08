package com.Entities;
// Generated Dec 8, 2017 11:00:44 AM by Hibernate Tools 5.2.6.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Suppliers generated by hbm2java
 */
@Entity
@Table(name = "Suppliers", catalog = "SHOP")
public class Suppliers implements java.io.Serializable {

	private int supplierId;
	private String supplierName;
	private Boolean suStatus;
	private Set<Products> productses = new HashSet<Products>(0);

	public Suppliers() {
	}

	public Suppliers(int supplierId, String supplierName) {
		this.supplierId = supplierId;
		this.supplierName = supplierName;
	}

	public Suppliers(int supplierId, String supplierName, Boolean suStatus, Set<Products> productses) {
		this.supplierId = supplierId;
		this.supplierName = supplierName;
		this.suStatus = suStatus;
		this.productses = productses;
	}

	@Id

	@Column(name = "Supplier_id", unique = true, nullable = false)
	public int getSupplierId() {
		return this.supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}

	@Column(name = "Supplier_name", nullable = false)
	public String getSupplierName() {
		return this.supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	@Column(name = "Su_status")
	public Boolean getSuStatus() {
		return this.suStatus;
	}

	public void setSuStatus(Boolean suStatus) {
		this.suStatus = suStatus;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "suppliers")
	public Set<Products> getProductses() {
		return this.productses;
	}

	public void setProductses(Set<Products> productses) {
		this.productses = productses;
	}

}
