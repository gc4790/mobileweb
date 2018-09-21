package com.mobileweb.registration.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mobileweb.registration.model.RegistrationDTO;

@Repository
public class RegistrationDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public RegistrationDTO saveRegistration(final RegistrationDTO registrationObj) {
		Session session = sessionFactory.getCurrentSession();
		session.save(registrationObj);
		return registrationObj;
	}

}
