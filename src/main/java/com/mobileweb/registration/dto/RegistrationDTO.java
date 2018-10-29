package com.mobileweb.registration.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;

@Entity
@Table(name = "registration")

public class RegistrationDTO implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3371384068334503361L;
	/**
	 * 
	 */
	@Id
	@GeneratedValue
	@Column(name = "Id")
	private int id;
	private String userName;
	private String emailId;
	private String mobileNo;
	private String fmailId;
	private String password;
	private String address;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getFmailId() {
		return fmailId;
	}
	public void setFmailId(String fmailId) {
		this.fmailId = fmailId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	

}
