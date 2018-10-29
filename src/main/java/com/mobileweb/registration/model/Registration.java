package com.mobileweb.registration.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import javax.persistence.Table;
@Entity
@Table(name="Registration")

public class Registration implements Serializable{
    
	/**
	 * 
	 */
	private static final long serialVersionUID = 3769541366086627483L;
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	private String userName;
	private String emailId;
	private String mobileNo;
	private String fmailId;
	private String password;
	private String address;
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
	@Override
	public String toString() {
		return "RegistrationDTO [userName=" + userName + ", emailId=" + emailId + ", mobileNo=" + mobileNo + " fmail-id=" + fmailId + " password=" + password +" address=" + address +"]";
	}
	
}
