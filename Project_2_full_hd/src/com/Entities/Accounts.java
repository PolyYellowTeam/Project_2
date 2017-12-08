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
 * Accounts generated by hbm2java
 */
@Entity
@Table(name = "Accounts", catalog = "SHOP")
public class Accounts implements java.io.Serializable {

	private String username;
	private String password;
	private boolean roles;
	private boolean status;
	private Set<Customers> customerses = new HashSet<Customers>(0);
	private Set<Employees> employeeses = new HashSet<Employees>(0);

	public Accounts() {
	}

	public Accounts(String username, String password, boolean roles, boolean status) {
		this.username = username;
		this.password = password;
		this.roles = roles;
		this.status = status;
	}

	public Accounts(String username, String password, boolean roles, boolean status, Set<Customers> customerses,
			Set<Employees> employeeses) {
		this.username = username;
		this.password = password;
		this.roles = roles;
		this.status = status;
		this.customerses = customerses;
		this.employeeses = employeeses;
	}

	@Id

	@Column(name = "Username", unique = true, nullable = false, length = 50)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "Password", nullable = false, length = 32)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "Roles", nullable = false)
	public boolean isRoles() {
		return this.roles;
	}

	public void setRoles(boolean roles) {
		this.roles = roles;
	}

	@Column(name = "Status", nullable = false)
	public boolean isStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "accounts")
	public Set<Customers> getCustomerses() {
		return this.customerses;
	}

	public void setCustomerses(Set<Customers> customerses) {
		this.customerses = customerses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "accounts")
	public Set<Employees> getEmployeeses() {
		return this.employeeses;
	}

	public void setEmployeeses(Set<Employees> employeeses) {
		this.employeeses = employeeses;
	}

}
