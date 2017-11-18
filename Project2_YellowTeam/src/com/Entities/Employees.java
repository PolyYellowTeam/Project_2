package com.Entities;
// Generated Nov 17, 2017 1:01:03 PM by Hibernate Tools 5.2.5.Final

import java.io.Serializable;
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

/**
 * Employees generated by hbm2java
 */
@Entity
@Table(name = "Employees", catalog = "SHOP")
public class Employees implements java.io.Serializable {

	private int empId;
	private Accounts accounts;
	private Serializable fullname;
	private Serializable gender;
	private Serializable homeAddress;
	private Serializable email;
	private String phone;
	private Integer roles;
	private boolean status;
	private Set<Carts> cartses = new HashSet<Carts>(0);

	public Employees() {
	}

	public Employees(int empId, Serializable fullname, boolean status) {
		this.empId = empId;
		this.fullname = fullname;
		this.status = status;
	}

	public Employees(int empId, Accounts accounts, Serializable fullname, Serializable gender, Serializable homeAddress,
			Serializable email, String phone, Integer roles, boolean status, Set<Carts> cartses) {
		this.empId = empId;
		this.accounts = accounts;
		this.fullname = fullname;
		this.gender = gender;
		this.homeAddress = homeAddress;
		this.email = email;
		this.phone = phone;
		this.roles = roles;
		this.status = status;
		this.cartses = cartses;
	}

	@Id

	@Column(name = "Emp_id", unique = true, nullable = false)
	public int getEmpId() {
		return this.empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Username")
	public Accounts getAccounts() {
		return this.accounts;
	}

	public void setAccounts(Accounts accounts) {
		this.accounts = accounts;
	}

	@Column(name = "Fullname", nullable = false)
	public Serializable getFullname() {
		return this.fullname;
	}

	public void setFullname(Serializable fullname) {
		this.fullname = fullname;
	}

	@Column(name = "Gender")
	public Serializable getGender() {
		return this.gender;
	}

	public void setGender(Serializable gender) {
		this.gender = gender;
	}

	@Column(name = "Home_address")
	public Serializable getHomeAddress() {
		return this.homeAddress;
	}

	public void setHomeAddress(Serializable homeAddress) {
		this.homeAddress = homeAddress;
	}

	@Column(name = "Email")
	public Serializable getEmail() {
		return this.email;
	}

	public void setEmail(Serializable email) {
		this.email = email;
	}

	@Column(name = "Phone", length = 20)
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "Roles")
	public Integer getRoles() {
		return this.roles;
	}

	public void setRoles(Integer roles) {
		this.roles = roles;
	}

	@Column(name = "Status", nullable = false)
	public boolean isStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "employees")
	public Set<Carts> getCartses() {
		return this.cartses;
	}

	public void setCartses(Set<Carts> cartses) {
		this.cartses = cartses;
	}

}
