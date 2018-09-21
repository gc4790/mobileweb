package com.mobileweb.registration.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="Registartion")
public class RegistrationDTO {
    
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	private String userName;
	private String emailId;
	private String mobileNo;
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
	@Override
	public String toString() {
		return "RegistrationDTO [userName=" + userName + ", emailId=" + emailId + ", mobileNo=" + mobileNo + "]";
	}
	
}
