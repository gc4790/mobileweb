package com.mobileweb.auth.dao;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.persistence.criteria.Selection;
import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
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
    
	@Transactional
	public boolean isUserExist(User user) {
		boolean isValidUser = false;
		
		Session seesion = sessionFactory.getCurrentSession();
		CriteriaBuilder crBuilder = seesion.getCriteriaBuilder();
		CriteriaQuery<User> cr = crBuilder.createQuery(User.class);
		Root<User> root = cr.from(User.class);
		Predicate username = crBuilder.equal(root.get("name"), user.getName());
		Predicate password = crBuilder.equal(root.get("password"), user.getPassword());
		cr.select(root).where(crBuilder.and(username,password ));
		Selection<User> loggedInUser = cr.getSelection();
		
		if(loggedInUser!=null)
		isValidUser = true;
		
		seesion.close();
		
		return isValidUser;
	}

	@Transactional
	public User getUser(User user) {
		Session seesion = sessionFactory.getCurrentSession();
		User validUser = seesion.get(User.class,user);
		return validUser;
	}
	
	
	

}
