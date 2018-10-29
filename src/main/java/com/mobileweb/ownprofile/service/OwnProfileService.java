package com.mobileweb.ownprofile.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mobileweb.ownprofile.dao.OwnProfileDao;
import com.mobileweb.ownprofile.model.OwnProfile;

@Service
public class OwnProfileService {
	
	@Autowired
	private OwnProfileDao opDao;
	
	public OwnProfile getOwnProfile(final OwnProfile ownProfile) {
		
		if(ownProfile.getName() != null && ownProfile.getPassword() != null ) {
			
		}
		return opDao.getOwnProfile(ownProfile);
	}

}
