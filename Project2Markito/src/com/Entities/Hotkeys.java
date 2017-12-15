package com.Entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Hotkeys", catalog = "Markito")
public class Hotkeys {
	private int hotkeyId;
	private String hotkeyname;

	public Hotkeys() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Hotkeys(int hotkeyId, String hotkeyname) {
		super();
		this.hotkeyId = hotkeyId;
		this.hotkeyname = hotkeyname;
	}
	@Id
	@Column(name = "hotkey_id", unique = true, nullable = false)
	public int getHotkeyId() {
		return hotkeyId;
	}
	public void setHotkeyId(int hotkeyId) {
		this.hotkeyId = hotkeyId;
	}
	@Column(name = "hotkey_name", nullable = false, length = 200)
	public String getHotkeyname() {
		return hotkeyname;
	}
	public void setHotkeyname(String hotkeyname) {
		this.hotkeyname = hotkeyname;
	}	
}
