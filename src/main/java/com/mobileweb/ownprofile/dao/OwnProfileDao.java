package com.mobileweb.ownprofile.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mobileweb.ownprofile.model.OwnProfile;

@Repository
public class OwnProfileDao {

	@Autowired
	private SessionFactory sessionfactory;
	
	@Transactional
	public OwnProfile getOwnProfile(final OwnProfile ownProfile) {
		Session session = sessionfactory.getCurrentSession();
		
		session.flush();
		session.close();
		
		
		return ownProfile;
		
	}
}
