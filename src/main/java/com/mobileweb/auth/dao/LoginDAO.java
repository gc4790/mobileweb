package com.mobileweb.auth.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mobileweb.model.User;

@Repository
public class LoginDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public User isValidUser(String string) {
		Session seesion = sessionFactory.getCurrentSession();
		User u = new User();
		u.setName(string);
		u.setEmail("gc@gmail.com");
		User u1 = seesion.get(User.class,new Long(1));
		return u1;
	}
	
	
	

}
