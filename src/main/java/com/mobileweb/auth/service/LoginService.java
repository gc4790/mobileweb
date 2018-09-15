package com.mobileweb.auth.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mobileweb.auth.dao.LoginDAO;
import com.mobileweb.model.User;

@Service
public class LoginService {
	
	@Autowired
	LoginDAO logindao;

	public void save(final User user) {
		// TODO Auto-generated method stub
		
	}

	public boolean isAuthrizeUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean isValidUser(String string) {
		User u = logindao.isValidUser(string);
		if(u!= null) {
			return true;
		}else {
			return false;
		}
	}

}
