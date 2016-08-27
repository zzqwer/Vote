package com.yc.vote.entity;

import org.hibernate.validator.constraints.Length;

public class User {
	private int  vuId;   
	@Length(max=10,message="最大长度为10")
	private String  vuUsername; 
	private String  vuPassword;  
	private int  vuStatus;    
	private int  vuVersion;
	private String confirmvuPassword;
	private String vuEamil;
	public String getVuEamil() {
		return vuEamil;
	}
	public void setVuEamil(String vuEamil) {
		this.vuEamil = vuEamil;
	}
	public String getConfirmvuPassword() {
		return confirmvuPassword;
	}
	public void setConfirmvuPassword(String confirmvuPassword) {
		this.confirmvuPassword = confirmvuPassword;
	}
	public int getVuId() {
		return vuId;
	}
	public void setVuId(int vuId) {
		this.vuId = vuId;
	}
	public String getVuUsername() {
		return vuUsername;
	}
	public void setVuUsername(String vuUsername) {
		this.vuUsername = vuUsername;
	}
	public String getVuPassword() {
		return vuPassword;
	}
	public void setVuPassword(String vuPassword) {
		this.vuPassword = vuPassword;
	}
	public int getVuStatus() {
		return vuStatus;
	}
	public void setVuStatus(int vuStatus) {
		this.vuStatus = vuStatus;
	}
	public int getVuVersion() {
		return vuVersion;
	}
	public void setVuVersion(int vuVersion) {
		this.vuVersion = vuVersion;
	}
	public User() {
		
	}
	@Override
	public String toString() {
		return "User [vuId=" + vuId + ", vuUsername=" + vuUsername + ", vuPassword=" + vuPassword + ", vuStatus="
				+ vuStatus + ", vuVersion=" + vuVersion + ", confirmvuPassword=" + confirmvuPassword + ", vuEamil="
				+ vuEamil + "]";
	}
	public User(int vuId, String vuUsername, String vuPassword, int vuStatus, int vuVersion, String confirmvuPassword,
			String vuEamil) {
		super();
		this.vuId = vuId;
		this.vuUsername = vuUsername;
		this.vuPassword = vuPassword;
		this.vuStatus = vuStatus;
		this.vuVersion = vuVersion;
		this.confirmvuPassword = confirmvuPassword;
		this.vuEamil = vuEamil;
	}
	public User(String vuUsername, String vuPassword) {
		super();
		this.vuUsername = vuUsername;
		this.vuPassword = vuPassword;
	}
	

	  
}
